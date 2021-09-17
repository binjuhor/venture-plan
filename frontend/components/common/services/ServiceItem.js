import React from 'react'
import {getStrapiURL} from '../../../lib/api'

const ServiceItem = ({ index, Title, Content, Image }) => {

  return (
      <article className="services-section__item">
        <div className="services-section__item--heading">
          <span>{index}</span>
          <h3>{Title}</h3>
        </div>
        <div className="services-section__item--text">
          <p>{Content}</p>
        </div>
        <figure>
          <img src={`${getStrapiURL()}${Image.url}`} alt="" />
        </figure>
      </article>
  )
}

export default ServiceItem