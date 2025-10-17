import React from "react";
import styles from "../styles/PropsProdutos.module.css";
import Caixa from "./Caixa";

const PropsProdutos = ({ produtos }) => {
  return (
    <section className={styles.fundoAzul}>
      <div className={styles.containerDivs}>
        {produtos.map((p, index) => (
          <Caixa
            key={index}
            imgSrc={p.imgSrc}
            text={p.text}
            price={p.price}
          />
        ))}
      </div>
    </section>
  );
};

export default PropsProdutos;
