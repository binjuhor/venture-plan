import React, {Fragment} from 'react'
import {getStrapiURL} from '../../../lib/api'

const StatisticItem = ({ Title, Image, StatisticContent }) => {
  return (
      <div className="statistic__item">
        <div className="statistic__item--heading">
          <img src={`${getStrapiURL()}${Image.url}`} alt=""/>
        </div>
        <div className="statistic__item--content">
          <h3>{Title}</h3>
          <p>{StatisticContent.map(({ Content, id }) => (
            <Fragment key={id}>
              {Content}<br />
            </Fragment>
          ))}</p>
        </div>
      </div>
  )
}

export default StatisticItem