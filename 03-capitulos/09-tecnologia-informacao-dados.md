# Capítulo 9 — Tecnologia da Informação & Dados

---

## Resumo

Este capítulo aborda TI e dados como infraestrutura invisível que sustenta toda transação e interação, integrando SIG/MIS, estratégia digital e competitividade, governança de TI (COBIT, ITIL), Big Data/Analytics/Data-Driven, Cloud Computing, DevOps e Segurança da Informação (ISO 27001, NIST CSF 2.0, LGPD). Dados Brasil 2024: gasto TI 7,2% receita (IDC), cloud adoption 68% empresas (CGI.br), IA adoption 34% (CGI.br), LGPD sanções ANPD 1.200+ processos. Cases: Magazine Luiza (plataforma proprietária, LuizaLabs, Kubernetes, data lake, LGPD compliance), Nubank (serverless/microserviços AWS, Kafka, engenharia dados, privacy by design), Banco do Brasil/Caixa (mainframe modernization, cloud híbrida, Open Finance). Quatro artefatos: Enterprise Architecture Map (TOGAF simplificado), Data Maturity Model (Gartner/TDWI adaptado), Cloud Adoption Framework, Cyber Risk Heat Map (NIST CSF 5 funções).

**Palavras-chave:** tecnologia da informação, governança de TI, big data, analytics, cloud computing, DevOps, segurança da informação, LGPD, NIST CSF, data-driven, Brasil.

---

## 1. Introdução

TI deixou de ser "suporte" para ser **plataforma de negócio**. Brasil 2024: 92% empresas usam cloud (CGI.br), 34% adotam IA (CGI.br), 68% têm estratégia digital formal (IDC). Mas gap persiste: apenas 23% consideram-se "data-driven" (Gartner 2024), dívida técnica média 28% capex TI (McKinsey), talent gap 530k profissionais (Brasscom). Empresas que tratam **dados como ativo estratégico + arquitetura evolutiva + segurança by design** superam pares em inovação (3,2×) e margem (2,1 pp) — MIT CISR 2024.

---

## 2. Fundamentação Teórica

### 2.1 Sistemas de Informação Gerenciais (SIG/MIS)
**Laudon & Laudon (MIS, 17ª ed.):** sistemas operacionais (TPS), gerenciais (MIS), estratégicos (ESS), conhecimento (KMS). **O'Brien:** TI como vantagem competitiva. **Stair & Reynolds:** componentes — hardware, software, dados, rede, pessoas, processos.

### 2.2 TI como Vantagem Competitiva & Estratégia Digital
**Porter & Millar (1985, HBR):** "How Information Gives You Competitive Advantage" — cadeia valor, escopo, barreiras. **McFarlan & McKenney (1983):** Strategic Grid — suporte, fábrica, turno, estratégico. **Westerman, Bonnet & McAfee (2014, Leading Digital):** digital masters = digital capabilities + leadership capabilities. **Rogers (2016, Digital Transformation Playbook):** 5 domínios — clientes, competição, dados, inovação, valor. **Bharadwaj et al. (2013, MISQ):** digital business strategy. **Iansiti & Lakhani (2020, Competing in the Age of AI):** AI factory — data pipeline → algorithms → experimentation → software.

### 2.3 Governança de TI, COBIT & Alinhamento Estratégico
**Weill & Ross (2004, IT Governance):** quem decide, como decide, mecanismos (comitês, SLAs, arquitetura, processos). **ISACA COBIT 2019:** 40 objetivos governança/gerenciamento — EDM (avaliar, dirigir, monitorar) + APO/BAI/DSS/MEA. **Luftman (SAMM):** 5 níveis alinhamento — inicial, comprometido, estabelecido, melhorado, otimizado. **IBGC:** governança TI no conselho — comitê TI, métricas, riscos, investimentos.

