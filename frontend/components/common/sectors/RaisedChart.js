import React from 'react'
import { withLocalize } from 'react-localize-redux'
import LineChart from '../line-chart'

const RaisedChart = ({ data, translate }) => {

  return (
    <div className="chart-container">
      <div className="card-wrapper">
        <div className="card-header">
          <span className="value">{data}MM</span>
          <span className="chart-title">{translate("t.raised")}</span>
        </div>
        <div className="card-content line-chart">
          <LineChart
              height="182px"
              color={['00A2FF']}
          />
        </div>
      </div>
    </div>
  )
}

export default withLocalize(RaisedChart)