import React from 'react'
import { withLocalize } from 'react-localize-redux'
import { Swiper, SwiperSlide } from 'swiper/react'
import Insight from './Insight'

const Insights = ({ insights, translate }) => {

  return (
      <section className="insights">
        <div className="anchorSection" id={'our-latest-insights'}></div>
        <div className="container">
          <div className="section__title section__title--medium">
            <h3><u>{translate("t.our_latest_insights")}</u></h3>
          </div>
          <div className="insights__list insights__list--slider">
            <Swiper
              className="latest-insights"
              loop={false}
              slidesPerView={1+1/9}
              spaceBetween={0}
              breakpoints={{
                479: {
                  slidesPerView: 1+1+1/9,
                },
                768: {
                  slidesPerView: 1+1+1+1/2,
                  spaceBetween: 15,
                },
                1024: {
                  slidesPerView: 1+1+1+1,
                  spaceBetween: 15,
                }
              }}
            >
              {insights.map((insight, index) => (
                <SwiperSlide key={index} className="insights__item">
                  <Insight {...insight}/>
                </SwiperSlide>
              ))}
            </Swiper>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Insights)
