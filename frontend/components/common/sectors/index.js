import React, { useState, useEffect } from 'react'
import { withLocalize } from 'react-localize-redux'
import LeftSection from './LeftSection'
import RightSection from './RightSection'
import {fetchAPI} from '../../../lib/api'

const Sectors = ({ translate, showButton }) => {
  const [sectors, setSectors] = useState([])
  const [currentIndex, setCurrentIndex] = useState(0)
  const [realIndex, setRealIndex] = useState(0)

  useEffect(() => {
    _fetchSectors()
  }, [])

  const _fetchSectors = async () => {
    try {
      const data = await fetchAPI('/sectors')

      if(data) setSectors(data)
    } catch (err) {
      setSectors([])
    }
  }

  useEffect(() => {
    if(sectors.length > 0) {
      setRealIndex(currentIndex % sectors.length)
    }
  }, [currentIndex, sectors])

  return sectors.length > 0 ? (
      <section className="sectors">
        <div className="container">
          <div className="section__title section__title--border">
            <h3><u>{translate("t.sectors_title")}</u></h3>
            <p className={'text-center'}>{translate("t.sectors_description")}</p>
          </div>
          <div className="sectors__inner">
            <LeftSection
                currentIndex={currentIndex}
                setCurrentIndex={setCurrentIndex}
                data={sectors}
            />
            <RightSection data={sectors[realIndex]} currentIndex={realIndex}/>
          </div>
          {showButton && <p className={'text-center book-free-consultation'} >
            <a href="#" className={'btn'}>BOOK FREE CONSULTATIION</a>
          </p>}
          
               
        </div>
      </section>
  ) : null
}

export default withLocalize(Sectors)