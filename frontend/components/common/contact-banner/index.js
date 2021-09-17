import React, {useState, useEffect, useRef} from 'react'
import Select from 'react-select'
import { withLocalize } from 'react-localize-redux'
import {getFileSource} from '../../../utils/functions'
import {fetchAPI, postAPI} from '../../../lib/api'
import swal from 'sweetalert'
import validator from 'validator'
import { useGoogleReCaptcha } from 'react-google-recaptcha-v3'

const initializeFormData = {
  FullName: "",
  Email: "",
  Phone: "",
  InquiryReason: ""
}

const ContactBanner = ({ translate, BannerDesktop, BannerMobile, Title }) => {
  const [selectedOptionLabel, setSelectedOptionLabel] = useState("Reason for inquiry")
  const [showSelectBox, setShowSelectBox] = useState(false)
  const [formData, setFormData] = useState(initializeFormData)
  const [reasons, setReasons] = useState([])
  const { executeRecaptcha } = useGoogleReCaptcha()

  const { FullName, Email, Phone, InquiryReason } = formData

  useEffect(() => {
    _fetchContactInquiryReasons()
  }, [])

  const _fetchContactInquiryReasons = async () => {
    try {
      const data = await fetchAPI("/contact-form")

      if(data) setReasons(data.InquiryReason)
    } catch (err) {
      setReasons([])
    }
  }

  const selectWrapper = useRef()

  useEffect(() => {
    document.addEventListener('click', _handleClick)
  }, [])

  const _handleClick = (event) => {
    const { target } = event
    if (!!selectWrapper.current) {
      if(!selectWrapper.current.contains(target)) setShowSelectBox(false)
    }
  }

  const _submitForm = async (e) => {
    e.preventDefault()
    
    if (!executeRecaptcha) {
      return
    }

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

    if(!InquiryReason || InquiryReason === "Reason for inquiry") {
      swal("Error!", translate("t.please_select_a_reason"), "error")
      return
    }

    try {
      await postAPI('/contact-entries', {
        FullName,
        Email,
        Phone,
        InquiryReason,
        Type: "Contact"
      })

      swal("Success!", translate("t.request_submitted"), "success")
      setFormData(initializeFormData)
    } catch (err) {
      swal("Error!", translate("t.send_request_error"), "error")
    }
  }

  return (
      <section className="contact-banner">
        <figure>
          {!!BannerDesktop && <img className="image-pc" src={getFileSource(BannerDesktop)} alt="" />}
          {!!BannerMobile && <img className="image-sp" src={getFileSource(BannerMobile)} alt="" />}
        </figure>
        <div className="container">
          <div className="contact-banner__inner">
            <h3>{Title}</h3>

            <div className="contact-banner__form">
              <div className="contact-banner__form--left">
                  <div className="select-box-container" ref={selectWrapper}>
                    <div className="select-box"
                         onClick={() => setShowSelectBox(!showSelectBox)}
                         onMouseDown={() => setShowSelectBox(false)}
                    >
                      <span className="selected-label">{selectedOptionLabel}</span>
                    </div>
                    {!!showSelectBox && (
                        <Select
                            className="venture-select-container"
                            classNamePrefix="venture-select"
                            defaultValue={InquiryReason}
                            onChange={({ value, label }) => {
                              setFormData({
                                ...formData,
                                InquiryReason: value
                              })
                              setSelectedOptionLabel(label)
                            }}
                            options={reasons.map(({ Reason }) => ({ value: Reason, label: Reason }))}
                            defaultMenuIsOpen={true}
                        />
                    )}
                  </div>
              </div>
              <div className="contact-banner__form--right">
                <form action="#">
                  <input type="text" placeholder={translate("t.full_name")} value={FullName} onChange={(e) => setFormData({...formData, FullName: e.target.value})}/>
                  <input type="text" placeholder={translate("t.phone_number")} value={Phone} onChange={(e) => setFormData({...formData, Phone: e.target.value})}/>
                  <input type="email" placeholder={translate("t.email")} value={Email} onChange={(e) => setFormData({...formData, Email: e.target.value})}/>
                  <button type="submit" className="btn" onClick={_submitForm}>{translate("t.submit")}</button>
                </form>
              </div>
            </div>

            <div className="contact-banner__city">
              <ul>
                <li className="active"><a href="#">Los Angeles</a></li>
                <li><a href="#">San Francisco</a></li>
                <li><a href="#">New York</a></li>
                <li><a href="#">Seattle</a></li>
                <li><a href="#">Chicago</a></li>
                <li><a href="#">Boston</a></li>
              </ul>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(ContactBanner)