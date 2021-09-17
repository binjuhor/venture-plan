import React, { useState, useRef, useEffect } from 'react'
import Select from 'react-select'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI, postAPI} from '../../../lib/api'
import swal from 'sweetalert'
import validator from 'validator'

const initializeData = {
  Title: "",
  Subtitle: "",
  FormTitle: "",
  TTEServices: []
}

const initializeFormData = {
  FullName: "",
  Email: "",
  Phone: "",
  Service: ""
}

const Talk = ({ translate }) => {
  const [data, setData] = useState(initializeData)
  const [formData, setFormData] = useState(initializeFormData)
  const [selectedOptionLabel, setSelectedOptionLabel] = useState("Select a Service")
  const [showSelectBox, setShowSelectBox] = useState(false)

  const { Title, Subtitle, FormTitle, TTEServices } = data
  const { FullName, Email, Phone, Service } = formData

  const selectWrapper = useRef()

  useEffect(() => {
    document.addEventListener('click', _handleClick)
  }, [])

  useEffect(() => {
    _fetchTalkToExpertFormData()
  }, [])

  const _fetchTalkToExpertFormData = async () => {
   try {
     const contactFormData = await fetchAPI("/contact-form")

     if(data) setData(contactFormData.TalkToExpert)
   } catch (err) {
     setData(initializeData)
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


    if(!Service || Service === "Select a Service") {
      swal("Error!", translate("t.please_select_a_service"), "error")
      return
    }

    try {
      await postAPI('/contact-entries', {
        FullName,
        Email,
        Phone,
        Service,
        Type: "Talk"
      })

      swal("Success!", translate("t.request_submitted"), "success")
      setFormData(initializeFormData)
    } catch (err) {
      swal("Error!", translate("t.send_request_error"), "error")
    }
  }

  return (
      <section className="talk">
        <div className="anchorSection" id={'ready-to-talk'}></div>
        <div className="container">
          <div className="talk__top">
            <div className="talk__top--left">
              <h2>{Title}</h2>
            </div>

            <div className="talk__top--right">
              <p>{FormTitle}</p>
            </div>
          </div>

          <div className="talk__bottom">
            <div className="talk__bottom--left">
              <p>{Subtitle}</p>
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
                        defaultValue={Service}
                        onChange={({ value, label }) => {
                          setFormData({
                            ...formData,
                            Service: value
                          })
                          setSelectedOptionLabel(label)
                        }}
                        options={TTEServices.map(({ Name }) => ({ value: Name, label: Name }))}
                        defaultMenuIsOpen={true}
                    />
                )}
              </div>
            </div>

            <div className="talk__bottom--right">
              <form action="#">
                <input type="text" placeholder={translate("t.full_name")} value={FullName} onChange={(e) => setFormData({...formData, FullName: e.target.value})}/>
                <input type="text" placeholder={translate("t.phone_number")} value={Phone} onChange={(e) => setFormData({...formData, Phone: e.target.value})}/>
                <input type="email" placeholder={translate("t.email")} value={Email} onChange={(e) => setFormData({...formData, Email: e.target.value})}/>
                <button type="submit" className="btn btn-primary btn-outline btn-white" onClick={_submitForm}>{translate("t.submit")}</button>
              </form>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Talk)