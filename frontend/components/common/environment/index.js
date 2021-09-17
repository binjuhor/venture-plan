import React, {useState} from 'react'
import { withLocalize } from 'react-localize-redux'
import ReactPlayer from 'react-player'
import {getStrapiURL} from '../../../lib/api'

const Environment = ({ translate, EnvironmentVideo }) => {
  const [isPlaying, setIsPlaying] = useState(false)

  return (
      <section className="environment">
        <div className="anchorSection" id={'diverse-environment'}></div>
        <div className="container">
          <div className="section__heading">
            <h3 style={{fontSize: '26px'}} >{translate("t.diverse")} <span>{translate("t.environment")}</span></h3>
            <p style={{fontSize: '20px'}} >{translate("t.environment_content")}</p>
          </div>

          {!!EnvironmentVideo && (
              <div className="video-container">
                <ReactPlayer
                    playing={isPlaying}
                    url={`${getStrapiURL()}${EnvironmentVideo.url}`}
                    width="66%"
                    height="66%"
                    controls={true}
                />
                <div
                    className="play-video"
                    style={{ visibility: isPlaying ? 'hidden' : 'visible'}}
                    onClick={() => setIsPlaying(true)}
                />
              </div>
          )}
        </div>
      </section>
  )
}

export default withLocalize(Environment)
