# Capítulo 3 — Operações & Cadeia de Suprimentos

---

## Resumo

Este capítulo aborda a gestão de operações e cadeia de suprimentos como motor de competitividade, integrando fundamentos clássicos (Lean/TPS, Seis Sigma, Teoria das Restrições) com imperativos contemporâneos: resiliência pós-COVID, digitalização (Indústria 4.0, gêmeos digitais, control towers), sustentabilidade (Scope 3, economia circular) e servitização. Dados Brasil 2024: custo logístico 13,8% do PIB (ILOS), estoque médio indústria 42 dias (CNI), modal rodoviário 65% (ANTT). Cases: Weg (manufatura enxuta, verticalização, fornecedores desenvolvidos), Magazine Luiza (logística última milha, cross-docking, marketplace fulfillment), Ambev (cadeia cervejeira, agricultura contratada, logística reversa 98% embalagens). Quatro artefatos: VSM Simplificado (Weg), Matriz Kraljic Adaptada Risco×Impacto, Dashboard Resiliência Cadeia (visibilidade tiers 1–3), Custo Total Logístico % Receita Benchmark.

**Palavras-chave:** operações, lean, seis sigma, cadeia de suprimentos, resiliência, indústria 4.0, gêmeo digital, logística, sustentabilidade, Brasil.

---

## 1. Introdução

Operações deixaram de ser "custo necessário" para serem **fonte de vantagem competitiva**. Empresas brasileiras enfrentam tríplice desafio: (1) **infraestrutura deficitária** — rodovias 65% carga, ferrovias 21%, cabotagem 11% (ANTT 2024); (2) **custo Brasil** — logística 13,8% PIB vs. 8% EUA, 9% Europa (ILOS 2024); (3) **volatilidade de demanda** — Sondagem CNI out/2024: 62% indústrias citam "incerteza demanda" como principal obstáculo. A resposta está em **excelência operacional lean + resiliência por design + digitalização orientada a valor**.

---

## 2. Fundamentação Teórica

### 2.1 Fundamentos de Gestão de Operações
**Slack, Brandon-Jones & Johnston (Operations Management, 9ª ed.):** 4Vs (Volume, Variedade, Variação, Visibilidade) definem posicionamento operacional. **Matriz Produto-Processo** (Hayes & Wheelwright, 1979): job shop → batch → line → continuous. **Teoria das Restrições (Goldratt, 1984):** identificação e elevação do gargalo (drum-buffer-rope). **Design de processo:** layout por produto vs. layout por processo vs. celular.

### 2.2 Lean / Toyota Production System
**Ohno (1988):** 7 desperdícios (muda) — superprodução, espera, transporte, processamento excessivo, estoque, movimento, defeitos. **Womack & Jones (1996, Lean Thinking):** 5 princípios — valor, fluxo de valor, fluxo contínuo, puxar, perfeição. **Liker (2004, The Toyota Way):** 14 princípios (filosofia de longo prazo, processo pull, nivelamento heijunka, jidoka, padronização, gestão visual, líder-professor, respeito pessoas). **Spear & Bowen (1999, HBR):** DNA do TPS = especificação do trabalho, conexões cliente-fornecedor, caminhos simples, melhoria pelo método científico.

### 2.3 Seis Sigma & Qualidade de Processos
**DMAIC:** Define → Measure → Analyze → Improve → Control. **Papéis:** Champion, Master Black Belt, Black Belt, Green Belt, Yellow Belt. **Ferramentas:** SIPOC, VOC/CTQ, MSA, teste de hipóteses, DOE, SPC, FMEA. **Lean Seis Sigma:** integração speed (lean) + quality (six sigma). **Pyzdek & Keller (Handbook):** implementação enterprise.

### 2.4 Cadeia de Suprimentos: Design, Resiliência & Digital
**Chopra & Meindl (SCM, 7ª ed.):** drivers — instalações, estoque, transporte, informação, sourcing, pricing. **Fisher (1997, HBR):** match produto (funcional vs. inovador) × cadeia (eficiente vs. responsiva). **Lee (2004, HBR):** Triple-A Supply Chain — Agilidade, Adaptabilidade, Alinhamento. **Resiliência (2020+):** visibilidade multi-tier, estoque estratégico, fornecimento dual/multi-source, near-shoring/friend-shoring, control towers, gêmeos digitais. **Digital Supply Networks (Deloitte 2024):** connected, intelligent, scalable, autonomous.

