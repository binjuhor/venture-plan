import React, {useState} from 'react'
import ReactPlayer from 'react-player'
import {getFileSource} from '../../../utils/functions'

const SelectedService = ({ Video, Content }) => {
  const [isPlaying, setIsPlaying] = useState(false)

  return (
    <>
      <div className="video__content">
        <div className="video-container">
          <ReactPlayer
              playing={isPlaying}
              url={getFileSource(Video)}
              width="100%"
              height="100%"
              controls={true}
          />
          <div
              className="play-video"
              style={{ visibility: isPlaying ? 'hidden' : 'visible'}}
              onClick={() => setIsPlaying(true)}
          />
        </div>

        <p style={{ whiteSpace: "pre-wrap" }}>{Content}</p>
      </div>
    </>
  )
}

export default SelectedService