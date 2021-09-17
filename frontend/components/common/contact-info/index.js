import React from 'react'

const ContactInfo = ({ PhoneNumber, Email, Address }) => {

  return (
      <section className="contact-info">
        <div className="container">
          <div className="contact-info__inner">
            <div className="contact-info__box">
              <div className="contact-info__item">
                <svg xmlns="http://www.w3.org/2000/svg" width="21.865"
                     height="26.264" viewBox="0 0 21.865 26.264">
                  <g id="noun_Location_1562179"
                     transform="translate(-17 -962.362)">
                    <path id="Path_7373" data-name="Path 7373"
                          d="M34.933,962.362c-6.038,0-10.933,3.969-10.933,8.864a10.732,10.732,0,0,0,2.024,5.581l8.909,11.818,8.909-11.819a10.722,10.722,0,0,0,2.024-5.581C45.865,966.331,40.971,962.362,34.933,962.362Zm0,4.6c2.787,0,5.046,1.764,5.046,3.94s-2.259,3.94-5.046,3.94-5.046-1.764-5.046-3.94S32.146,966.958,34.933,966.958Z"
                          transform="translate(-7 0)" fill="#0d0c0c"/>
                  </g>
                </svg>
                {Address}
              </div>
            </div>

            <div className="contact-info__box">
              <div  className="contact-info__item">
                <svg xmlns="http://www.w3.org/2000/svg" width="28.152"
                     height="18.563" viewBox="0 0 28.152 18.563">
                  <path id="mail"
                        d="M2.5,8.39l11.73,6.232a3.421,3.421,0,0,0,2.835,0L28.792,8.39c.764-.407,1.488-1.99.084-1.99H2.415c-1.4,0-.68,1.583.083,1.99ZM29.147,11.8c-.868.447-11.553,5.954-12.085,6.23a2.688,2.688,0,0,1-1.417.307,2.7,2.7,0,0,1-1.417-.307C13.7,17.752,3.071,12.243,2.2,11.8c-.61-.315-.6.054-.6.338V23.416a1.894,1.894,0,0,0,1.564,1.547H28.187a1.894,1.894,0,0,0,1.564-1.547V12.135c0-.284.006-.655-.605-.338Z"
                        transform="translate(-1.599 -6.4)" fill="#0d0c0c"/>
                </svg>
                <a  href="mailto:info@ventureplans.com">{Email}</a>
              </div>
            </div>

            <div className="contact-info__box">
            <div  className="contact-info__item">
                <svg xmlns="http://www.w3.org/2000/svg" width="27.409"
                     height="24.658" viewBox="0 0 27.409 24.658">
                  <path id="phone"
                        d="M1.829.914C2.926-.073,6.241-.238,6.266.284S9.252,6.593,9.277,7.115s-1.952,2.3-2.53,2.821,3.869,5.032,3.953,5.117,5.115,4.072,5.688,3.556,2.557-2.3,3.135-2.276,7.014,2.686,7.594,2.71.4,3-.7,3.991c-.938.843-5.795,3.906-14.239-1.563a26.272,26.272,0,0,1-4.617-3.578l0,0-.005,0-.005,0,0,0a24.987,24.987,0,0,1-3.978-4.154C-2.513,6.126.892,1.757,1.829.914Z"
                        transform="translate(-0.032 0.006)"/>
                </svg>
                <a href="tel:0180088888">{PhoneNumber}</a>
              </div>
            </div>
          </div>
        </div>
      </section>
  )
}

export default ContactInfo