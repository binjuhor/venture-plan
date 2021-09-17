import React, { useState } from 'react'
import Link from 'next/link'
import { withLocalize } from 'react-localize-redux'
import { getStrapiURL } from '../../../lib/api'
import ShareList from '../share-list'

const Insight = ({ Image, Title, Subtitle, Content, translate, id }) => {
  const [showShare, setShowShare] = useState(false)

  return (
      <div className="insights__item--inner">
        <figure>
          <img src={`${getStrapiURL()}${Image.url}`} alt="" />
        </figure>
        <h3>{Title}</h3>
        <h4>{Subtitle}</h4>
        <p>{Content}</p>
        <div className="insights__item--bottom">
          <Link href={`/insight/${id}`}  className="insights__item--button">{translate('t.read_more')}</Link>
          <div className={`share-group ${showShare ? 'shown' : ''}`}>
            <a href="#" onClick={(e) => {
              e.preventDefault()

              setShowShare(!showShare)
            }}>
              <svg xmlns="http://www.w3.org/2000/svg" width="19" height="20"
                   viewBox="0 0 19 20">
                <g id="Group_506" data-name="Group 506"
                   transform="translate(-1138 -814)">
                  <g id="Ellipse_3942" data-name="Ellipse 3942"
                     transform="translate(1150 814)"
                     stroke="#707070" strokeWidth="1">
                    <circle cx="3.5" cy="3.5" r="3.5" stroke="none"/>
                    <circle cx="3.5" cy="3.5" r="3" fill="none"/>
                  </g>
                  <g id="Ellipse_3943" data-name="Ellipse 3943"
                     transform="translate(1138 821)"
                     stroke="#707070" strokeWidth="1">
                    <circle cx="3.5" cy="3.5" r="3.5" stroke="none"/>
                    <circle cx="3.5" cy="3.5" r="3" fill="none"/>
                  </g>
                  <g id="Ellipse_3944" data-name="Ellipse 3944"
                     transform="translate(1150 827)"
                     stroke="#707070" strokeWidth="1">
                    <circle cx="3.5" cy="3.5" r="3.5" stroke="none"/>
                    <circle cx="3.5" cy="3.5" r="3" fill="none"/>
                  </g>
                  <line id="Line_54" data-name="Line 54" x1="12.292" y2="7.116"
                        transform="translate(1142.205 817.558)" fill="none"
                        stroke="#000"
                        strokeWidth="3"/>
                  <line id="Line_55" data-name="Line 55" x1="12.292" y1="7.116"
                        transform="translate(1141.558 824.028)" fill="none"
                        stroke="#000"
                        strokeWidth="3"/>
                </g>
              </svg>
            </a>

            <ShareList url={`${window.location.origin}/insight/${id}`}/>
          </div>
        </div>
      </div>
  )
}

export default withLocalize(Insight)