### 2.4 Big Data, Analytics & Data-Driven Decision Making
**Davenport (2006, HBR):** "Competing on Analytics". **Provost & Fawcett (2013, Data Science for Business):** CRISP-DM, modelo preditivo, avaliação. **Mayer-Schönberger & Cukier (2013, Big Data):** 3Vs → 5Vs (volume, velocidade, variedade, veracidade, valor). **Davenport & Ronanki (2018, HBR):** AI for real world — cognitive insights, engagement, automation. **Gartner Data & Analytics Maturity Model:** N1 (descritivo) → N2 (diagnóstico) → N3 (preditivo) → N4 (prescritivo) → N5 (cognitivo/autônomo).

### 2.5 Cloud Computing, Arquitetura & DevOps
**Armbrust et al. (2010, Berkeley):** "Above the Clouds" — IaaS, PaaS, SaaS; público, privado, híbrido, multi. **Marston et al. (2011):** cloud adoption framework. **Kim, Humble & Debois (2016, DevOps Handbook):** CALMS — Culture, Automation, Lean, Measurement, Sharing. **DORA State of DevOps 2024:** 4 métricas — lead time, deployment frequency, MTTR, change failure rate. Elite performers: deploy on-demand, lead time <1h, MTTR <1h, CFR <15%.

### 2.6 Segurança da Informação, Privacidade & LGPD
**ISO/IEC 27001:2022:** SGSI — contexto, liderança, planejamento, apoio, operação, avaliação, melhoria. **NIST CSF 2.0 (2024):** 6 funções — Govern, Identify, Protect, Detect, Respond, Recover. **LGPD (Lei 13.709/2018):** princípios (finalidade, adequação, necessidade, livre acesso, qualidade, transparência, segurança, prevenção, não discriminação, responsabilização). **ANPD:** guias orientativos 2022–2024, sanções (advertência, multa 2% faturamento até R$ 50Mi). **IBM Cost of Data Breach 2024:** média global US$ 4,88M; Brasil US$ 1,85M; tempo detecção 258 dias.

---

## 3. Metodologia / Abordagem

- **Dados:** IDC Brazil ICT Spending 2024, CGI.br TIC Empresas/Domicílios 2024, ANPD Relatório Anual 2024, CERT.br Estatísticas, Gartner/IDC/Forrester forecasts, DORA State of DevOps 2024.
- **Cases:** arquitetura via tech blogs (LuizaLabs, Nubank Engineering, BB Tech), relatórios anuais, palestras públicas (QCon, TDC, AWS Summit).
- **Modelagem:** TOGAF ADM simplificado (Business → Application → Data → Technology), Data Maturity Assessment, Cloud Migration Factory (assess → migrate → modernize → optimize), Cyber Risk Quantification (FAIR model).
- **Ferramentas:** Archi (ArchiMate), Power BI/Tableau, AWS/Azure/GCP consoles, Terraform/Ansible, Wazuh/Elastic/Splunk (SIEM), OneTrust/TrustArc (LGPD).

---

## 4. Análise & Argumentação

### 4.1 Figura 1 — Enterprise Architecture Map (TOGAF Simplificado — Magalu)

