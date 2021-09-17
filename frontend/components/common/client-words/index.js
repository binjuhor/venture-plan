import React, { useState, useEffect } from 'react'
import Slider from 'react-slick'
import { withLocalize } from 'react-localize-redux'
import TestimonialItem from './TestimonialItem'
import {fetchAPI} from '../../../lib/api'

const settings = {
  loop: true,
  slidesPerView: 1,
  spaceBetween: 0,
  centeredSlides: true,
  autoHeight: true,
  arrows: true,
  dots: true,
  pagination: {
    el: '.testimonials-pagination',
    clickable: true
  },
  navigation: {
    nextEl: '.testimonials-next',
    prevEl: '.testimonials-prev',
  }
}

const ClientWords = ({ translate }) => {
  const [clientWords, setClientWords] = useState([])

  useEffect(() => {
    _fetchClientWords()
  }, [])

  const _fetchClientWords = async () => {
    try {
      const data = await fetchAPI('/client-words')

      setClientWords(data)
    } catch (err) {
      console.log(err)
      setClientWords([])
    }
  }

  return (
    <>
      <section className="section-gray">
        <div className="container">
          <div className="section__heading section__heading--medium">
            <h3><u>{translate("t.client_words_title")}</u></h3>
            <h4>{translate("t.client_words_subtitle")}</h4>
          </div>
        </div>
      </section>
      <section className="testimonials">
        <div className="container">
          <div className="testimonials__inner">
            <Slider
                {...settings}
                className="testimonials-slider"
            >
              {clientWords.map((clientWord) => <TestimonialItem {...clientWord} key={clientWord.id}/>)}
            </Slider>
          </div>
        </div>
      </section>
    </>
  )
}

export default withLocalize(ClientWords)