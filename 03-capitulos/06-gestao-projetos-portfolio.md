# Capítulo 6 — Gestão de Projetos & Portfólio

---

## Resumo

Este capítulo aborda a gestão de projetos e portfólio como ponte entre estratégia e execução, integrando PMBOK 7ª ed., metodologias ágeis/híbridas (Scrum, Kanban, SAFe), PMO estratégico, PPM (Project Portfolio Management) e gestão de riscos em projetos. Dados Brasil 2024: taxa sucesso projetos 35% (PMI Pulse), 60% organizações usam híbrido (Digital.ai), investimento médio PPM tools R$ 1.200/FTE (Gartner). Cases: Weg (PMO corporativo, stage-gate industrial, Capex portfolio), Magazine Luiza (Squads, OKR, discovery/delivery, feature teams), Petrobras (megaprojetos, governança, lições aprendidas). Quatro artefatos: Matriz Híbrida Waterfall×Ágil×Híbrido, Portfolio Kanban (Épicos→Features→Stories), Dashboard PMO Executivo, Curva Maturidade PPM (PMI OPM3).

**Palavras-chave:** gestão de projetos, PMBOK, ágil, Scrum, Kanban, SAFe, PMO, PPM, portfólio, riscos, híbrido, Brasil.

---

## 1. Introdução

Projetos são **veículos de entrega da estratégia**. No Brasil 2024: 65% projetos falham parcial/totalmente (PMI Pulse), causas topo — escopo mal definido, patrocínio fraco, recursos insuficientes, comunicação deficiente. Organizações que adotam **PPM disciplinado + híbrido adequado + PMO estratégico** entregam 2,5× mais valor por real investido (PMI 2024). O desafio: **escolher abordagem certa por contexto** (regulatório → waterfall; incerteza alta → ágil; complexo regulado + inovação → híbrido).

---

## 2. Fundamentação Teórica

### 2.1 Fundamentos & PMBOK 7ª Edição
**PMI PMBOK 7ª ed. (2021):** 12 princípios (stewardship, team, stakeholders, value, systems thinking, leadership, tailoring, quality, complexity, risk, adaptability, change) + 8 domínios desempenho (stakeholder, team, development approach, planning, project work, delivery, measurement, uncertainty). **Kerzner (Project Management):** metodologia, cultura, governança. **Meredith & Mantel:** seleção, planejamento, execução, controle, encerramento.

### 2.2 Metodologias Ágeis & Híbridas
**Agile Manifesto (2001):** indivíduos/interações > processos/ferramentas; software funcionando > documentação; colaboração cliente > negociação contrato; responder mudança > seguir plano. **Scrum (Schwaber & Sutherland, 2020):** 3 papéis (PO, SM, Dev Team), 5 eventos (Sprint, Planning, Daily, Review, Retrospective), 3 artefatos (Product Backlog, Sprint Backlog, Increment). **Kanban (Anderson, 2010):** visualizar, limitar WIP, gerenciar fluxo, políticas explícitas, feedback loops, melhoria colaborativa. **SAFe (Leffingwell, 2023):** 4 níveis (Essential, Large Solution, Portfolio, Full) — para escala enterprise.

### 2.3 PMO, Governança & OPM3
**Hobbs & Aubry (2007):** PMO tipos — suporte, controle, diretivo. **Kerzner (PMO):** maturidade — projeto, programa, portfólio, enterprise. **PMI OPM3 (Organizational Project Management Maturity Model):** 3 dimensões — conhecimento, avaliação, melhoria; 4 estágios (padronizar, mensurar, controlar, melhorar continuamente).

### 2.4 Gestão de Portfólio de Projetos (PPM)
**Cooper, Edgett & Kleinschmidt:** governança portfólio — alinhamento estratégico, balanceamento, maximização valor. **Morris & Pinto:** seleção projetos (scoring, NPV, strategic buckets), priorização, resource management, benefícios realization. **Benefits Realization Management (PMI 2023):** identificar → planejar → entregar → sustentar → medir benefícios.

### 2.5 Riscos em Projetos & Entrega Híbrida
**PMI Practice Standard for Project Risk Management:** identificar → avaliar qualitativo/quantitativo → planejar respostas → implementar → monitorar. **Hillson:** ameaças + oportunidades. **Híbrido (PMI Pulse 2024):** 60% organizações usam híbrido; critérios escolha — certeza requisito, regulatório, time-to-market, complexidade técnica, stakeholder alignment.