```
┌────────────────────────────────────────────────────────────────────────────────────┐
│                    ENTERPRISE ARCHITECTURE — MAGAZINE LUIZA (2024)                 │
├────────────────────────────────────────────────────────────────────────────────────┤
│                                                                                     │
│  BUSINESS LAYER                                                                    │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ ┌─────────────┐  │
│  │  E-COMMERCE │ │ MARKETPLACE │ │  FINTECH    │ │  LOGÍSTICA  │ │  LOJAS      │
│  │  (B2C)      │ │  (B2B2C)    │ │  (LuizaCred)│ │  (Last Mile)│ │  FÍSICAS    │
│  └──────┬──────┘ └──────┬──────┘ └──────┬──────┘ └──────┬──────┘ └──────┬──────┘  │
│         │             │             │             │             │           │
│         └─────────────┼─────────────┼─────────────┼─────────────┘           │
│                       ▼             ▼             ▼             ▼           │
│              ┌─────────────────────────────────────────────────────────┐    │
│              │              API GATEWAY / SERVICE MESH (Kong/Istio)    │    │
│              └─────────────────────────────────────────────────────────┘    │
│                                                                             │
│  APPLICATION LAYER                                                         │
│  ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌──────────┐ │
│  │  MICRO-    │ │  EVENT-    │ │  DATA      │ │  ML/AI     │ │  LEGACY  │ │
│  │  SERVICES  │ │  DRIVEN    │ │  PLATFORM  │ │  PLATFORM  │ │  WRAPPER │ │
│  │  (Go/Java/ │ │  (Kafka/   │ │  (Snowflake│ │  (Kubeflow│ │  (Mainfr.│ │
│  │  Node.js)  │ │  Schema    │ │  + Delta   │ │  + MLflow)│ │  + API)  │ │
│  │  K8s EKS)  │ │  Registry) │ │  Lake)     │ │           │ │          │ │
│  └────────────┘ └────────────┘ └────────────┘ └────────────┘ └──────────┘ │
│                                                                             │
│  DATA LAYER                                                                 │
│  ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌──────────┐ │
│  │  CDP       │ │  DATA      │ │  FEATURE   │ │  METADATA  │ │  MASTER  │ │
│  │  (Clientes)│ │  WAREHOUSE │ │  STORE     │ │  CATALOG   │ │  DATA    │ │
│  │  360°      │ │  (Analytics)│ │  (ML)      │ │  (DataHub) │ │  (MDM)   │ │
│  └────────────┘ └────────────┘ └────────────┘ └────────────┘ └──────────┘ │
│                                                                             │
│  TECHNOLOGY LAYER                                                           │
│  ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌──────────┐ │
│  │  CLOUD     │ │  CONTAINER │ │  OBSERVA-  │ │  SECURITY  │ │  NETWORK │ │
│  │  (AWS Multi│ │  (EKS +    │ │  BILITY    │ │  (WAF,     │ │  (SD-WAN │ │
│  │  AZ + GCP) │ │  Fargate)  │ │  (Datadog, │ │  Shield,   │ │  + Transit│ │
│  │            │ │            │ │  Grafana)  │ │  GuardDuty)│ │  Gateway)│ │
│  └────────────┘ └────────────┘ └────────────┘ └────────────┘ └──────────┘ │
│                                                                             │
└────────────────────────────────────────────────────────────────────────────────────┘
```
*Princípios: API-first, Event-driven, Data mesh (domínios donos dos dados), GitOps (ArgoCD), Security by design (zero trust), Observabilidade full-stack.*

### 4.2 Figura 2 — Data Maturity Model (Gartner/TDWI Adaptado) + Posicionamento Cases

```
NÍVEL 5  COGNITIVO / AUTÔNOMO   │  IA decide/age autônomo, data fabric    │  Nubank (parcial - credit scoring)
       ▲                        │  ──────────────────────────────────────
NÍVEL 4  PRESCRITIVO            │  Recomenda ações, otimiza auto          │  Magalu (pricing, logística, recs)
       ▲                        │  ──────────────────────────────────────
NÍVEL 3  PREDITIVO              │  Forecast, churn, risk, demand          │  Magalu, Nubank, Weg, BB (maioria)
       ▲                        │  ──────────────────────────────────────
NÍVEL 2  DIAGNÓSTICO            │  Drill-down, root cause, alertas        │  Médio porte avançado (35%)
       ▲                        │  ──────────────────────────────────────
NÍVEL 1  DESCRITIVO             │  Relatórios, dashboards, KPIs           │  40% empresas Brasil (Gartner 2024)
       ▲                        │  ──────────────────────────────────────
NÍVEL 0  CAÓTICO                │  Planilhas, silos, sem governança       │  25% empresas Brasil
       └────────────────────────┴────────────────────────────────────────
               2018    2020    2022    2024    2026    2028
```
*Dimensões avaliadas: Estratégia, Governança, Arquitetura, Cultura, Talentos, Ferramentas, Processos. Brasil 2024: N0 25%, N1 40%, N2 20%, N3 12%, N4 3%, N5 <1%.*

