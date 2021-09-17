import React, { useState, useEffect } from 'react'
import ProcessItem from './ProcessItem'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI} from '../../../lib/api'

const Process = ({ translate }) => {
  const [processes, setProcesses] = useState([])

  useEffect(() => {
    _fetchProcesses()
  }, [])

  const _fetchProcesses = async () => {
    try {
      const data = await fetchAPI('/processes')

      setProcesses(data)
    } catch (err) {
      setProcesses([])
    }
  }
  
  return (
      <section className="process">
        <div className="anchorSection" id={'grant-application-process'}></div>
        <div className="container">
          <div className="section__heading section__heading--medium">
            <h3><u>{translate("t.grant_application_process")}</u></h3>
            <h4>{translate("t.grant_application_process_description")}</h4>
          </div>

          <div className="process__inner">
            {processes.map((process, index) => <ProcessItem {...process} key={index} step={index+1}/>)}
          </div>
        </div>
      </section>
  )
}

export default withLocalize(Process)