### 2.5 ERP, APS & Operações 4.0
**Davenport (1998, HBR):** ERP como backbone transacional. **Indústria 4.0:** CPS (cyber-physical systems), IoT industrial, big data analytics, cloud manufacturing, manutenção preditiva, gêmeo digital, manufatura aditiva. **APS (Advanced Planning & Scheduling):** finite capacity, otimização matemática, what-if scenarios. **Maturity Model (Acatech/VDI 2020):** Níveis 1–4 (computerização → conectividade → visibilidade → previsibilidade → adaptabilidade).

### 2.6 Sustentabilidade na Cadeia (ESG Supply Chain)
**Scope 3 (GHG Protocol):** 15 categorias upstream/downstream. **Due diligence fornecedores (OECD, UN Guiding Principles):** direitos humanos, trabalho, meio ambiente, anticorrupção. **Economia circular (Ellen MacArthur):** design para circularidade, reverse logistics, product-as-a-service. **CDP Supply Chain 2024:** 74% emissões corporativas em Scope 3; apenas 41% engajam fornecedores.

---

## 3. Metodologia / Abordagem

- **Benchmarking quantitativo:** ILOS Custo Logístico Brasil 2024, CNI Sondagem Industrial, ANTT/ANTAQ modais, ABILOG/ABRALOG Panorama Logístico.
- **Cases:** análise VSM (Weg), fulfillment network (Magalu), reverse logistics (Ambev) — dados públicos + relatórios anuais.
- **Modelagem resiliência:** simulação Monte Carlo disrupção (fornecedor único, porto, greve), métricas TTR (Time to Recover), TTS (Time to Survive).
- **Ferramentas:** AnyLogic/Simul8 (simulação), Power BI (dashboards), Python (otimização rede), Minitab (Seis Sigma).

---

## 4. Análise & Argumentação

### 4.1 Figura 1 — Value Stream Map Simplificado (Weg — Linha Motores W22)

```
FORNECEDOR          WEG — FÁBRICA JARAGUÁ DO SUL          CLIENTE
  │                      │                                 │
  ▼                      ▼                                 ▼
[Recebimento]──2h──►[Estoque RM 3d]──1h──►[Usinagem]──4h──►[Montagem]──3h──►[Teste]──1h──►[Expedição]──1d
  │                      │              │           │          │          │           │
  │                  ▲   │              │           │          │          │           │
  │                  │   │           ▲  │      ▲   │       ▲  │      ▲   │       ▲  │
  │                  │   │           │  │      │   │       │  │      │   │       │  │
  ▼                  │   ▼           │  ▼      │   ▼       │  ▼      │   ▼       │  ▼
[Inspeção          [Kanban        [Célula      [Poka-yoke  [Célula    [Teste     [Cross-dock
 Entrada 100%]     Fornecedor]   Usinagem]    Montagem]   Montagem]  Funcional]  Direto]
  │                  │              │           │          │          │           │
  ▼                  ▼              ▼           ▼          ▼          ▼           ▼
Lead Time Total: 18,5 dias (Valor Agregado: 14,2h = 3,2%) 
% Value-Added Time: 3,2%  |  Estoque Total: 32 dias  |  OEE: 87%  |  PPM: 45
Gargalo Identificado: Usinagem (setup 45min) → Ação: SMED → Setup 12min → Capacidade +28%
```

*Fonte: Weg Relatórios 2020–2024, visitas técnicas publicadas, elaboração própria. VSM estado atual → estado futuro (kaizen).*

### 4.2 Figura 2 — Matriz Kraljic Adaptada: Risco × Impacto Fornecedores (Magalu 2024)

```
ALTO IMPACTO
  ▲
  │  ESTRATÉGICOS (Gerir parceria)        GARGALOS (Segurança supply)
  │  • Chips/SoC (MediaTek, Qualcomm)     • Embalagens sustentáveis
  │  • Painéis display (BOE, CSOT)        • Logística última milha (própria)
  │  • Baterias (CATL, BYD)               • Centros distribuição (terreno)
  │                                       • 
  │  ┌─────────────────────────────────────────────────────────┐
  │  │  ALAVANCAGEM (Otimizar custo)      ROTINOS (Eficiência) │
  │  │  • Acessórios (cases, cabos)       • Material escritório │
  │  │  • Embalagens padrão               • Serviços gerais     │
  │  │  • Frete spot                      • MRO (manutenção)    │
  │  └─────────────────────────────────────────────────────────┘
  │
  └──────────────────────────────────────────────────────► ALTO RISCO
       BAIXO IMPACTO                                    (Concentração, Substituição, Geopolítica)
```

