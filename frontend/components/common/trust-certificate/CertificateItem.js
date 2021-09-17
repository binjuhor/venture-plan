import React from 'react'
import {getStrapiURL} from '../../../lib/api'

const CertificateItem = ({ Title, Content, Image }) => {

  return (
      <div className="certificate-trust__item">
        <div className="certificate-trust__item--image">
          <img src={`${getStrapiURL()}${Image.url}`} alt="" width={70} height={70}/>
        </div>
        <h3>{Title}</h3>
        <p>{Content}</p>
      </div>
  )
}

export default CertificateItem