### 4.3 Figura 3 — Cloud Adoption Framework (AWS/Azure/GCP Adaptado — Magalu + Nubank)

```
┌────────────────────────────────────────────────────────────────────────────────────┐
│                         CLOUD ADOPTION FRAMEWORK — JORNADA 2020–2025                │
├─────────────────┬─────────────────┬─────────────────┬─────────────────┬────────────┤
│   FASE          │   ESTRATÉGIA    │   MIGRAÇÃO      │   MODERNIZAÇÃO  │   OTIMIZA- │
│                 │   (Plan)        │   (Migrate)     │   (Modernize)   │   ÇÃO      │
├─────────────────┼─────────────────┼─────────────────┼─────────────────┼────────────┤
│ ATIVIDADES      │ • Business case │ • Assessment    │ • Refatorar     │ • FinOps   │
│                 │ • Cloud strategy│   (6 Rs:       │   (Monolito→    │   (Rightsiz│
│                 │ • Landing zone  │   Rehost,      │   Microserviços)│   ing, SP,  │
│                 │ • Governança    │   Replatform,  │ • Containers    │   RI)      │
│                 │ • Skills        │   Repurchase,  │ • Serverless    │ • Auto-    │
│                 │ • Security      │   Refactor,    │ • Data Lake     │   scaling  │
│                 │   baseline      │   Retire,      │ • CI/CD/GitOps  │ • Reserved │
│                 │                 │   Retain)      │ • Observability │   Instances│
├─────────────────┼─────────────────┼─────────────────┼─────────────────┼────────────┤
│ MAGALU          │ 2020–2021       │ 2021–2022       │ 2022–2023       │ 2023–2025  │
│                 │ AWS Landing     │ 1.200 apps      │ EKS + Fargate   │ Savings    │
│                 │ Zone + Control  │ migradas        │ + Lambda +      │ Plans 38%  │
│                 │ Tower           │ (70% rehost/   │ Snowflake +     │ + Compute  │
│                 │                 │ 20% replatform) │ Kafka (MSK)     │ Optimizer  │
├─────────────────┼─────────────────┼─────────────────┼─────────────────┼────────────┤
│ NUBANK          │ 2013 (Born in   │ N/A (Nativo     │ Contínua        │ FinOps     │
│                 │ Cloud AWS)      │ Cloud)          │ (K8s EKS +      │ mature:    │
│                 │                 │                 │ Fargate +       │ 95% SP/RI, │
│                 │                 │                 │ Serverless +    │ auto-scale │
│                 │                 │                 │ Kafka próprio)  │ preditivo  │
├─────────────────┼─────────────────┼─────────────────┼─────────────────┼────────────┤
│ BANCO DO BRASIL │ 2021            │ 2022–2024       │ 2024–2026       │ 2025+      │
│                 │ Híbrida (AWS +  │ Mainframe →     │ Open Finance    │ Mainframe  │
│                 │ On-prem)        │ Cloud (Refactor)│ APIs + Pix      │ offload 80%│
└─────────────────┴─────────────────┴─────────────────┴─────────────────┴────────────┘
```
*6 Rs Migração (AWS): Rehost (lift-and-shift), Replatform (lift-tinker-shift), Repurchase (drop-shop), Refactor (re-architect), Retire, Retain.*

### 4.4 Figura 4 — Cyber Risk Heat Map (NIST CSF 2.0 — 6 Funções)

