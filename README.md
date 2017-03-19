# mtgo
## Entity Relationships
### Leagues
#### Relationships
* **Leagues** _have_ **undefeated trophy snapshots**
##### TODO
* **Leagues** _are_ a **format**
* A **player** _**joins**_ a **league**
* _**Joining**_ a league queue (eventually) _starts_ a **draft**
#### Attributes
For details, see the screenshot in [Undefeated Trophy Snapshots](#undefeated-trophy-snapshots).
* Description
  * e.g., Aether-Revolt Kaladesh Intermediate Swiss Draft League
* Start Date Time Stamp
* Close Date Time Stamp
* End Date Time Stamp
* League Structure Description
  * e.g., 
    * Number of Stages: 1
    * Stage 1 Matches: 3
    * Total Matches: 3
* Match Structure Description
  * e.g., Best-of-3
* Time Limits Description
  * e.g., 25 Minutes
### Undefeated Trophy Snapshots
![Undefeated Trophy Snapshots](/Screenshots/League%20Screen%202017-03-18%20at%2011.06.09%20PM.png)
#### Relationships
* An **Undefeated Trophy Snapshot** _belongs_ to a **player**
#### Attributes
* Date Time Stamp
* Undefeated Trophy Count
* Last Trophy Earned Date Time Stamp
### Player
#### Relationships
##### TODO
* **Players** _have_ a **rating snapshot**
#### Attributes
* Name
### TODO
* Format
* Draft
* Rating Snapshot
