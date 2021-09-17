import React, { useState, useRef } from 'react'
import { withLocalize } from 'react-localize-redux'
import Slider from 'react-slick'
import {getFileSource} from '../../../utils/functions'

const settings = {
  dots: false,
  infinite: true,
  arrows: false,
  autoplaySpeed: 6000,
  autoplay: true,
  fade: true,
  speed: 2000,
  slidesToShow: 1,
  slidesToScroll: 1
}

const Hero = ({ translate, Sliders = [] }) => {

  const [heroIndex, setHeroIndex] = useState(0)

  const sliderRef = useRef()

  return (
      <section className="hero">
        <div className="hero__sliders">
          <Slider
              {...settings}
              className="hero__sliders--main venture-slider"
              beforeChange={(_, newIndex) => setHeroIndex(newIndex)}
              ref={sliderRef}
          >
            {Sliders.map((slider, index) => (
              <div className="hero__sliders--item" key={slider.id}>
                <div className={`hero__sliders--content ${index === 0 ? 'center-slide' : ''}`}>
                  <div className="container">
                    <div className="hero__sliders--text">
                      <h2 style={{ whiteSpace: "pre-wrap" }}>{slider.Title}</h2>
                      {slider.LinkType === "Complex" && (
                        <a href={slider.Link} className="link">
                          <span>{translate("t.find_out_how")}</span>
                          <svg xmlns="http://www.w3.org/2000/svg" width="23.5"
                               height="12.463"
                               viewBox="0 0 23.5 12.463">
                            <g id="Union_3" data-name="Union 3" fill="#00a1f1">
                              <path
                                  d="M 16.56420135498047 9.490234375 L 16.56420135498047 7.362900257110596 L 16.56420135498047 5.918100357055664 L 16.56420135498047 4.418100357055664 L 16.56420135498047 2.972966194152832 L 20.97540473937988 6.231600284576416 L 16.56420135498047 9.490234375 Z"
                                  stroke="none"/>
                              <path
                                  d="M 18.06420135498047 6.517261028289795 L 18.45089912414551 6.231600284576416 L 18.06420135498047 5.945939540863037 L 18.06420135498047 6.517261028289795 M 15.06420040130615 12.46320056915283 L 15.06420040130615 7.362900257110596 L 4.089355343239731e-07 7.362900257110596 L 4.089355343239731e-07 4.418100357055664 L 15.06420040130615 4.418100357055664 L 15.06420040130615 2.845764015546592e-07 L 23.49990081787109 6.231600284576416 L 15.06420040130615 12.46320056915283 Z"
                                  stroke="none" fill="#00a1f1"/>
                            </g>
                          </svg>
                        </a>
                      )}
                      <p>{slider.Content}</p>
                      {slider.LinkType === "Simple" && <a href={slider.Link}>{translate("t.read_more_2")}</a>}
                      {slider.LinkType === "Complex" && (
                        <a href={slider.Link} className="btn btn-outline btn-white">{slider.Label}</a>
                      )}
                    </div>
                  </div>
                </div>
                {slider.BannerType === 'Video'
                  ? (
                      <div className="slider-video">
                        <video playsInline autoPlay muted loop
                               src={getFileSource(slider.VideoBanner)}
                               preload="auto"
                               controls="" />
                      </div>
                  ) : (
                      <picture>
                        <source media="(max-width: 767px)" srcSet={getFileSource(slider.ImageMobile)} />
                        <img src={getFileSource(slider.Image)} alt="" />
                      </picture>
                  )
                }
              </div>
            ))}
          </Slider>
          <div className="hero__sliders--navigation">
            <div className="container">
              <div className="hero__sliders--nav">
                <ul>
                  {Sliders.map((slider, index) => (
                    <li className={heroIndex === index ? 'active' : ''} data-slide={index}  key={`slider-${slider.id}`}>
                      <a href="#" onClick={(e) => {
                        e.preventDefault()

                        sliderRef.current.slickGoTo(index)
                      }}>
                        {slider.Label}
                      </a>
                    </li>
                  ))}
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Hero)