```
┌────────────────────────────────────────────────────────────────────────────────────┐
│                    CYBER RISK HEAT MAP — NIST CSF 2.0 (Casos Brasil 2024)         │
├────────────┬────────────┬────────────┬────────────┬────────────┬──────────────────┤
│  FUNÇÃO    │  GOVERN    │  IDENTIFY  │  PROTECT   │  DETECT    │  RESPOND/RECOVER │
│  (GV/ID/PR/│  (GV)      │  (ID)      │  (PR)      │  (DE)      │  (RS/RC)         │
│  DE/RS/RC) │            │            │            │            │                  │
├────────────┼────────────┼────────────┼────────────┼────────────┼──────────────────┤
│  SUB-CAT.  │ GV.OC-01   │ ID.AM-01   │ PR.AA-01   │ DE.CM-01   │ RS.RP-01         │
│  CRÍTICAS  │ GV.RM-01   │ ID.RA-01   │ PR.DS-01   │ DE.AE-01   │ RS.CO-01         │
│            │ GV.SC-01   │ ID.SC-01   │ PR.IP-01   │ DE.CM-07   │ RC.RP-01         │
├────────────┼────────────┼────────────┼────────────┼────────────┼──────────────────┤
│  MAGALU    │ 🟢 95%     │ 🟢 92%     │ 🟢 90%     │ 🟡 78%     │ 🟡 80%           │
│  NUBANK    │ 🟢 98%     │ 🟢 95%     │ 🟢 93%     │ 🟢 88%     │ 🟢 85%           │
│  BANCO BR  │ 🟡 82%     │ 🟢 88%     │ 🟡 75%     │ 🟡 70%     │ 🟡 72%           │
│  MÉDIA BR  │ 🟡 65%     │ 🟡 70%     │ 🟡 60%     │ 🔴 45%     │ 🔴 40%           │
│  (Gartner) │            │            │            │            │                  │
├────────────┼────────────┼────────────┼────────────┼────────────┼──────────────────┤
│  GAPS TOP  │ Orçamento  │ Inventário │ Cripto-    │ Correlação │ Plano resposta   │
│  BRASIL    │ segurança  │ ativos TI  │ grafia     │ eventos    │ testado (tabletop│
│            │ <5% TI     │ incompleto │ dados sens.│ (SIEM/SOAR)│ exercise) <1/ano │
└────────────┴────────────┴────────────┴────────────┴────────────┴──────────────────┘
```
*🟢 >90% implementado | 🟡 70-90% | 🔴 <70%. Fonte: Gartner Security Maturity 2024, ANPD Relatórios, CERT.br, IBM Cost of Data Breach 2024. LGPD: ANPD 1.200+ processos 2024, multas R$ 42M acumuladas.*

### 4.5 Tabela 1 — Gasto TI Brasil 2024 (IDC / CGI.br)

| Categoria | Investimento (R$ bi) | % Total | Crescimento a/a | % Empresas Adotam (CGI.br) |
|-----------|---------------------|---------|-----------------|----------------------------|
| Cloud (IaaS/PaaS/SaaS) | 48,2 | 28% | +22% | 92% (SaaS), 68% (IaaS/PaaS) |
| Software (ERP, CRM, Analytics) | 42,5 | 25% | +15% | 85% |
| Hardware (Servidores, Rede, Endpoints) | 35,8 | 21% | +8% | 95% |
| Serviços (Consultoria, Integração, BPO) | 28,4 | 17% | +18% | 62% |
| Segurança da Informação | 12,1 | 7% | +28% | 78% |
| IA/ML/Analytics | 8,7 | 5% | +45% | 34% |
| **TOTAL** | **175,7** | **100%** | **+18%** | **—** |

*Gasto TI % Receita: Grande porte 7,2%, Médio 4,8%, Pequeno 3,1% (IDC 2024). Projeção 2025: R$ 202 bi (+15%).*

---

## 5. Conclusão

TI & Dados 2025 = **Plataforma nativa cloud + Data mesh + IA embarcada + Zero trust + FinOps**.
1. **Arquitetura evolutiva** — microserviços, event-driven, API-first, GitOps, observabilidade full-stack (Magalu, Nubank).
2. **Dados como produto** — data mesh (domínios donos), feature store, data contracts, governança federada (Nubank, Magalu).
3. **Segurança integrada** — shift-left (DevSecOps), zero trust, SBOM, supply chain security, LGPD by design (Nubank, Banco Central).
4. **FinOps maduro** — unit economics por feature, anomaly detection, rightsizing automático, reserved capacity (Magalu 38% savings).

