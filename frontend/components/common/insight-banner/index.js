import React from 'react'
import {getFileSource} from '../../../utils/functions'

const InsightBanner = ({ Title, Subtitle, BannerDesktop, BannerMobile }) => {
  
  return (
      <section className="page-banner line-bottom">
        <figure>
          {!!BannerDesktop && <img className="image-pc" src={getFileSource(BannerDesktop)} alt="" />}
          {!!BannerMobile && <img className="image-sp" src={getFileSource(BannerMobile)} alt="" />}
        </figure>
        <div className="container">
          <div className="page-banner__inner">
            <h1>{Title}</h1>
            <p>{Subtitle}</p>
          </div>
        </div>
      </section>
  )
}

export default InsightBanner
