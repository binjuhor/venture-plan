import React from "react";
import { getFileSource } from "../../../utils/functions";

const AboutBanner = ({
  Title,
  Subtitle,
  Description,
  BannerDesktop,
  BannerMobile,
}) => {
  return (
    <section className="page-banner line-top">
      <figure>
        {!!BannerDesktop && (
          <img className="image-pc" src={getFileSource(BannerDesktop)} alt="" />
        )}
        {!!BannerMobile && (
          <img className="image-sp" src={getFileSource(BannerMobile)} alt="" />
        )}
      </figure>
      <div className="container">
        <div className="page-banner__inner">
          <p>{Subtitle}</p>
          <h1>{Title}</h1>
          <p>{Description}</p>
        </div>
      </div>
    </section>
  );
};

export default AboutBanner;
