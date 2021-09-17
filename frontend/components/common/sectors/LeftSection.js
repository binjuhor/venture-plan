import React from 'react'
import {Swiper, SwiperSlide} from 'swiper/react'
import {getFileSource} from '../../../utils/functions'

const LeftSection = ({ data, currentIndex, setCurrentIndex}) => {
    const _renderLabelIcon = (data, index) => {
        let previousItemSlider = (currentIndex % 7 - 2) === -2 ? 5 : (currentIndex % 7 - 2)
        previousItemSlider = previousItemSlider === -1 ? 6 : previousItemSlider

        return (
            <SwiperSlide key={data.id} onMouseEnter={() => console.log('a')}>
                {({isActive}) => (
                    <div className={`
                        sector-item ${index === previousItemSlider ? 'sector-item-prev' : ''} 
                        ${isActive ? 'active' : ''}
                    `}>
                        <img src={getFileSource(data.Image)} alt=""/>
                        <span className="sector-item-label">{data.Name}</span>
                    </div>
                )}
            </SwiperSlide>
        )
    }

    return (
        <div className="left-section">
            <Swiper
                loop={true}
                slidesPerView={1 + 1/2}
                spaceBetween={20}
                onSlideChange={(swiper) => setCurrentIndex(swiper.activeIndex)}
                centeredSlides={true} 
                breakpoints={{
                    479: {
                        slidesPerView: 1 + 1 / 3,
                    },
                    768: {
                        spaceBetween: 20,
                        centeredSlides: true,
                        slideToClickedSlide: true,
                        allowTouchMove: false,
                        initialSlide: 3,
                        slidesPerView: 7,
                        direction: "vertical"
                    },
                    1200: {
                        spaceBetween: 25,
                        centeredSlides: true,
                        slideToClickedSlide: true,
                        allowTouchMove: false,
                        initialSlide: 3,
                        slidesPerView: 7,
                        direction: "vertical"
                    }
                }}
            >
                {data.map(_renderLabelIcon)}
            </Swiper>
        </div>
    )
}

export default LeftSection
