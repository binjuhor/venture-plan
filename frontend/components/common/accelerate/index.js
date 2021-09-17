import React, { useState, useRef } from 'react'
import _ from 'lodash'
import { withLocalize } from 'react-localize-redux'
import {getStrapiURL, postAPI} from '../../../lib/api'
import swal from 'sweetalert'
import validator from 'validator'

const Accelerate = ({ Title, Content, QuestionOption, Image, translate }) => {
  const [currentStep, setCurrentStep] = useState(1)
  const [seeAll, setSeeAll] = useState(false)
  const questionRef = useRef()

  const executeScroll = () => {
    questionRef.current.scrollIntoView({ behavior: 'smooth' })
  }

  const [formData, setFormData] = useState({
    fullName: "",
    email: "",
    phoneNumber: "",
    questionOptions: []
  })

  const { fullName, email, phoneNumber, questionOptions } = formData

  const _onClickOption = (e, question, option, step) => {
    e.preventDefault()
    executeScroll()
    setSeeAll(false)
    setFormData({
      ...formData,
      questionOptions: [...questionOptions, { question: question.Question, option: option.Option }]
    })
    setCurrentStep(step + 1)
  }

  const _onSubmit = async () => {
    if(!fullName) {
      swal("Error!", "Please fill your full name", "error")
      return
    }

    if (!email) {
      swal("Error!", "Please fill your email", "error")
      return
    }

    if (!phoneNumber) {
      swal("Error!", "Please fill your phone", "error")
      return
    }

    if(!validator.isEmail(email)){
      swal("Error!", "Please fill correct email format", "error")
      return
    }

    if(!validator.isMobilePhone(phoneNumber)) {
      swal("Error!", "Please fill correct phone number", "error")
      return
    }

    try {
      await postAPI('/accelerate-entries', {
        FullName: fullName,
        Email: email,
        PhoneNumber: phoneNumber,
        QuestionOptionEntry: questionOptions.map(({ question, option }) => ({
          Question: question,
          Option: option
        }))
      })

      swal("Success!", translate("t.request_submitted"), "success")
      
      //Reset form data
      setFormData(...formData, {
        fullName:'',
        email: '',
        phoneNumber:''
      })

    } catch (err) {
      swal("Error!", translate("t.send_request_error"), "error")
    }
  }

  return (
      <section className="accelerate">
        <div className="container">
          <div className="accelerate__question">
            <div className="accelerate__form">
              <div className="accelerate__action step-by-step" ref={questionRef}>
                {QuestionOption.map((question, index) => {
                  const currentIndex = index + 1
                  const firstTenOptions = _.slice(question.Option, 0, 10)
                  const remainOptions = _.slice(question.Option, 10, question.Option.length)

                  return (
                      <div className={`question-list question_${currentIndex} ${currentStep === currentIndex ? 'active' : ''}`}
                           key={question.Question}>
                        <div className="question-list__inner">
                          <div className="question-list__left">
                            <h3>{Title}</h3>
                            <p>{Content}</p>
                            <div className="text-question">
                              <p>{currentIndex}. {question.Question}</p>
                              <small>Question {currentIndex} / {QuestionOption.length}</small>
                            </div>
                            <div className="question-list__options" >
                              {firstTenOptions.map((option, optionIndex) =>
                                  <a href="#"
                                     className="btn btn-outline"
                                     onClick={(e) => _onClickOption(e, question, option, currentIndex)}
                                     key={`${option.Option}-${optionIndex}`}
                                  >{option.Option}</a>
                              )}
                              {(remainOptions.length > 0 && !seeAll) && (
                                  <a href="#" className="question__see-all" onClick={(e) => {
                                    e.preventDefault()
                                    executeScroll()
                                    setSeeAll(true)
                                  }}>{translate("t.see_all")}</a>
                              )}
                            </div>
                            {remainOptions.length > 0 && (
                                <div className="question-list__options--more" style={{ display: seeAll ? 'block' : 'none' }}>
                                  {remainOptions.map((option, optionIndex) =>
                                      <a href="#"
                                         className="btn btn-outline"
                                         onClick={(e) => _onClickOption(e, question, option, currentIndex)}
                                         key={`${option.Option}-${optionIndex}`}
                                      >{option.Option}</a>
                                  )}
                                  {(seeAll) && (
                                      <a href="#" className="question__see-all" onClick={(e) => {
                                        e.preventDefault()
                                        executeScroll()
                                        setSeeAll(false)
                                      }}>See less</a>
                                  )}
                                </div>
                            )}
                          </div>
                          <div className="question-list__right">
                            <figure>
                              <img src={`${getStrapiURL()}${question.Image.url}`}  alt="" />
                            </figure>
                          </div>
                        </div>
                      </div>
                  )
                })}
                <div className={`question-list question_${QuestionOption.length + 1} ${currentStep === QuestionOption.length + 1 ? 'active' : ''}`}>
                  <div className="question-list__inner">
                    <div className="question-list__left">
                      <h3>{translate("t.accelerate_title")}</h3>
                      <p>{translate("t.accelerate_fill_in_title")}</p>
                      <div className="text-question"><p>{QuestionOption.length + 1}. {translate("t.what_is_name_email_phone")}</p>
                        <small>{translate("t.contact_information")}</small></div>
                      <label>{translate("t.type_here")}</label>

                      <div className="question-list__form">
                        <input
                            type="text"
                            required
                            placeholder={translate("t.full_name")}
                            value={fullName}
                            onChange={(e) => setFormData({...formData, fullName: e.target.value})}
                        />
                        <input
                            required
                            type="email"
                            placeholder={translate("t.email")}
                            value={email}
                            onChange={(e) => setFormData({...formData, email: e.target.value})}
                        />
                        <input
                            type="text"
                            required
                            placeholder={translate("t.phone_number")}
                            value={phoneNumber}
                            onChange={(e) => setFormData({...formData, phoneNumber: e.target.value})}
                        />
                        <button onClick={_onSubmit}>{translate("t.submit")}</button>
                      </div>
                    </div>
                    <div className="question-list__right">
                      <figure>
                        <img src={`${getStrapiURL()}${Image.url}`} alt="" />
                      </figure>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <p>{translate("t.accelerate_bottom_text")}</p>
        </div>
      </section>
  )
}

export default withLocalize(Accelerate)