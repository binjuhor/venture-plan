import React, { useState, useEffect } from 'react'
import ReactPlayer from 'react-player'

const data = [
  'Business Consulting', 'Financing', 'Automation and Digital transformation', 'Agile Development',
  'Research & Data Analysis', 'Who we are', 'Talk to Us', 'Financial Modeling'
]

const Video = () => {
  const [services, setServices] = useState([])
  const [selectedService, setSelectedService] = useState(null)
  const [isPlaying, setIsPlaying] = useState(false)
  const [filteredData, setFilteredData] = useState(data)
  const [input, setInput] = useState("")
  const [close, setClose] = useState(false)

  useEffect(() => {
    if(input) {
      setFilteredData(data.filter(text => text.includes(input)))
    } else {
      setFilteredData(data)
    }
  }, [input])


  const resetInput = () => {
    setClose(false)
    setInput('')
  }

  return (
      <section className="video ">
        <div className="container">
          <div className="video__inner">
            <div className="video__search">
              <div className="search-group ">
              <div className="searchInput">
                  <input
                      type="text"
                      id="search"
                      placeholder="Search"
                      value={input}
                      onChange={(e) => {
                        const value = e.target.value
                        setInput(value)
                        value.length?setClose(true):setClose(false)
                      }}
                  />
                  {close && <span onClick={resetInput}>
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14">
                      <g id="Group_1683" data-name="Group 1683" transform="translate(-368.513 -359.513)">
                        <g id="Group_1664" data-name="Group 1664">
                          <circle id="Ellipse_3982" data-name="Ellipse 3982" cx="7" cy="7" r="7" transform="translate(368.513 359.513)"/>
                          <g id="Group_1662" data-name="Group 1662" transform="translate(371.873 363.892)">
                            <path id="Path_8036" data-name="Path 8036" d="M0,0,1.595.095,2.134,9.18.539,9.085Z" transform="translate(-0.361 0.13) rotate(-45)" fill="#fff"/>
                            <path id="Path_8037" data-name="Path 8037" d="M0,0,1.595-.095,1.056,8.991l-1.595.095Z" transform="translate(6.445 -0.931) rotate(45)" fill="#fff"/>
                          </g>
                        </g>
                      </g>
                    </svg>
                  </span>}
                </div>
                <div className="search-group__list">
                  <ul id="search-list">
                    {filteredData.map((name, index) => (
                      <li key={index} className={active === name ? 'active' : ''}><a href="#" onClick={(e) => {
                        e.preventDefault()

                        setActive(name)
                      }}>{name}</a></li>
                    ))}
                  </ul>
                </div>
              </div>
            </div>

            <div className="video__content">
              <div className="video-container">
                <ReactPlayer
                    playing={isPlaying}
                    url='/images/home/video.mp4'
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

              <p>Our chief-level business consulting services come in an array
                of sub branches like restructuring and
                investment strategy. We are experts in change management,
                technology and financing. Our customer
                focused analysis has proven to drive revenue growth.</p></div>
          </div>
        </div>
      </section>
  )
}

export default Video