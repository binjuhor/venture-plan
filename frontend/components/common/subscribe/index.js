import React, {useState} from 'react'
import { withLocalize } from 'react-localize-redux'
import { postAPI } from '../../../lib/api'
import swal from 'sweetalert'
import validator from 'validator'
import { useGoogleReCaptcha } from 'react-google-recaptcha-v3'

const Subscribe = ({ translate }) => {
  const { executeRecaptcha } = useGoogleReCaptcha()
  const [email, setEmail] = useState('')

  const _onSubmit = async e => {
    e.preventDefault()
    
    if(!email) {
      swal('Error!','Please fill your email!','error')
      return
    }

    if(!validator.isEmail(email)) {
      swal("Error!", "Please fill correct email format", "error")
      return
    }

    if (!executeRecaptcha) {
      return
    }

   try {
      await postAPI('/consultation-entries', { Email: email, Subscribe: 'download' })
      swal('Success!',translate("t.request_submitted"),'success')
      setEmail('')
    } catch (error) {
      swal('Error!', translate("t.send_request_error"),'error')
    }
  }

  return (
      <section className="subscribe">
        <div className="container">
          <div className="subscribe__inner">
            <div className="subscribe__text">
              <h2>{translate("t.subscribe_title")}</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Praesent quis qua fermentum, rutrum sem quis, vulputate nisl.
                Aenean nec est enim. </p>
            </div>
            <figure>
              <img src="/images/home/subscribe.jpg" alt="" />
            </figure>
            <form action="#" onSubmit={_onSubmit}>
              <div className="input__group input__button">
                <input 
                type="email" 
                id="emailToDownload" 
                placeholder="Enter your email to download" 
                className="txt-subscribe" 
                value={email}
                onChange={(e) => {
                  console.log(e.target.value)
                  setEmail(e.target.value)
                }}
                required />
                <button type="submit" className="btn btn-primary btn-subscribe">{translate("t.get_it_free")}</button>
              </div>
            </form>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Subscribe)