---

## 3. Metodologia / Abordagem

- **Survey:** PMI Pulse of the Profession 2023/2024, Digital.ai State of Agile 2024, VersionOne State of Agile 2024, Gartner PPM Magic Quadrant 2024.
- **Cases:** análise documentos públicos (relatórios anuais, earnings calls, case studies PMI/Scrum.org).
- **Modelagem:** Matriz decisão híbrido (critérios ponderados), Portfolio Kanban (WIP limits, cadências, métricas flow), Monte Carlo schedule risk (Pertmaster/@Risk).
- **Ferramentas:** Jira/Azure DevOps (ágil), MS Project/Primavera (waterfall), Planview/Clarity/ServiceNow (PPM), Power BI (dashboards).

---

## 4. Análise & Argumentação

### 4.1 Figura 1 — Matriz Híbrida: Critérios de Escolha Waterfall × Ágil × Híbrido

```
┌─────────────────────┬──────────────────┬──────────────────┬──────────────────┐
│     CRITÉRIO        │    WATERFALL     │      ÁGIL        │     HÍBRIDO      │
├─────────────────────┼──────────────────┼──────────────────┼──────────────────┤
│ Certeza Requisitos  │ Alta (90%+)      │ Baixa (<50%)     │ Média (50-90%)   │
│ Regulatório/Compl.  │ Sim (rigoroso)   │ Não / Leve       │ Sim (parcial)    │
│ Time-to-Market      │ Flexível (>12m)  │ Crítico (<6m)    │ Importante (6-12m)│
│ Complexidade Técn.  │ Alta (conhecida) │ Média (descoberta)│ Alta (desconhecida)│
│ Stakeholders        │ Poucos, fixos    │ Muitos, mudam    │ Diversos         │
│ Orçamento           │ Fixo (Capex)     │ Flexível (Opex)  │ Faseado          │
│ Entregáveis         │ Documentação     │ Software/Produto │ Mistos           │
│ Métricas Sucesso    │ Prazo/Custo/Escopo│ Valor/Resultado │ Valor + Compliance│
│ Exemplos Brasil     │ Infra (PPI),     │ Fintech,         │ Bancos (core +   │
│                     │ Construção,      │ E-commerce,      │  digital),       │
│                     │ Petróleo/Gás     │ Startups, Mktg   │ Ind. Farmacêut.  │
└─────────────────────┴──────────────────┴──────────────────┴──────────────────┘
```
*Peso sugerido decisão: Requisitos 25%, Regulatório 20%, TTM 20%, Complexidade 15%, Stakeholders 10%, Orçamento 10%. Score >70 → Waterfall; <40 → Ágil; 40-70 → Híbrido.*

### 4.2 Figura 2 — Portfolio Kanban (Épicos → Features → Stories) — Magalu Modelo

```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                        PORTFOLIO KANBAN — MAGALU (Q1'25)                            │
├──────────────┬──────────────┬──────────────┬──────────────┬──────────────┬──────────┤
│  FUNIL       │  IDEAÇÃO     │  DESCOBERTA  │  ENTREGA     │  VALIDAÇÃO   │  PRONTO  │
│  (WIP Lim)   │  (∞)         │  (12)        │  (8/squad)   │  (6)         │  (∞)     │
├──────────────┼──────────────┼──────────────┼──────────────┼──────────────┼──────────┤
│  ÉPICOS      │  ████████    │  ████        │  ██          │  █           │  ██████  │
│  (Iniciativa │  24 épicos   │  8 ativos    │  3 em exec.  │  2 valid.    │  15      │
│   Estratég.) │  no backlog  │  discovery   │  (Squad A,   │  (Beta)      │  conclu. │
│              │              │              │   B, C)      │              │          │
├──────────────┼──────────────┼──────────────┼──────────────┼──────────────┼──────────┤
│  FEATURES    │              │  ████████    │  ████████    │  ████        │  ████████│
│  (Capacidade │              │  32 features │  18 em dev   │  12 homolog  │  85      │
│   Negócio)   │              │  prontas     │  (6/squad×3) │  (UAT)       │  done    │
├──────────────┼──────────────┼──────────────┼──────────────┼──────────────┼──────────┤
│  STORIES     │              │              │  ████████████│  ██████      │  ████████████████│
│  (Técnicas)  │              │              │  156 stories │  48 test     │  1.240   │
│              │              │              │  (52/squad)  │  (QA)        │  done    │
├──────────────┼──────────────┼──────────────┼──────────────┼──────────────┼──────────┤
│  MÉTRICAS    │  Lead Time   │  Lead Time   │  Cycle Time  │  Throughput  │  Flow    │
│  FLOW        │  Idea→Disc:  │  Disc→Dev:   │  Dev: 8d     │  42 stories/ │  Efficiency│
│              │  45d         │  12d         │  Test: 3d    │  sprint      │  68%     │
│              │              │              │  Total: 14d  │              │          │
└──────────────┴──────────────┴──────────────┴──────────────┴──────────────┴──────────┘
```
*Cadências: PI Planning (trimestral, SAFe-inspired), Sprint Planning (2 semanas), Daily (15min), Sprint Review/Retro. Métricas: Lead Time, Cycle Time, Throughput, WIP Aging, Flow Efficiency, Predictability (Say/Do Ratio).*

