import React from 'react';
import styles from '../styles/SectionProdutos.module.css';
import guitarrinha from '../assets/guitarrinha.jpg';
import Caixa from './Caixa';
import PropsLoja from './PropsLoja'

const SectionProdutos = () => {
  const produtos = [
    { imgSrc: guitarrinha, text: 'Violão YAMAHA C70 11 clássico Nylon acústico natural brilhante', price: 'R$ 989,50' },
    { imgSrc: guitarrinha, text: 'Violão YAMAHA C70 11 clássico Nylon acústico natural brilhante', price: 'R$ 989,50' },
    { imgSrc: guitarrinha, text: 'Violão YAMAHA C70 11 clássico Nylon acústico natural brilhante', price: 'R$ 989,50' },
    { imgSrc: guitarrinha, text: 'Violão YAMAHA C70 11 clássico Nylon acústico natural brilhante', price: 'R$ 989,50' },
  ];

  return (
    <>
      <section className={styles.meioVermelho}>
        <PropsLoja
          title="Nossa Loja - Instrumentos Musicais"
          text="Se você é um amante da musica, está em busca de um novo instrumento musical e não abre mão da qualidade, chegou ao lugar certo! Aqui em nossa loja você encontra os melhores itens, como: teclado, piano (digital e acústico), contrabaixo, bateria, guitarra, violão, sopro e muito mais! Nossos instrumentos possuem o selo de qualidade das melhores marcas do mercado! Escolha os seus favoritos e os receba em casa com toda a comodidade que você precisa. Confira nossas opções disponíveis e tenha em mãos instrumentos de ponta!"
        />
      </section>

      <section className={styles.fundoAzul}>
        <div className={styles.containerDivs}>
          {produtos.map((p, index) => ( <Caixa key={index} imgSrc={p.imgSrc} text={p.text} price={p.price} />
          ))}
        </div>
      </section>
    </>
  );
};

export default SectionProdutos;
