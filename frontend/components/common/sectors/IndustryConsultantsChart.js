import React from 'react'
import { withLocalize } from 'react-localize-redux'
import VictoryChart from '../victory-chart'

const IndustryConsultantsChart = ({ data, translate }) => {

  return (
      <div className="chart-container">
        <div className="card-wrapper">
          <div className="card-header">
            <span className="value">{data}</span>
            <span className="chart-title">{translate("t.industry_consultants")}</span>
          </div>
          <div className="card-content victory">
            <div className="victory-chart">
              <VictoryChart data={[
                { x: 1, y: 4, opacity: 1.0, fill: '#00A2FF' },
                { x: 2, y: 1, opacity: 1.0, fill: '#f3f4f7' },
              ]}/>
              <div className="small-chart">
                <VictoryChart data={[
                  { x: 1, y: 1, opacity: 0.5, fill: '#00A2FF' },
                  { x: 2, y: 1, opacity: 1.0, fill: '#f3f4f7' },
                ]}/>
              </div>
              <div className="value-label">{data}</div>
            </div>
          </div>
        </div>
      </div>
  )
}

export default withLocalize(IndustryConsultantsChart)