### 4.3 Figura 3 — Dashboard PMO Executivo (Weg — Capex Portfolio 2024)

```
┌────────────────────────────────────────────────────────────────────────────────────┐
│                        PMO EXECUTIVO — WEG CAPEX PORTFOLIO 2024                    │
├──────────────────┬──────────────────┬──────────────────┬──────────────────────────┤
│  PROJETOS        │  SAÚDE (Health)  │  RECURSOS        │  BENEFÍCIOS REALIZADOS   │
├──────────────────┼──────────────────┼──────────────────┼──────────────────────────┤
│  Total ativos    │  🟢 Verde: 68%   │  FTE Alocados    │  NPV Acumulado: R$ 2,4 bi│
│  47 projetos     │  🟡 Amarelo: 22% │  1.240 FTE       │  IRR Médio: 22%          │
│  Capex Total     │  🔴 Vermelho: 10%│  CapEx Executado │  Payback Médio: 3,2 anos │
│  R$ 3,8 bi       │                  │  78% (YTD)       │  Receita Incremental:    │
│                  │  Critérios:      │                  │  R$ 1,8 bi (2024)        │
│  Por Fase:       │  Prazo ±10%      │  Por Tipo:       │  CO₂e Evitado: 45 kt     │
│  Ideação: 5      │  Custo ±10%      │  Expansão: 45%   │  Empregos Diretos: 1.200 │
│  Planejamento: 8 │  Escopo OK       │  Sustentação: 30%│                          │
│  Execução: 22    │  Riscos Control. │  Conformidade: 15%│                         │
│  Comissionamento:7│  Benefícios OK   │  Inovação: 10%   │                         │
│  Encerramento: 5 │                  │                  │                         │
├──────────────────┼──────────────────┼──────────────────┼──────────────────────────┤
│  TOP 3 RISCOS    │  AÇÕES MITIGAÇÃO │  DECISÕES PEND.  │  PRÓXIMOS MARCOS       │
├──────────────────┼──────────────────┼──────────────────┼──────────────────────────┤
│  1. Atraso       │  Fornecedor      │  Aprovação Capex │  • Fábrica México        │
│     equipamento  │     alternativo  │     Fase 3 (R$   │   Comissionamento Q2'25  │
│     importado    │     + buffer     │     420M)        │  • Linha W22 México Q3'25│
│  2. Cambial      │  Hedge 85%       │  Priorização     │  • Digital Twin Jaraguá  │
│     (USD/BRL)    │     exposure     │     Projetos     │   Go-Live Q4'25          │
│  3. Mão de obra  │  Treinamento     │     Inovação     │  • Certificação ISO      │
│     especializada│     interno +    │     (R$ 180M)    │     50001 Q1'25          │
│     comission.   │     parceria SENAI│                 │                          │
└──────────────────┴──────────────────┴──────────────────┴──────────────────────────┘
```
*Fonte: Weg Relatórios 2023–2024, PMO case studies PMI 2024. Health = semáforo integrado (prazo, custo, escopo, risco, benefícios).*

### 4.4 Figura 4 — Curva de Maturidade PPM (PMI OPM3) + Posicionamento Cases

