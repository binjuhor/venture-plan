import React from 'react'
import { withLocalize } from 'react-localize-redux'
import Link from 'next/link'
import {getFileSource} from '../../../utils/functions'

const InsightFeaturedPost = ({ translate, insights }) => {
  
  return (
      <section className="featured-post">
        <div className="container">
          <div className="featured-post__list">
            {insights.map(({ id, Title, Subtitle, Content, Image }) => (
              <Link href={`/insight/${id}`} key={id}>
                <article className="featured-post__item">
                  <figure>
                    <img src={getFileSource(Image)} alt="" />
                  </figure>
                  <h4>{Subtitle}</h4>
                  <h3>{Title}</h3>
                  <p>{Content}</p>
                  <div className="featured-post__item--more">
                    <a href="#">{translate("t.read_more")}</a>
                  </div>
                </article>
              </Link>
            ))}
          </div>
        </div>
      </section>
  )
}
  
export default withLocalize(InsightFeaturedPost)