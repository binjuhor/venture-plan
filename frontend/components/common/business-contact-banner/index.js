import React, { useState, useEffect, useRef } from 'react'
import { withLocalize } from 'react-localize-redux'
import Select from 'react-select'
import {getFileSource} from '../../../utils/functions'
import {fetchAPI, postAPI} from '../../../lib/api'
import validator from 'validator'
import swal from 'sweetalert'


const initializeFormData = {
  FullName: "",
  Email: "",
  Phone: "",
  Service: ""
}

const BusinessContactBanner = ({ translate, Title, Subtitle, Description, BannerDesktop, BannerMobile }) => {
  const [formData, setFormData] = useState(initializeFormData)
  const [selectedOptionLabel, setSelectedOptionLabel] = useState("Select a Service")
  const [showSelectBox, setShowSelectBox] = useState(false)
  const [services, setServices] = useState([])
  const selectWrapper = useRef()

  const { FullName, Email, Phone, Service } = formData

  useEffect(() => {
    document.addEventListener('click', _handleClick)
  }, [])

  useEffect(() => {
    _fetchBusinessContactServices()
  }, [])

  const _fetchBusinessContactServices = async () => {
    try {
      const data = await fetchAPI("/contact-form")

      if(data) setServices(data.BusinessServices)
    } catch (err) {
      setServices([])
    }
  }

  const _handleClick = (event) => {
    const { target } = event
    if (!!selectWrapper.current) {
      if(!selectWrapper.current.contains(target)) setShowSelectBox(false)
    }
  }

  const _submitForm = async (e) => {
    e.preventDefault()

    if(!Service || Service === "Select a Service") {
      swal('Error!',translate("t.please_select_a_service"), 'error')
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

    try {
      await postAPI('/contact-entries', {
        FullName,
        Email,
        Phone,
        Service,
        Type: "Business"
      })

      swal('Success!',translate("t.request_submitted"),'success')
      setFormData(initializeFormData)
    } catch (err) {
      swal('Error!',translate("t.send_request_error"),'error')
    }
  }

  return (
      <section className="contact-banner style-2">
        <figure>
          {!!BannerDesktop && <img className="image-pc" src={getFileSource(BannerDesktop)} alt="" />}
          {!!BannerMobile && <img className="image-sp" src={getFileSource(BannerMobile)} alt="" />}
        </figure>
        <div className="container">
          <div className="contact-banner__inner">
            <h3>{Subtitle}</h3>
            <h4>{Title}</h4>
            <p>{Description}</p>
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
                          defaultValue={formData.Service}
                          onChange={({ value, label }) => {
                            setFormData({
                              ...formData,
                              Service: value
                            })
                            setSelectedOptionLabel(label)
                          }}
                          options={services.map(({ Name }) => ({ value: Name, label: Name }))}
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

          </div>
        </div>
      </section>
  )
}

export default withLocalize(BusinessContactBanner)