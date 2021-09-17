'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-controllers)
 * to customize this controller
 */

const stripe = require("stripe")("sk_test_UCJVezTbg9dOMEue6gdeIHMK00Hr8sYDFj")

module.exports = {
  async createPaymentIntent(ctx) {
    const paymentIntent = await stripe.paymentIntents.create({
      amount: ctx.request.body.amount * 100,
      currency: "usd"
    })

    ctx.send(paymentIntent.client_secret)
  }
};