*Quadrante superior direito = foco gestão: contratos longos, co-desenvolvimento, dual sourcing, estoque segurança, monitoramento ESG contínuo (EcoVadis/CDP).*

### 4.3 Figura 3 — Dashboard Resiliência Cadeia (Visibilidade Tiers 1–3)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│  RESILIÊNCIA CADEIA SUPRIMENTOS — WEG / MAGALU / AMBEV (Consolidado 2024)   │
├──────────────┬──────────────┬──────────────┬──────────────┬────────────────┤
│   MÉTRICA    │   WEG        │  MAGALU      │   AMBEV      │   BENCHMARK    │
├──────────────┼──────────────┼──────────────┼──────────────┼────────────────┤
│ Visibilidade │  Tier 1: 100%│  Tier 1: 100%│  Tier 1: 100%│  Tier 1: 95%+  │
│ Fornecedores │  Tier 2: 78% │  Tier 2: 65% │  Tier 2: 82% │  Tier 2: 70%   │
│              │  Tier 3: 35% │  Tier 3: 22% │  Tier 3: 41% │  Tier 3: 40%   │
├──────────────┼──────────────┼──────────────┼──────────────┼────────────────┤
│ Fornec. Dual │  89% críticos│  72% críticos│  94% agro    │  >80% críticos │
│ / Multi-source│             │             │             │               │
├──────────────┼──────────────┼──────────────┼──────────────┼────────────────┤
│ Estoque Seg. │  15–21 dias  │  3–5 dias    │  30–45 dias  │  Setor-specific│
│ (dias consumo)│  (chips)    │  (eletrôn.)  │  (cevada)    │               │
├──────────────┼──────────────┼──────────────┼──────────────┼────────────────┤
│ TTR (dias)   │  7           │  3           │  14          │  <14           │
│ Time to Recover│           │             │             │               │
├──────────────┼──────────────┼──────────────┼──────────────┼────────────────┤
│ ESG Score    │  EcoVadis    │  EcoVadis    │  EcoVadis    │  >60 (Top 25%) │
│ Fornec. Médio│  68 (Platinum)│  58 (Gold)  │  71 (Platinum)│              │
├──────────────┼──────────────┼──────────────┼──────────────┼────────────────┤
│ Digital Twin │  Sim (fáb.   │  Sim (CDs)  │  Parcial     │  40% large caps│
│ Coverage     │  Jaraguá)    │             │  (logística) │               │
└──────────────┴──────────────┴──────────────┴──────────────┴────────────────┘
```

*Fonte: Relatórios anuais 2024, CDP Supply Chain 2024, EcoVadis 2024, Gartner CSC 2024. TTR = tempo para recuperar nível serviço 95% pós-disrupção severa.*

### 4.4 Figura 4 — Custo Total Logístico % Receita (Benchmark Brasil 2024)

| Setor | Transporte | Estoque | Armazenagem | Admin/Outros | **Total Logístico % Receita** | ILOS 2024 Média |
|-------|------------|---------|-------------|--------------|-------------------------------|-----------------|
| Varejo Alimentar | 4,2% | 1,8% | 1,1% | 0,6% | **7,7%** | 8,1% |
| Varejo Não-Alimentar (Magalu) | 5,1% | 1,2% | 0,9% | 0,7% | **7,9%** | 8,5% |
| Indústria Automotiva | 3,8% | 2,4% | 1,0% | 0,5% | **7,7%** | 8,0% |
| Indústria Química | 4,5% | 3,1% | 1,3% | 0,7% | **9,6%** | 10,2% |
| Bens de Consumo (Ambev) | 4,0% | 1,5% | 0,8% | 0,5% | **6,8%** | 7,3% |
| E-commerce Puro | 8,2% | 2,1% | 2,5% | 1,2% | **14,0%** | 13,5% |
| **Média Ponderada Brasil** | **4,8%** | **1,9%** | **1,1%** | **0,7%** | **8,5%** | **—** |

*Fonte: ILOS Custo Logístico Brasil 2024 (n=450 empresas), CNI, relatórios anuais. Custo logístico total Brasil = 13,8% PIB (R$ 1,4 tri). Oportunidade: redução 1,5–2,5 pp via otimização modal, cross-docking, IA roteirização, galpões automatizados.*

### 4.5 Tabela 1 — Modal Split Carga Brasil 2024 (ANTT/ANTAQ)

| Modal | Participação % TKU | Custo R$/tkm | Emissão gCO₂/tkm | Tempo Médio (São Paulo→Manaus) |
|-------|-------------------|--------------|------------------|--------------------------------|
| Rodoviário | 65% | 0,42 | 95 | 5–7 dias |
| Ferroviário | 21% | 0,18 | 22 | 10–14 dias |
| Cabotagem | 11% | 0,12 | 18 | 14–21 dias |
| Dutoviário | 3% | 0,08 | 8 | Contínuo |
| Aéreo | <0,5% | 3,20 | 500 | 1–2 dias |

*Oportunidade: migração 10 pp rodoviário→ferroviário/cabotagem = economia ~R$ 45 bi/ano + –28 MtCO₂e.*

---

## 5. Conclusão

Excelência operacional em 2025 exige **três pilares integrados**:
1. **Lean DNA** — cultura de eliminação desperdício, padronização, jidoka, respeito às pessoas (não "ferramentas soltas").
2. **Resiliência por design** — visibilidade Tier 3, dual sourcing crítico, estoque estratégico, gêmeo digital para simulação.
3. **Digitalização com ROI** — APS/Control Tower para decisões, manutenção preditiva (OEE +15–25%), roteirização IA (custo log –8–12%).

**Agenda pesquisa:** (a) Quantificação do "custo Brasil logístico" por setor com dados granulares (NF-e, CT-e); (b) Economia circular na cadeia — métricas circularidade vs. performance financeira; (c) Gêmeo digital end-to-end — maturidade, ROI, governança dados.

---

## 6. Referências (ABNT)

CHOPPRA, S.; MEINDL, P. *Supply Chain Management: Strategy, Planning, and Operation*. 7. ed. Boston: Pearson, 2016.

CHRISTOPHER, M. *Logistics and Supply Chain Management*. 5. ed. London: Pearson, 2016.

DAVENPORT, T. H. Putting the enterprise into the enterprise system. *Harvard Business Review*, v. 76, n. 4, p. 121–131, 1998.

ELLEN MACARTHUR FOUNDATION. *Towards the Circular Economy*. Cowes: EMF, 2013.

FISHER, M. L. What is the right supply chain for your product? *Harvard Business Review*, v. 75, n. 2, p. 105–116, 1997.

GOLDRATT, E. M. *The Goal: A Process of Ongoing Improvement*. 3. ed. Great Barrington: North River Press, 2004.

HAYES, R. H.; WHEELWRIGHT, S. C. Link manufacturing process and product life cycles. *Harvard Business Review*, v. 57, n. 2, p. 133–140, 1979.

ILOS. *Custo Logístico Brasil 2024*. São Paulo: ILOS, 2024.

LEE, H. L. The triple-A supply chain. *Harvard Business Review*, v. 82, n. 10, p. 102–113, 2004.

LIKER, J. K. *The Toyota Way: 14 Management Principles from the World's Greatest Manufacturer*. New York: McGraw-Hill, 2004.

OHNO, T. *Toyota Production System: Beyond Large-Scale Production*. Portland: Productivity Press, 1988.

PYZDEK, T.; KELLER, P. *The Six Sigma Handbook*. 5. ed. New York: McGraw-Hill, 2023.

SLACK, N.; BRANDON-JONES, A.; JOHNSTON, R. *Operations Management*. 9. ed. London: Pearson, 2022.

SPEAR, S.; BOWEN, H. K. Decoding the DNA of the Toyota Production System. *Harvard Business Review*, v. 77, n. 5, p. 96–106, 1999.

WOMACK, J. P.; JONES, D. T. *Lean Thinking: Banish Waste and Create Wealth in Your Corporation*. 2. ed. New York: Free Press, 1996.

WOMACK, J. P.; JONES, D. T.; ROOS, D. *The Machine That Changed the World*. New York: Rawson Associates, 1990.

---

**Fontes de Dados (2024):**
- ANTT. *Anuário Estatístico Rodoviário 2024*. Brasília: ANTT, 2024.
- ANTAQ. *Anuário Estatístico Aquaviário 2024*. Brasília: ANTAQ, 2024.
- CNI. *Sondagem Industrial*, *Panorama da Indústria 2024*. Brasília: CNI, 2024.
- ABILOG/ABRALOG. *Panorama Logístico Brasileiro 2024*. São Paulo: ABILOG, 2024.
- AMBEV. *Relatório Anual 2024*, *Relatório de Sustentabilidade 2024*. São Paulo: Ambev, 2024.
- MAGAZINE LUIZA. *Relatório Anual 2023*, *Relatório Integrado 2024*. São Paulo: Magalu, 2024.
- WEG S.A. *Relatório Anual 2024*, *Relatório Integrado 2024*. Jaraguá do Sul: Weg, 2024.