```
NÍVEL 5  OTIMIZANDO         │  Melhoria contínua, preditiva, valor max    │  Weg (parcial), Itaú (parcial)
       ▲                     │  ─────────────────────────────────────────
NÍVEL 4  GERENCIADO          │  Métricas, controle, benefícios tracked   │  Magalu, Bradesco, Vale
       ▲                     │  ─────────────────────────────────────────
NÍVEL 3  DEFINIDO            │  Processos padronizados, PMO ativo        │  Maioria large caps (55%)
       ▲                     │  ─────────────────────────────────────────
NÍVEL 2  GERENCIÁVEL         │  Projetos isolados, algum método          │  Médio porte (30%)
       ▲                     │  ─────────────────────────────────────────
NÍVEL 1  INICIAL             │  Ad-hoc, heróico, sem padronização        │  15% empresas Brasil
       └─────────────────────┴─────────────────────────────────────────
               2018    2020    2022    2024    2026    2028
```
*Brasil 2024 (PMI/IBGC): N1 15%, N2 30%, N3 40%, N4 12%, N5 3%. Meta 2026: N1 0%, N2 15%, N3 40%, N4 35%, N5 10%.*

---

## 5. Conclusão

Gestão de projetos & portfólio de excelência requer **três disciplinas**:
1. **Tailoring inteligente** — escolher waterfall/ágil/híbrido por critérios objetivos (não moda).
2. **PMO estratégico** — não "polícia de prazo", mas *value delivery office* com benefícios tracking.
3. **PPM como alocação de capital** — scoring NPV/estrategia/risco, resource leveling, kill decisions rápidas.

**Agenda pesquisa:** (a) Híbrido em megaprojetos infraestrutura (PPI) — governança adaptativa; (b) IA em PPM — priorização preditiva, resource forecasting, risk early warning; (c) Benefits realization gap — por que 60% benefícios prometidos não se materializam (PMI 2024).

---

## 6. Referências (ABNT)

ANDERSON, D. J. *Kanban: Successful Evolutionary Change for Your Technology Business*. Sequim: Blue Hole Press, 2010.

COOPER, R. G.; EDGETT, S. J.; KLEINSCHMIDT, E. J. *Portfolio Management for New Products*. 2. ed. Reading: Perseus, 2001.

HOBBS, B.; AUBRY, M. A multi-phase research program investigating project management offices. *Project Management Journal*, v. 38, n. 1, p. 74–86, 2007.

KERZNER, H. *Project Management: A Systems Approach to Planning, Scheduling, and Controlling*. 13. ed. Hoboken: Wiley, 2022.

LEFFINGWELL, D. *Scaled Agile Framework (SAFe) 6.0*. Boulder: Scaled Agile, 2023.

MEREDITH, J. R.; MANTEL, S. J. *Project Management: A Managerial Approach*. 10. ed. Hoboken: Wiley, 2019.

MORRIS, P. W. G.; PINTO, J. K. *The Wiley Guide to Project, Program, and Portfolio Portfolio Management*. Hoboken: Wiley, 2011.

PMI — PROJECT MANAGEMENT INSTITUTE. *A Guide to the Project Management Body of Knowledge (PMBOK Guide)*. 7. ed. Newtown Square: PMI, 2021.

PMI. *Pulse of the Profession 2024*. Newtown Square: PMI, 2024.

PMI. *The Standard for Project Portfolio Management*. 4. ed. Newtown Square: PMI, 2023.

PMI. *Benefits Realization Management: A Practice Guide*. Newtown Square: PMI, 2023.

SCHWABER, K.; SUTHERLAND, J. *The Scrum Guide*. Scrum.org, 2020.

---

**Fontes de Dados (2024):**
- DIGITAL.AI. *State of Agile Report 2024*. Waltham: Digital.ai, 2024.
- GARTNER. *Magic Quadrant for Project and Portfolio Management 2024*. Stamford: Gartner, 2024.
- PMI. *Pulse of the Profession 2024*. Newtown Square: PMI, 2024.
- VERSIONONE. *State of Agile Report 2024*. Atlanta: VersionOne, 2024.
- WEG S.A. *Relatório Anual 2024*, *Relatório Integrado 2024*. Jaraguá do Sul, 2024.