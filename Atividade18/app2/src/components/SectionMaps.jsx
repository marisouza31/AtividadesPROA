import React from 'react';
import styles from '../styles/SectionMaps.module.css';
import PropsMeioLaranja from './PropsMeioLaranja';

const SectionMaps = () => {
  return (
    <section className={styles.meioLaranja}>
      <div className={styles.mapaContainer}>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.1229200301377!2d-46.69433512406857!3d-23.528080960371458!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef8775663b04f%3A0x923835e9005f8309!2sSenac%20Lapa%20Tito!5e0!3m2!1spt-BR!2sbr!4v1757681332390!5m2!1spt-BR!2sbr"
          allowFullScreen="" loading="lazy" referrerPolicy="no-referrer-when-downgrade" title="mapa"></iframe>
      </div>

      <div className={styles.textoContainer}>
        <PropsMeioLaranja
          title="Nossa Loja - Instrumentos Musicais"
          text="Está situada na Rua Lapa Tito, 54 - Pompeia, próximo ao teatro Cacilda Becker, em uma construção do século XIX, numa área de 500m², com uma variada gama de instrumentos, em um ambiente agradável para toda a família!"
        />
      </div>
    </section>
  );
};

export default SectionMaps;
