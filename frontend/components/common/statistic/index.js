import React, { useState, useEffect } from 'react'
import {fetchAPI} from '../../../lib/api'
import { withLocalize } from 'react-localize-redux'
import StatisticItem from './StatisticItem'

const Statistic = ({ translate }) => {
  const [statistics, setStatistics] = useState([])

  useEffect(() => {
    _fetchStatistics()
  }, [])

  const _fetchStatistics = async () => {
    try {
      const data = await fetchAPI('/statistics')

      setStatistics(data)
    } catch (err) {
      setStatistics([])
    }
  }

  return (
      <section className="statistic">
        <div className="container">
          <div className="statistic__inner">
            <figure>
              <img src="/images/grants/statistic.jpg" alt="" />
            </figure>

            <div className="statistic__list">
              {statistics.map(statistic => <StatisticItem {...statistic} key={statistic.id}/>)}
            </div>

            <div className="statistic__bottom">
              <a href="#" className="btn">{translate("t.book_free_consultation")}</a>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Statistic)