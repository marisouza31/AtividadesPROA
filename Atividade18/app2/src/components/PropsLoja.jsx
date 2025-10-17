import React from "react";
import styles from "../styles/PropsLoja.module.css";
import lojaImg from "../assets/loja.jpg";

const PropsLoja = ({ title, text }) => {
  return (
    <section className={styles.secaoLoja}>
      <div className={styles.caixaEsquerda}>
        <h1>{title}</h1>
        <p>{text}</p>
      </div>
      <div className={styles.caixaDireita}>
        <img src={lojaImg} alt="instrumentos" />
      </div>
    </section>
  );
};

export default PropsLoja;
