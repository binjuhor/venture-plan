import React from "react";
import { loadStripe } from "@stripe/stripe-js";
import { Elements } from "@stripe/react-stripe-js";
import CheckoutForm from "../components/common/checkout-form";
import Layout from '../components/layout'

const promise = loadStripe("pk_test_1rVnlc2HT4zddJIBHqu6PkmR00oyLQSofC");

export default function Test() {
  return (
      <Layout>
        <Elements stripe={promise}>
          <div className="checkout">
            <CheckoutForm />
          </div>
        </Elements>
      </Layout>
  );
}