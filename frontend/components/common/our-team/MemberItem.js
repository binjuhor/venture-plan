import React from 'react'
import {getStrapiURL} from '../../../lib/api'

const MemberItem = ({ ProfileImage, BrandImage, Name, Position, Description }) => {

  return (
      <div className="our-team__item">
        <div className="our-team__item--image">
          <figure>
            <img src={`${getStrapiURL()}${ProfileImage.url}`} alt="" />
          </figure>
        </div>
        <h3>{Name}</h3>
        <h4>{Position}</h4>
        <p>{Description}</p>
        <img src={`${getStrapiURL()}${BrandImage.url}`} alt="" />
      </div>
  )
}

export default MemberItem