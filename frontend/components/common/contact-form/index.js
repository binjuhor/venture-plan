import React, {useEffect, useState} from 'react'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI, postAPI} from '../../../lib/api'
import { useGoogleReCaptcha } from 'react-google-recaptcha-v3'
import swal from 'sweetalert'
import validator from 'validator'

const initializeFormData = {
  FullName: "",
  Email: "",
  Phone: "",
  InquiryReason: "",
  CountryRegion: "",
  MoreInfo: ""
}

const ContactForm = ({ translate }) => {
  const [formData, setFormData] = useState(initializeFormData)
  const [reasons, setReasons] = useState([])
  const [regions, setRegions] = useState([])
  const { executeRecaptcha } = useGoogleReCaptcha()

  const { FullName, Email, Phone, InquiryReason, CountryRegion, MoreInfo } = formData

  useEffect(() => {
    _fetchData()
  }, [])

  const _fetchData = async () => {
    try {
      const data = await fetchAPI("/contact-form")

      if(data) {
        setRegions(data.CountryRegion)
        setReasons(data.InquiryReason)
      }
    } catch (err) {
      setRegions([])
      setReasons([])
    }
  }

  const _submitForm = async (e) => {
    e.preventDefault()

    if(!FullName) {
      swal("Error!", "Please fill your full name", "error")
      return
    }

    if (!Phone) {
      swal("Error!", "Please fill your phone", "error")
      return
    }

    if(!validator.isMobilePhone(Phone)) {
      swal("Error!", "Please fill correct phone number", "error")
      return
    }

    if (!Email) {
      swal("Error!", "Please fill your email", "error")
      return
    }

    if(!validator.isEmail(Email)){
      swal("Error!", "Please fill correct email format", "error")
      return
    }
    
    if(!InquiryReason){
      swal("Error!", "Please select inquiry reason", "error")
      return
    }

    if(!CountryRegion){
      swal("Error!", "Please select country region", "error")
      return
    }

    if (!executeRecaptcha) {
      return
    }

    try {
      await postAPI('/contact-entries', {
        FullName,
        Email,
        Phone,
        InquiryReason,
        CountryRegion,
        MoreInfo,
        Type: "Contact"
      })

      swal('Success!',translate("t.request_submitted"),'success')
      setFormData(initializeFormData)
    } catch (err) {
      swal('Error!',translate("t.send_request_error"),'error')
    }
  }

  return (
      <section className="contact-form">
        <div className="container">
          <div className="contact-form__inner">
            <div className="contact-form__left">
              <div className="contact-form__heading">
                <h3><span>{translate("t.contact_us")}</span> <a href="#">{translate("t.contact_information")}</a>
                </h3>
                <p>{translate("t.contact_form_title")}</p>
              </div>

              <h5>{translate("t.reason_for_inquiry")}:</h5>
              <select value={InquiryReason} onChange={(e) => setFormData({...formData, InquiryReason: e.target.value })}>
                <option>{translate("t.select_reason_for_inquiry")}</option>
                {reasons.map(({ Reason, id }) => (
                    <option value={Reason} key={id}>{Reason}</option>
                ))}
              </select>

              <h4>{translate("t.about_you")}</h4>
              <input type="text" placeholder={translate("t.full_name")} value={FullName} onChange={(e) => setFormData({...formData, FullName: e.target.value})}/>
              <input type="text" placeholder={translate("t.phone_number")} value={Phone} onChange={(e) => setFormData({...formData, Phone: e.target.value})}/>
              <input type="email" placeholder={translate("t.email")} value={Email} onChange={(e) => setFormData({...formData, Email: e.target.value})}/>

              <select value={CountryRegion} onChange={(e) => setFormData({...formData, CountryRegion: e.target.value })}>
                <option>{translate("t.select_country_region")}</option>
                {regions.map(({ Name, id }) => (
                    <option value={Name} key={id}>{Name}</option>
                ))}
              </select>
            </div>

            <div className="contact-form__right">
              <p>{translate("t.how_do_you_know_of")}</p>
              <textarea placeholder={translate("t.type_more_info")} value={MoreInfo} onChange={(e) => setFormData({...formData, MoreInfo: e.target.value})}/>

              <button type="button" onClick={_submitForm}>{translate("t.submit")}</button>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(ContactForm)