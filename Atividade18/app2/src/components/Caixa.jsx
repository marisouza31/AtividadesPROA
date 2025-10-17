import React from "react";
import styles from "../styles/Caixa.module.css";

const Caixa = ({ imgSrc, text, price }) => {
  return (
    <div className={styles.divBranca}>
      {imgSrc && <img src={imgSrc} alt="produto" />}
      {text && <p>{text}</p>}
      {price && <p className={styles.preco}>{price}</p>}
    </div>
  );
};

export default Caixa;
