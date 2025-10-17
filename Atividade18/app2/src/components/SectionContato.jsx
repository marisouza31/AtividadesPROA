import React from 'react';
import styles from '../styles/SectionContato.module.css';
import icon1 from '../assets/whats.jpg';
import icon2 from '../assets/insta.png';
import icon3 from '../assets/face.png';
import Caixa from './Caixa';

const SectionContato = () => {
  return (
    <section className={styles.fundoAmarelo}>
      <div className={styles.caixaAzul}>
        <form className={styles.contato}>
          <label htmlFor="nome">Entre com seu nome:</label>
          <input type="text" id="nome" name="nome" placeholder="Digite seu nome" required />

          <label htmlFor="email">Entre com seu e-mail:</label>
          <input type="email" id="email" name="email" placeholder="Digite seu e-mail" required />

          <textarea id="mensagem" name="mensagem" rows="4" placeholder="Faça seu pedido por aqui" required></textarea>

          <button type="submit">Enviar</button>
        </form>

      </div>
      <div className={styles.caixaVerde}>
        <h1>Acesse também nossas redes sociais:</h1>
        <div className={styles.imagens}>
          <img src={icon1} alt="icon zap" />
          <img src={icon2} alt="icon instagram" />
          <img src={icon3} alt="icon de facebook" />
        </div>
      </div>
    </section>
  );
};

export default SectionContato;
