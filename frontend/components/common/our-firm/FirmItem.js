import React from 'react'
import {getStrapiURL} from '../../../lib/api'

const FirmItem = ({ index, Title, Content, Image }) => {

  return (
      <article className="our-firm__item">
        <h3 style={{fontSize: '28px'}} ><span>{index + 1}</span>{Title}</h3>
        <p style={{fontSize: '20px'}}>{Content}</p>
        <figure>
        <img width='50px' height='50px' src={`${getStrapiURL()}${Image.url}`} alt="" />
        </figure>
      </article>
  )
}

export default FirmItem