import React from 'react'
import { withLocalize } from 'react-localize-redux'
import {getFileSource} from '../../../utils/functions'

const PageBanner = ({ Title, Subtitle, Description, BannerDesktop, BannerMobile, translate }) => {
  
  return (
      <section className="page-banner line-bottom with-button">
        <figure>
          {!!BannerDesktop && <img className="image-pc" src={getFileSource(BannerDesktop)} alt="" />}
          {!!BannerMobile && <img className="image-sp" src={getFileSource(BannerMobile)} alt="" />}
        </figure>
        <div className="container">
          <div className="page-banner__inner">
            <div className="subtitle" dangerouslySetInnerHTML={{__html: `<p>${Subtitle}</p>`}}></div>
            <h1>{Title}</h1>
            <p style={{ whiteSpace: "pre-wrap" }}>{Description}</p>
            <a href="#" className="btn btn-outline btn-white hide-pc">{translate("t.request_a_quote")}</a>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(PageBanner)