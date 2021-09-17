import React, { useState } from 'react'
import { withLocalize } from 'react-localize-redux'
import {getStrapiURL} from '../../../lib/api'

const TestimonialItem = ({ Content, Name, Image, translate }) => {
  const [readMore, setReadMore] = useState(false)

  return (
      <div className="testimonials__item">
        <div className="testimonials__item--inner">
          <div className="testimonials__item--content">
            <div className={`testimonials__item--text content-more ${readMore ? 'active' : ''}`}>
              <div className="content-more__inner"><p>{Content}</p></div>
              <a href="#" className={`btn-read-more ${readMore ? 'active' : ''}`} onClick={(e) => {
                e.preventDefault()

                setReadMore(!readMore)
              }}>{translate("t.read")} <span>{translate("t.more")}</span><span>{translate("t.less")}</span></a>
            </div>
            <h4><span>{name}</span></h4>
          </div>
          <div className="testimonials__item--image">
            <figure>
              <img src={`${getStrapiURL()}${Image.url}`} alt="" />
            </figure>
            <h3>{Name}</h3>
          </div>
        </div>
      </div>
  )
}

export default withLocalize(TestimonialItem)