**Agenda pesquisa:** (a) Drex (CBDC Brasil) — impacto arquitetura bancária; (b) IA generativa em código — produtividade, qualidade, segurança (GitHub Copilot, CodeWhisperer, Tabnine); (c) Soberania dados/nuvem — requisitos BCB, LGPD, estratégia multi-cloud.

---

## 6. Referências (ABNT)

ARMSTRONG, M. *Armstrong's Handbook of Human Resource Management Practice*. 15. ed. London: Kogan Page, 2021.

ARMSTRUST, M. et al. Above the clouds: A Berkeley view of cloud computing. *UC Berkeley Technical Report*, UCB/EECS-2010-28, 2010.

DORA — DEVOPS RESEARCH AND ASSESSMENT. *State of DevOps Report 2024*. Mountain View: DORA, 2024.

DAVENPORT, T. H. Competing on analytics. *Harvard Business Review*, v. 84, n. 1, p. 98–107, 2006.

DAVENPORT, T. H.; RONANKI, R. Artificial intelligence for the real world. *Harvard Business Review*, v. 96, n. 1, p. 108–116, 2018.

GARTNER. *Data & Analytics Maturity Model 2024*. Stamford: Gartner, 2024.

GARTNER. *Magic Quadrant for Cloud Infrastructure and Platform Services 2024*. Stamford: Gartner, 2024.

IANSITI, M.; LAKHANI, K. R. *Competing in the Age of AI: Strategy and Leadership When Algorithms and Networks Run the World*. Boston: Harvard Business Review Press, 2020.

ISACA. *COBIT 2019 Framework: Governance and Management Objectives*. Rolling Meadows: ISACA, 2019.

KIM, G.; HUMBLE, J.; DEBOIS, P.; WILLIS, J. *The DevOps Handbook: How to Create World-Class Agility, Reliability, and Security in Technology Organizations*. 2. ed. Portland: IT Revolution Press, 2021.

LAUDON, K. C.; LAUDON, J. P. *Management Information Systems: Managing the Digital Firm*. 17. ed. Boston: Pearson, 2022.

MARSTON, S.; LI, Z.; BANDYOPADHYAY, S.; ZHANG, J.; GHALSASI, A. Cloud computing — The business perspective. *Decision Support Systems*, v. 51, n. 1, p. 176–189, 2011.

NIST. *Cybersecurity Framework (CSF) 2.0*. Gaithersburg: NIST, 2024.

PORTER, M. E.; MILLAR, V. E. How information gives you competitive advantage. *Harvard Business Review*, v. 63, n. 4, p. 149–160, 1985.

PROVOST, F.; FAWCETT, T. *Data Science for Business: What You Need to Know about Data Mining and Data-Analytic Thinking*. Sebastopol: O'Reilly, 2013.

ROGERS, D. L. *The Digital Transformation Playbook: Rethink Your Business for the Digital Age*. New York: Columbia Business School Publishing, 2016.

WEILL, P.; ROSS, J. W. *IT Governance: How Top Performers Manage IT Decision Rights for Superior Results*. Boston: Harvard Business School Press, 2004.

WESTERMAN, G.; BONNET, D.; MCAFEE, A. *Leading Digital: Turning Technology into Business Transformation*. Boston: Harvard Business Review Press, 2014.

---

**Fontes de Dados (2024):**
- ANPD. *Relatório Anual 2024*. Brasília: ANPD, 2024.
- CGI.BR. *TIC Empresas 2024*, *TIC Domicílios 2024*. São Paulo: NIC.br, 2024.
- CERT.BR. *Estatísticas de Incidentes de Segurança 2024*. São Paulo: NIC.br, 2024.
- IDC. *Brazil ICT Spending Forecast 2024–2025*. São Paulo: IDC, 2024.
- MAGAZINE LUIZA. *Relatório Anual 2023*, *Relatório Integrado 2024*, *LuizaLabs Blog*. 2023–2024.
- NUBANK. *Annual Report 2023*, *Engineering Blog*, *Quarterly Reports*. 2022–2024.