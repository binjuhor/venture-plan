import React, { useState, useEffect } from 'react'
import { withLocalize } from 'react-localize-redux'
import _ from 'lodash'
import {CardElement, useElements, useStripe} from '@stripe/react-stripe-js'
import {fetchAPI, postAPI} from '../../../lib/api'
import Package from './Package'

const CreditCard = ({ translate, onClose }) => {
  const [formData, setFormData] = useState({
    FullName: "",
    PhoneNumber: "",
    EmailAddress: ""
  })
  const [selectedPackage, setSelectedPackage] = useState(null)
  const [packages, setPackages] = useState([])
  const [processing, setProcessing] = useState('')
  const [disabled, setDisabled] = useState(true)
  const [error, setError] = useState(null)
  const stripe = useStripe()
  const elements = useElements()

  const { FullName, PhoneNumber, EmailAddress } = formData

  useEffect(() => {
    _fetchPackages()
  }, [])

  const _fetchPackages = async () => {
    try {
      const packages = await fetchAPI('/packages')

      if(packages) setPackages(packages)
    } catch (err) {
      setPackages([])
    }
  }

  const _onSubmit = async (e) => {
    e.preventDefault()

    if(!FullName || !PhoneNumber || !EmailAddress) {
      alert(translate("t.warning_empty_field"))
      return
    }

    if(!selectedPackage) {
      alert(translate("t.please_select_a_package"))
      return
    }

    try {
      setProcessing(true)

      const clientSecret = await postAPI('/payment/create-payment-intent', { amount: selectedPackage.Price })

      const payload = await stripe.confirmCardPayment(clientSecret.data, {
        payment_method: {
          card: elements.getElement(CardElement),
        },
      })

      if (payload.error) {
        setError(`Payment failed ${payload.error.message}`)
        setProcessing(false)
        return
      }

      setProcessing(false)

      await postAPI("/package-entries", {
        FullName,
        Email: EmailAddress,
        PhoneNumber,
        Price: selectedPackage.Price,
        package: selectedPackage.id
      })

      alert(translate("t.success"))
      onClose()
    } catch (err) {
      alert("t.send_request_error")
    }
  }

  const _handleCardChange = async (event) => {
    setDisabled(event.empty)
    setError(event.error ? event.error.message : '')
  }

  return (
      <section className="credit-card">
        <div className="credit-card__inner">
          <div className="credit-card__pricing">
            {packages.map(packageData => (
                <Package
                    {...packageData}
                    key={packageData.id}
                    isSelected={_.get(selectedPackage, 'id') === packageData.id}
                    onSelectPackage={() => setSelectedPackage(packageData)}
                />
            ))}
          </div>

          <div className="credit-card__checkout">
            <div className="credit-card__checkout--inner">
              <form onSubmit={_onSubmit}>
                <div className="form-row">
                  <label>{translate("t.full_name")}</label>
                  <input
                      type="text" value={FullName} required={true}
                      onChange={(e) => setFormData({...formData, FullName: e.target.value})}
                  />
                </div>

                <div className="form-row">
                  <label>{translate("t.phone_number")}</label>
                  <input
                      type="text" value={PhoneNumber} required={true}
                      onChange={(e) => setFormData({...formData, PhoneNumber: e.target.value})}
                  />
                </div>

                <div className="form-row">
                  <label>{translate("t.your_email_address")}</label>
                  <input
                      type="email" value={EmailAddress} required={true}
                      onChange={(e) => setFormData({...formData, EmailAddress: e.target.value })}
                  />
                </div>

                <div className="form-row">
                  <label>{translate("t.credit_card")}</label>
                  <CardElement id="card-element" onChange={_handleCardChange}/>
                  {!!error && <p>{error}</p>}
                </div>

                <ul className="credit-card__checkout--list">
                  <li>
                    <svg id="icons8_visa_1" xmlns="http://www.w3.org/2000/svg"
                         width="54.359" height="38.828"
                         viewBox="0 0 54.359 38.828">
                      <path id="Path_7458" data-name="Path 7458"
                            d="M57.359,42.651a5.177,5.177,0,0,1-5.177,5.177h-44A5.177,5.177,0,0,1,3,42.651V14.177A5.177,5.177,0,0,1,8.177,9h44a5.177,5.177,0,0,1,5.177,5.177Z"
                            transform="translate(-3 -9)" fill="#1565c0"/>
                      <path id="Path_7459" data-name="Path 7459"
                            d="M17.263,19l-3.4,10.137s-.863-4.288-.949-4.826c-1.935-4.415-4.79-4.169-4.79-4.169l3.365,13.1v0h4.091L21.239,19ZM20.5,33.237h3.716L26.466,19H22.7ZM46.8,19h-3.91l-6.1,14.237h3.691l.761-2.033H45.9l.4,2.033h3.382Zm-4.523,9.484L44.3,23.1l1.059,5.38ZM31.737,23.15c0-.784.645-1.368,2.493-1.368a5.864,5.864,0,0,1,2.577.872l.6-2.988A11.344,11.344,0,0,0,33.927,19C30.02,19,28,20.868,28,23.234c0,4.279,5.15,3.693,5.15,5.89,0,.377-.3,1.248-2.444,1.248a7.956,7.956,0,0,1-3.571-.788L26.5,32.451a8.73,8.73,0,0,0,4.034.784c2.665,0,6.361-1.993,6.361-4.856C36.895,24.936,31.737,24.687,31.737,23.15Z"
                            transform="translate(-1.492 -6.058)" fill="#fff"/>
                      <path id="Path_7460" data-name="Path 7460"
                            d="M14.266,26.645,13.015,20.5a2.3,2.3,0,0,0-2.036-1.332H5.233S12.56,21.332,14.266,26.645Z"
                            transform="translate(-2.343 -6.008)"
                            fill="#ffc107"/>
                    </svg>
                  </li>
                  <li>
                    <svg id="icons8_mastercard"
                         xmlns="http://www.w3.org/2000/svg" width="54.358"
                         height="38.827" viewBox="0 0 54.358 38.827">
                      <path id="Path_7438" data-name="Path 7438"
                            d="M57.358,42.65a5.177,5.177,0,0,1-5.177,5.177h-44A5.177,5.177,0,0,1,3,42.65V14.177A5.177,5.177,0,0,1,8.177,9h44a5.177,5.177,0,0,1,5.177,5.177Z"
                            transform="translate(-3 -9)" fill="#3f51b5"/>
                      <path id="Path_7439" data-name="Path 7439"
                            d="M32.942,14A12.942,12.942,0,1,0,45.885,26.942,12.942,12.942,0,0,0,32.942,14Z"
                            transform="translate(2.002 -7.529)" fill="#ffc107"/>
                      <path id="Path_7440" data-name="Path 7440"
                            d="M26.432,34.708a12.921,12.921,0,0,1-1.522-2.588H31.8a12.814,12.814,0,0,0,.824-2.588H24.087a12.911,12.911,0,0,1-.261-2.588h9.06a13.006,13.006,0,0,0-.26-2.588H24.085a12.9,12.9,0,0,1,.824-2.588H31.8a12.86,12.86,0,0,0-1.522-2.588H26.432a13.11,13.11,0,0,1,1.917-2.064,12.945,12.945,0,1,0,1.93,17.6Z"
                            transform="translate(-1.823 -7.529)"
                            fill="#ff3d00"/>
                    </svg>
                  </li>
                  <li>
                    <svg id="icons8_american_express"
                         xmlns="http://www.w3.org/2000/svg" width="55.286"
                         height="39.49" viewBox="0 0 55.286 39.49">
                      <path id="Path_7471" data-name="Path 7471"
                            d="M58.286,43.225a5.266,5.266,0,0,1-5.265,5.265H8.265A5.266,5.266,0,0,1,3,43.225V14.265A5.266,5.266,0,0,1,8.265,9H53.021a5.266,5.266,0,0,1,5.265,5.265Z"
                            transform="translate(-3 -9)" fill="#1976d2"/>
                      <path id="Path_7472" data-name="Path 7472"
                            d="M27.081,20,24.3,26.164,21.531,20H17.984v8.854L14.031,20H11.037L7,29.189H9.389l.883-2.051H14.79l.9,2.051h4.561V22.364l3.026,6.825h2.057l3.095-6.707v6.707h2.267V20ZM11.127,25.153l1.351-3.212,1.4,3.212Zm36.526-.661,4.1-4.469H48.837l-2.625,2.849L43.673,20h-9.03v9.191h8.734l2.754-3.042,2.685,3.066h2.909Zm-5.469,2.768H36.9V25.443h5.052V23.7H36.9V21.98L42.477,22l2.229,2.5Z"
                            transform="translate(-1.735 -5.52)" fill="#fff"/>
                    </svg>
                  </li>
                  <li>
                    <svg id="icons8_discover" xmlns="http://www.w3.org/2000/svg"
                         width="53.364" height="38.117"
                         viewBox="0 0 53.364 38.117">
                      <path id="Path_7473" data-name="Path 7473"
                            d="M56.364,42.035a5.1,5.1,0,0,1-5.082,5.082H8.082A5.1,5.1,0,0,1,3,42.035V14.082A5.1,5.1,0,0,1,8.082,9h43.2a5.1,5.1,0,0,1,5.082,5.082Z"
                            transform="translate(-3 -9)" fill="#e1e7ea"/>
                      <path id="Path_7474" data-name="Path 7474"
                            d="M52.847,38.788a5.1,5.1,0,0,1-5.082,5.082H16s29.986-4.828,36.847-19.059ZM23.623,24.812A3.812,3.812,0,1,0,27.435,21,3.744,3.744,0,0,0,23.623,24.812Z"
                            transform="translate(0.517 -5.753)" fill="#ff6d00"/>
                      <path id="Path_7475" data-name="Path 7475"
                            d="M12.607,21.027H14v7.623h-1.4Zm7.623,3.812a3.744,3.744,0,0,0,3.812,3.812,4.484,4.484,0,0,0,1.779-.381V26.618a2.307,2.307,0,0,1-1.779.762,2.37,2.37,0,0,1-2.414-2.541A2.443,2.443,0,0,1,24.042,22.3a2.745,2.745,0,0,1,1.779.762V21.408a4.711,4.711,0,0,0-1.779-.508A4.019,4.019,0,0,0,20.23,24.839Zm17.026,1.144-2.033-4.955H33.7l3.176,7.623h.762l3.176-7.623H39.289Zm4.193,2.668h4.066V27.38H42.847V25.347h2.541V24.076H42.847V22.3h2.668V21.027H41.449v7.623Zm9.656-5.336c0-1.4-.889-2.287-2.541-2.287H46.4v7.623h1.4V25.6h.127l2.033,3.049h1.779l-2.287-3.176A2.081,2.081,0,0,0,51.105,23.314Zm-2.922,1.271H47.8V22.3h.381c.889,0,1.4.381,1.4,1.144C49.581,24.076,49.2,24.585,48.183,24.585ZM8.16,21.027H6v7.623H8.033a3.777,3.777,0,0,0,3.939-3.812A3.537,3.537,0,0,0,8.16,21.027ZM7.779,27.38H7.4V22.3h.508a2.43,2.43,0,0,1,2.668,2.541C10.574,25.347,10.447,27.38,7.779,27.38Zm10.038-3.431c-.889-.381-1.144-.508-1.144-.889,0-.508.508-.762,1.016-.762a1.345,1.345,0,0,1,1.144.635l.762-1.016a2.787,2.787,0,0,0-2.16-.889,2.173,2.173,0,0,0-2.287,2.16c0,1.016.508,1.525,1.779,2.033.762.254,1.4.508,1.4,1.144a1.038,1.038,0,0,1-1.144,1.016,1.651,1.651,0,0,1-1.525-1.016l-.889.889a2.682,2.682,0,0,0,2.541,1.4,2.37,2.37,0,0,0,2.541-2.414C19.849,25.093,19.341,24.585,17.816,23.949Z"
                            transform="translate(-2.188 -5.78)"/>
                    </svg>
                  </li>
                </ul>

                <div className="credit-card__checkout--button">
                  <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="160"
                         height="41" viewBox="0 0 160 41">
                      <g id="Group_2551" data-name="Group 2551"
                         transform="translate(-0.213 -0.133)">
                        <rect id="Rectangle_1857" data-name="Rectangle 1857"
                              width="160" height="41" rx="11"
                              transform="translate(0.213 0.133)"/>
                        <path id="icons8_apple_pay_2"
                              d="M9.4,15a3.422,3.422,0,0,0-2.31,1.241,3.53,3.53,0,0,0-.833,2.514A2.861,2.861,0,0,0,8.581,17.61,3.752,3.752,0,0,0,9.4,15Zm11.826,1.88V31h2.235v-4.7h3.058a4.587,4.587,0,0,0,4.823-4.7,4.547,4.547,0,0,0-4.749-4.7Zm2.235,1.882h2.588c1.926,0,3.058,1.04,3.058,2.823s-1.123,2.823-3.058,2.823H23.456Zm-14.164.47c-1.294,0-2.219.706-2.823.706s-1.529-.7-2.588-.7a3.845,3.845,0,0,0-3.229,2c-1.373,2.367-.356,5.87.97,7.8C2.273,29.99,3.058,31,4.117,31c.97-.037,1.3-.588,2.47-.588S8.116,31,9.175,31s1.7-.97,2.349-1.924a8.355,8.355,0,0,0,1.062-2.193,3.455,3.455,0,0,1-2.068-3.146,3.529,3.529,0,0,1,1.674-2.953A3.624,3.624,0,0,0,9.41,19.235Zm27.172,1.411c-2.342,0-4.073,1.313-4.137,3.119h1.985A1.933,1.933,0,0,1,36.4,22.344c1.348,0,2.11.618,2.11,1.753l0,.783-2.759.145c-2.56.151-3.946,1.18-3.946,2.968,0,1.806,1.43,3,3.481,3a3.662,3.662,0,0,0,3.253-1.779h.046V30.89h2.04V23.954C40.628,21.941,38.989,20.646,36.465,20.646Zm4.988,0,3.771,10.3-.2.627a1.765,1.765,0,0,1-1.877,1.47c-.168,0-.487-.017-.634-.035v1.7a6.813,6.813,0,0,0,.827.051c2.171,0,3.193-.817,4.086-3.3l3.909-10.819H49.071l-2.623,8.36H46.4l-2.623-8.36Zm-2.941,5.646-.007.816a2.381,2.381,0,0,1-2.625,2.235c-1.175,0-1.922-.553-1.922-1.4,0-.876.72-1.386,2.1-1.467Z"
                              transform="translate(54.259 -3.579)" fill="#fff"/>
                      </g>
                    </svg>
                  </a>

                  <button
                      type="submit"
                      className="btn-outline"
                      disabled={processing || disabled}
                  >
                    <span id="button-text">
                      {translate(processing ? "t.processing" : "t.next")}
                    </span>
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(CreditCard)