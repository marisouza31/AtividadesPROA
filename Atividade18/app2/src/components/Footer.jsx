import React from 'react';
import styles from '../styles/Footer.module.css';
import icon1 from '../assets/whats.png'
import icon2 from '../assets/insta.png'
import icon3 from '../assets/face.png'

const Footer = () => {
  return (
    <footer className={styles.rodape}>
      
      <h1>Nossa Loja - Instrumentos Musicais</h1>
      <p>Rua Tito, 54 - Lapa</p>
      <p>São Paulo - Brasil</p>

      <div className={styles.rodapeImg}>
        <img src={icon1} alt="icon de zap" />
          <img src={icon2} alt="icon de insta" />
          <img src={icon3} alt="icon de face" />
      </div>
    </footer>
  );
};

export default Footer;
