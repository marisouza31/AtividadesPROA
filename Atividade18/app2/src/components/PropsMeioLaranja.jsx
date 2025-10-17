import React from "react";
import styles from "../styles/PropsMeioLaranja.module.css";

const PropsMeioLaranja = ({ title, text }) => {
  return (
    <section className={styles.secaoLoja}>
      <div className={styles.caixaEsquerda}>
        <h1>{title}</h1>
        <p>{text}</p>
      </div>
    </section>
  );
};

export default PropsMeioLaranja;
