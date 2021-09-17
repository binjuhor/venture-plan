import React, {useState} from 'react'
import {withLocalize} from 'react-localize-redux'
import Link from 'next/link'
import { postAPI } from '../../../lib/api'
import swal from 'sweetalert'
import validator from 'validator'
import { useGoogleReCaptcha } from 'react-google-recaptcha-v3'

const Footer = ({ translate, FacebookURL, InstagramURL, LinkedinURL, YoutubeUrl, TwitterURL }) => {
  const { executeRecaptcha } = useGoogleReCaptcha()
  const [email, setEmai] = useState()

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
      await postAPI('/consultation-entries', { Email: email, Subscribe: 'subscribe' })
      swal('Success!',translate("t.request_submitted"),'success')
      setEmai('')
    } catch (err) {
      swal('Error!', translate("t.send_request_error"),'error')
    }
  }


  return (
      <footer className="footer">
        <div className="container">
          <div className="footer__top">
            <div className="footer__logo">
              <Link href="/">
                <img src="/images/logo-white.svg" alt=""/>
              </Link>
            </div>
            <div className="footer__socials">
              <ul>
                <li>
                  <a className={'linkedin'} href={LinkedinURL??'https://linkedin.com'} target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25.779"
                         height="25.791" viewBox="0 0 25.779 25.791">
                      <path id="Path_1429" data-name="Path 1429"
                            d="M30.674,28.352H25.351V11.158h5.323ZM27.987,8.907h0a3.173,3.173,0,1,1,3.148-3.173,3.16,3.16,0,0,1-3.148,3.173M50.619,28.352h-5.3V19.326c0-2.475-.941-3.858-2.9-3.858-2.13,0-3.242,1.439-3.242,3.858v9.026h-5.1V11.158h5.1v2.316a5.993,5.993,0,0,1,5.181-2.841c3.645,0,6.256,2.227,6.256,6.833Z"
                            transform="translate(-24.84 -2.561)" fill="#fff"
                            fillRule="evenodd"/>
                    </svg>
                  </a>
                </li>
                <li>
                  <a className={'twitter'} href={TwitterURL??'https://twitter.com'} target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25.779"
                         height="20.952" viewBox="0 0 25.779 20.952">
                      <path id="Path_1428" data-name="Path 1428"
                            d="M162.488,19.728a15.039,15.039,0,0,1-23.14,13.356,10.634,10.634,0,0,0,7.83-2.189,5.3,5.3,0,0,1-4.942-3.674,5.28,5.28,0,0,0,2.389-.091,5.294,5.294,0,0,1-4.243-5.252,5.266,5.266,0,0,0,2.4.661,5.294,5.294,0,0,1-1.636-7.061A15.016,15.016,0,0,0,152.044,21a5.292,5.292,0,0,1,9.013-4.824,10.627,10.627,0,0,0,3.359-1.283,5.314,5.314,0,0,1-2.326,2.926,10.57,10.57,0,0,0,3.038-.833,10.718,10.718,0,0,1-2.639,2.738"
                            transform="translate(-139.348 -14.51)" fill="#fff"
                            fillRule="evenodd"/>
                    </svg>
                  </a>
                </li>
                <li>
                  <a className={'facebook'} href={FacebookURL??'https://facebook.com'} target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="13.025"
                         height="25.778" viewBox="0 0 13.025 25.778">
                      <path id="Path_1430" data-name="Path 1430"
                            d="M12.583,8.93H8.755V6.383c.279-2.406,4.255-1.949,4.255-1.949V.3h0C12.87.264,5.1-1.58,3.553,4.335l0,0c0,.013-.007.026-.009.039A30.043,30.043,0,0,0,3.319,8.93H0v4.529H3.524V25.778H8.657V13.459h3.926l.442-4.529Z"
                            transform="translate(0 0)" fill="#fff"
                            fillRule="evenodd"/>
                    </svg>
                  </a>
                </li>
                <li>
                  <a className={'youtube'} href={YoutubeUrl??'https://youtube.com'} target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="29.748"
                         height="18.592" viewBox="0 0 29.748 18.592">
                      <path id="youtube"
                            d="M24.17,4H5.578C2.51,4,0,6.092,0,8.648v9.3c0,2.556,2.51,4.648,5.578,4.648H24.17c3.068,0,5.578-2.092,5.578-4.648v-9.3C29.748,6.092,27.238,4,24.17,4ZM11.155,19.494V7.1l9.3,6.2Z"
                            transform="translate(0 -4)" fill="#fff"/>
                    </svg>
                  </a>
                </li>
                <li>
                  <a className={'instagram'} href={InstagramURL??'https://instagram.com'} target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" width="26.812"
                         height="26.813" viewBox="0 0 26.812 26.813">
                      <path id="Path_1425" data-name="Path 1425"
                            d="M13.075,0c-3.339,0-3.81.018-5.2.081A9.817,9.817,0,0,0,4.625.7,6.569,6.569,0,0,0,2.251,2.251,6.56,6.56,0,0,0,.7,4.625,9.87,9.87,0,0,0,.081,7.88C.016,9.309,0,9.766,0,13.407s.015,4.1.08,5.528A9.864,9.864,0,0,0,.7,22.189a6.57,6.57,0,0,0,1.547,2.375,6.555,6.555,0,0,0,2.374,1.546,9.862,9.862,0,0,0,3.254.623c1.431.065,1.887.08,5.528.08s4.1-.015,5.528-.08a9.867,9.867,0,0,0,3.255-.623,6.854,6.854,0,0,0,3.921-3.921,9.839,9.839,0,0,0,.623-3.254c.063-1.386.079-1.857.08-5.2v-.664c0-3.338-.017-3.81-.08-5.195a9.845,9.845,0,0,0-.623-3.255,6.569,6.569,0,0,0-1.547-2.374A6.569,6.569,0,0,0,22.189.7,9.822,9.822,0,0,0,18.934.081C17.549.018,17.077,0,13.739,0Zm9.1,6.251a1.609,1.609,0,1,1-1.609-1.609,1.608,1.608,0,0,1,1.609,1.609M13.407,17.876a4.469,4.469,0,1,1,4.469-4.469,4.47,4.47,0,0,1-4.469,4.469m0-11.354a6.884,6.884,0,1,1-6.884,6.885,6.885,6.885,0,0,1,6.884-6.885m0-4.107c3.58,0,4,.014,5.418.079a7.436,7.436,0,0,1,2.49.461,4.154,4.154,0,0,1,1.541,1,4.168,4.168,0,0,1,1,1.541,7.436,7.436,0,0,1,.461,2.49c.065,1.414.079,1.837.079,5.418s-.014,4-.079,5.417a7.419,7.419,0,0,1-.461,2.489,4.44,4.44,0,0,1-2.544,2.544,7.424,7.424,0,0,1-2.49.463c-1.413.064-1.837.078-5.418.078s-4-.014-5.417-.078a7.414,7.414,0,0,1-2.49-.463,4.15,4.15,0,0,1-1.541-1,4.16,4.16,0,0,1-1-1.542,7.391,7.391,0,0,1-.462-2.489c-.064-1.413-.078-1.838-.078-5.417s.014-4,.078-5.418A7.408,7.408,0,0,1,2.955,5.5a4.147,4.147,0,0,1,1-1.541,4.154,4.154,0,0,1,1.541-1,7.426,7.426,0,0,1,2.49-.461c1.413-.065,1.837-.079,5.417-.079"
                            transform="translate(-0.001)" fill="#fff"
                            fillRule="evenodd"/>
                    </svg>
                  </a>
                </li>
              </ul>
            </div>

            <div className="footer__middle footer__middle--left">
              <a href="mailto:contact@ventureplans.com">
                <svg xmlns="http://www.w3.org/2000/svg" width="24.237"
                     height="16.157" viewBox="0 0 24.237 16.157">
                  <path id="mail"
                        d="M2.372,8.132l10.1,5.425a2.916,2.916,0,0,0,2.441,0l10.1-5.425c.658-.354,1.281-1.732.072-1.732H2.3c-1.208,0-.586,1.378.072,1.732ZM25.316,11.1c-.747.389-9.946,5.182-10.4,5.422a2.293,2.293,0,0,1-1.22.268,2.3,2.3,0,0,1-1.22-.268c-.458-.239-9.6-5.034-10.352-5.424-.525-.274-.52.047-.52.295v9.82a1.639,1.639,0,0,0,1.346,1.346H24.489a1.639,1.639,0,0,0,1.346-1.346V11.392c0-.247.005-.57-.521-.295Z"
                        transform="translate(-1.599 -6.4)" fill="#00a1f1"/>
                </svg>
                <span>{translate('t.email_us')}</span>
              </a>

              <p>In a constantly changing world, remain ahead, join our mailing list<br/> to get access to industry trends and market shifts.</p>
            </div>

            <div className="footer__middle footer__middle--right">
              <form action="#" id="subscribeFooter" onSubmit={_onSubmit}>
                <div className="input__group">
                  <input type="email" 
                  id="subscribeEmail" 
                  required className="txt-subscribe"
                  value={email}
                  onChange={(e) => {
                    setEmai(e.target.value)
                  }}
                  name='subscribeEmail'
                  placeholder={translate('t.your_email_address')} 
                  />
                  <button 
                  type="submit" 
                  className="btn btn-primary btn-subscribe"
                  >{translate('t.submit')}</button>
                </div>
              </form>

            </div>
          </div>

          <div className="footer__bottom">
            <div className="footer__bottom--left">
              <img src="/images/secure.svg" alt=""/>
              <p>© 2010 - 2021 Venture Plans, Inc. </p>
            </div>
            <div className="footer__bottom--right">
              <ul>
                <li><Link href="#">Los Angeles</Link></li>
                <li><a href="#">Boston</a></li>
                <li><a href="#">San Francisco </a></li>
                <li><a href="#">Austin </a></li>
                <li><a href="#">Chicago</a></li>
                <li><a href="#">New York</a></li>
                <li><Link href="/pages/privacy-policy">{translate('t.privacy')}</Link></li>
                <li><Link href="/pages/terms">{translate('t.terms_of_use')}</Link></li>
                <li><Link href="/contact.html">{translate('t.contact')}</Link></li>
                <li><a href="#">{translate('t.top')}</a></li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
  )
}

export default withLocalize(Footer)
