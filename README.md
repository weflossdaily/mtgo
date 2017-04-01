# mtgo
## Entity Relationships
### Leagues
#### Relationships
* **Leagues** _have_ **undefeated trophy snapshots**
* **Leagues** _have_ **active player count snapshots**
* A **League** **_matches_** some **players**
##### TODO
* **Leagues** _are_ a **format**
* A **player** _**joins**_ a **league**
* _**Joining**_ a league queue (eventually) _starts_ a **draft**
#### Attributes
For details, see the screenshot in [Undefeated Trophy Snapshots](#undefeated-trophy-snapshots).
* Id
  * e.g., \#1599
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
* An **Undefeated Trophy Snapshot** _is from_ a **League**
#### Attributes
* Date Time Stamp
* Undefeated Trophy Count
* Last Trophy Earned Date Time Stamp
### Active Player Count Snapshots
#### Relationships
* A **League** _has_ **Active Player Count Snapshots**
#### Attributes
* Player Count
* Date Time Stamp
### Player
#### Relationships
* **Players** _make_ **utterances**
##### TODO
* **Players** _have_ a **rating snapshot**
#### Attributes
* Name
### Matches
![Match History Screen](/Screenshots/Match%20History%20Screen%20Shot%202017-03-19%20at%2010.30.31%20PM.png)
#### Relationships
* A **match** has a **player**
* A **match** has **opponents** (which are players)
* A **match** has a **format** (which it inherits from its league)
* A **match** has **games**
#### Attributes
* Date Time Stamp
* Play Style Description
* Game Type Description
### Games
![Example Game Screen](/Screenshots/Game%20Screen%20Shot%202017-03-19%20at%2010.51.48%20PM.png)
#### Relationships
* A **game** _is part of_ a **match** (represented by an **Event Id** a.k.a. **Match Id**)
  * e.g., Event # 174369038 or Match # 174369038
* **Games** have **actions**
* **Games** have **utterances**
#### Attributes
* Number (a unique identifier)
  * e.g., Game \# 516446950
### Actions
#### Relationships
##### Optionally Parseable
* **Actions** _involve_ (are made by, target, etc.) **players**
* **Actions** _involve_ **cards**
* ...and many more!
#### Attributes
* Sequence Number
* Text
##### Optionally Parsable
* Time Stamp (NULLable, only true if no disconnect and taken from the game itself, not a replay)
### Utterances
#### Relationships
##### Optionally Parseable
* **Utterances** _are made by_ **players**
#### Attributes
* Sequence Number
* Text
##### Optionally Parsable
* Time Stamp (NULLable, only true if no disconnect and taken from the game itself, not a replay)
### TODO
* Format (A format is a sequence of sets)
* Set
* Draft
* Seat Location
* Rating Snapshot
