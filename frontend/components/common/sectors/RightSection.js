import React from 'react'
import IndustryConsultantsChart from './IndustryConsultantsChart'
import RaisedChart from './RaisedChart'
import BusinessPlansWrittenChart from './BusinessPlansWrittenChart'
import YearsOfExperienceChart from './YearsOfExperienceChart'

const RightSection = ({ data }) => {

  return (
    <div className="right-section">
      <IndustryConsultantsChart data={data ? data.IndustryConsultations : 4}/>
      <RaisedChart data={data ? data.Raised : 5}/>
      <BusinessPlansWrittenChart data={data ? data.BusinessPlansWritten : 6}/>
      <YearsOfExperienceChart data={data ? data.YearsExperience : 7}/>
    </div>
  )
}

export default RightSection