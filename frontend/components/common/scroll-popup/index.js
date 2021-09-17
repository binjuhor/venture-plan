import React, { useState, useEffect } from 'react'
import { useDispatch } from 'react-redux'
import { withLocalize } from 'react-localize-redux'
import { useForm } from 'react-hook-form'
import {toggleScrollPopup} from '../../../redux/actions/layout'
import {fetchAPI, postAPI} from '../../../lib/api'
import swal from 'sweetalert'

const initializeData = {
  UserDescription: "",
  UserName: "",
  RightSubtitle: "",
  RightTitle: "",
  RightDescription: ""
}

const ScrollPopup = ({ translate }) => {
  const [data, setData] = useState(initializeData)
  const [consultationEmail, setConsultationEmail] = useState("")

  const {
    register,
    handleSubmit,
    formState: { errors: { email: emailError } },
  } = useForm()

  useEffect(() => {
    if(_.get(emailError, 'message')) swal('Error!',_.get(emailError, 'message'),'error')
  }, [emailError])

  useEffect(() => {
    _fetchData()
  }, [])

  const _fetchData = async () => {
    try {
      const response = await fetchAPI('/popup')

      if(response) setData(response)
    } catch (err) {
      setData(initializeData)
    }
  }

  const _onSubmit = async ({ email }) => {
    try {
      await postAPI('/consultation-entries', { Email: email, Subscribe: 'subscribe' })

      swal('Success!',translate("t.request_submitted"),'success')
      dispatch(toggleScrollPopup(false))
    } catch (err) {
      swal('Error!', translate("t.send_request_error"),'error')
    }
  }

  const dispatch = useDispatch()

  return (
      <section className="popup">
        <div className="popup__container">
          <div className="popup__inner">
            <div className="popup__right">
              <h4>{data.RightSubtitle}</h4>
              <h3>{data.RightTitle}</h3>
              <p>{data.RightDescription}</p>
              <form onSubmit={handleSubmit(_onSubmit)}>
                <input {...register('email', { required: translate("t.please_enter_your_email") })}
                    type="email"
                    placeholder={translate("t.your_email_address")}
                    value={consultationEmail}
                    onChange={(e) => setConsultationEmail(e.target.value)}
                />
                <button type="submit" className="btn">{translate("t.submit")}</button>
              </form>
              <div className="popup__seen-on">
                <h5>{translate('t.as_seen_on')}</h5>

                <div className="popup__seen-on--inner">
                  <a href="#">
                    <img src="/images/popup/bbc.png" alt="" width="84" />
                  </a>
                  <a href="#">
                    <img src="/images/popup/lat.png" alt="" width="188" />
                  </a>
                  <a href="#">
                    <img src="/images/popup/cbs.png" alt="" width="77" />
                  </a>
                  <a href="#">
                    <img src="/images/popup/nbc.png" alt="" width="53" />
                  </a>
                  <a href="#">
                    <img src="/images/popup/fox.png" alt="" width="78" />
                  </a>
                </div>
              </div>
            </div>

            <div className="popup__left">
              <blockquote>
                <p><span>"</span>{data.UserDescription}<span>"</span><br /><span>- {data.UserName}</span>
                </p>
              </blockquote>
            </div>
          </div>
        </div>
        <a href="#" className="popup__close" onClick={e => {
          e.preventDefault()

          dispatch(toggleScrollPopup(false))
        }}>
          <svg xmlns="http://www.w3.org/2000/svg" width="37" height="37"
               viewBox="0 0 37 37">
            <g id="noun_X_2222031" transform="translate(-23 -23)">
              <path id="Path_7408" data-name="Path 7408"
                    d="M23,26.464,26.464,23,41.477,38.012,56.536,23,60,26.464,44.941,41.477,60,56.536,56.536,60,41.477,44.941,26.464,60,23,56.536,38.012,41.477Z"
                    fillRule="evenodd"/>
            </g>
          </svg>
        </a>
      </section>
  )
}

export default withLocalize(ScrollPopup)