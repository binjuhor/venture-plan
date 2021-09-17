import React, {useEffect, useState} from 'react'
import SwiperCore, { Navigation, Pagination } from 'swiper/core'
import {Swiper, SwiperSlide} from 'swiper/react'
import {withLocalize} from 'react-localize-redux'
import TestimonialItem from './TestimonialItem'
import {fetchAPI} from '../../../lib/api'

SwiperCore.use([Navigation, Pagination])

const Testimonial = ({translate}) => {
    const [testimonials, setTestimonials] = useState([])

    useEffect(() => {
        _fetchTestimonials()
    }, [])

    const _fetchTestimonials = async () => {
        try {
            const data = await fetchAPI('/testimonials')

            setTestimonials(data)
        } catch (err) {
            setTestimonials([])
        }
    }

    return (
        <section className="ratings">
            <div className="container">
                <div className="section__title section__title--border">
                    <h3><u>{translate("t.what_our_clients_say")} <span>{translate("t.about_us_2")}</span></u></h3>
                </div>
            </div>

            <div className="ratings__inner">
                <div className="ratings-slider">
                    <Swiper
                        loop={true}
                        slidesPerView={1}
                        spaceBetween={0}
                        initialSlide={2}
                        centeredSlides={true}
                        autoHeight={true}
                        navigation={true}
                        pagination={{ clickable: true }}
                        breakpoints={{
                            768: {
                                slidesPerView: 2,
                                spaceBetween: 15,
                                autoHeight: false,
                            },
                            1024: {
                                slidesPerView: 2,
                                spaceBetween: 90,
                                autoHeight: false,
                            },
                            1440: {
                                slidesPerView: 3,
                                spaceBetween: 90,
                                autoHeight: false,
                            }
                        }}
                    >
                        {testimonials.map((testimonial, index) => (
                            <SwiperSlide key={index} className="ratings__item">
                                <TestimonialItem {...testimonial}/>
                            </SwiperSlide>
                        ))}
                    </Swiper>
                </div>
            </div>

            <div className="ratings__bottom">
                <div className="container">
                    <a href="#" className="btn btn-primary">{translate("t.book_free_consultation")}</a>
                </div>
            </div>
        </section>
    )
}

export default withLocalize(Testimonial)