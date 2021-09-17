import React, {useEffect, useState} from 'react'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI} from '../../../lib/api'
import FirmItem from './FirmItem'

const OurFirm = ({ translate }) => {
  const [firms, setFirms] = useState([])

  useEffect(() => {
    _fetchFirms()
  }, [])

  const _fetchFirms = async () => {
    try {
      const data = await fetchAPI('/our-firms')

      setFirms(data)
    } catch (err) {
      setFirms([])
    }
  }

  return (
      <section className="our-firm">
        <div className="anchorSection" id={'our-firm'}></div>
        <div className="container">
          <div className="section__heading">
            <h3>{translate("t.our")} <span>{translate("t.firm")}</span></h3>
          </div>

          <div className="our-firm__inner">
            {firms.map((firm, index) => <FirmItem {...firm} key={firm.id} index={index}/>)}
          </div>
        </div>
      </section>
  )
}

export default withLocalize(OurFirm)
