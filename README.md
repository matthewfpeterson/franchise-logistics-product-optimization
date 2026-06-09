# Franchise Operations & Product Rotation Performance Analysis

An end-to-end data analytics architecture that transforms raw e-commerce transactional logs into strategic operational intelligence. This project validates back-end database metrics via SQL/Python, constructs an ETL table-merge framework, and implements an interactive executive reporting layer aligned with corporate branding specifications.

## Executive Key Insights
* **The Core Hub Performance:** The highest transactional footprint resides in **SP** with **41,375 distinct orders**, operating at peak logistical efficiency with an average fulfillment turnaround of just **8.70 days**.
* **Perimeter Logistical Risk:** Expanding frontier territories present critical logistical bottlenecks. **RR (29.34 days)**, **AP (27.18 days)**, and **AM (26.36 days)** exhibit extreme lead time latencies despite low relative order volumes, indicating a need for localized distribution partners.
* **Product Demand Velocity:** "Informatica Acessorios" and "Moveis Decoracao" anchor core menu rotation volume, exceeding **6.4K+ distinct orders** each, contrasting sharply with niche categories like "Audio" which maintain minimal baseline traction.

## Power BI Dashboard Implementation
The visualization layer establishes an intuitive, twin-lens view of product demand and logistical efficiency engineered specifically for senior operations leadership.

* **Visual Polish & Design Identity:** Outfitted with an explicit, high-contrast palette optimized for corporate evaluation:
  * **Primary Identity Color:** Brand Pink (`#F3B3CE`) utilized across all metric bars and operational alert thresholds.
  * **Typography & Typography Framing:** Clean, semantic element categorization replacing raw database file strings.
* **Interactive Architecture:**
  * **Menu Category Sales Velocity (Horizontal Bar Chart):** Visualizes distinct order counts mapped against product category names. Incorporates inline data labels for rapid, scannable volume analysis without axis fatigue.
  * **Fulfillment Performance by Territory (Logistics Matrix):** Pairs localized volume tracking with average delivery lead times. Leverages an exception-based conditional formatting gradient where high-risk transit latencies dynamically blush into dark pink, pulling executive attention directly to supply chain friction zones.
  * **Relational Cross-Filtering:** Built using a unified data model that enables interactive cross-filtering. Selecting any underperforming territory inside the logistics matrix instantly cascades the view, isolating local flavor velocity trends for targeted inventory strategy.
