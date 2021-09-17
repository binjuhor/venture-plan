import React from 'react'
import { withLocalize } from 'react-localize-redux'
import {getFileSource} from '../../../utils/functions'

const Download = ({ translate, SamplePlansTitle, SamplePlansDescription, SamplePlansBottomText, SamplePlans }) => {
  console.log(SamplePlans)
  return (
      <section className="download">
        <div className="anchorSection" id={'business-plan-samples'}></div>
        <div className="container">
          <div className="section__heading section__heading--medium">
            <h3><u>{SamplePlansTitle}</u></h3>
            <h4>{SamplePlansDescription}</h4>
          </div>

          <div className="download__inner">
            {SamplePlans.map(({ id, Image, Name, File }) => (
                <div className="download__item" key={id}>
                  <figure>
                    <img src={getFileSource(Image)} alt="" />
                  </figure>
                  <h3>{Name}</h3>
                  <a href={getFileSource(File)} target="_blank" download>{translate("t.download_pdf")}</a>
                </div>
            ))}
          </div>

          <p>{SamplePlansBottomText}</p>
        </div>
      </section>
  )
}

export default withLocalize(Download)
