import React from 'react'
import {getStrapiURL} from '../../../lib/api'

const Logo = ({ Link, Logo }) => {
  return (
      <figure>
        <a href={Link} target="_blank">
          {/*<img src={imageSrc} alt="" width={imageWidth}/>*/}
          <img src={`${getStrapiURL()}${Logo.url}`} alt="" />
        </a>
      </figure>
  )
}

export default Logo