#!/usr/bin/perl -w

# okay accept some messages

# there should be at least two ways of updating information, one
# propagating action effects, the other just overwriting the affected
# items.

# there should also be creation hooks that are called when a new
# object is created.

# find that list of operations we can do

object.appear
  object.disappear

  Object.create
  Object.destroy
  Object.reportLocation
  Object.purchase
  Object.sell

  Obligation.create
  Obligation.fulfill
  Obligation.shirk

  World.Inform7.import
  World.Inform7.export
  World.pddl.domain.import
  World.pddl.domain.export
  World.pddl.problem.import
  World.pddl.problem.export
  World.verb.domain.import
  World.verb.domain.export
  World.verb.problem.import
  World.verb.problem.export

%% %% PERHAPS we can use flora2 or affordance interface to find
%% %% affordances for objects and load them into the system.

%% %% PERHAPS we can use embodied learning to learn actions for all
%% %% affordances in system, to fil action ontology.

%% %% Normalize to Cyc

%% %% Life planner Action Extraction


%% KB sync
%% Sensor integration

%% Object recognition
%% Can use Amazon and Ebay to help with object recognition tasks




%%%% Should probably start out doing this with Cyc to ensure all typing information correct.

Object.location.{set|get}(o - object, l - location, t - time) (at time T1 I saw that object X was at location Y)
(kassert (location ?OBJECT ?LOCATION ?TIME))
(kquery (location ?OBJECT ?LOCATION ?TIME))

Object.location.{set|get}(o - object, l - location, t - time) (again at later time T2 I saw that object X was still at location Y)
(kassert (and (location ?OBJECT ?LOCATION ?TIME1) (location ?OBJECT ?LOCATION ?TIME2)))

Object.location.{set|get}(o - object) (where is object X)
(kquery (location ?OBJECT ?LOCATION))

object.location.{set|get}(o - object, t - time) (at time T1, where was object X)
(kquery (location ?OBJECT ?LOCATION ?TIME))

object.location.{set|get}(p - plan, o - object, t - time) (in plan case P1, if it is known where object X should be at time
 T3 in the future, please tell me.)
  (if (holds ?PLAN (location ?OBJECT, ?LOCATION ?TIME))
   (print ?LOCATION))

Object.location.{set|get}(o - object) (the last known location of object X is Y)
(kquery (location ?OBJECT ?LOCATION ?TIME))
select max{e.time} from . where (location ?OBJECT ?LOCATION e.time)
select e.location from . where (and (?TIME = e.time) (location ?OBJECT ?LOCATION ?TIME))

Object.defaultLocation.{set|get}(o - object) (the default location of object X is Y)
(kquery (defaultLocation ?OBJECT ?LOCATION ?TIME))

Object.defaultLocation.{set|get}(o - object, t - time)(the default location of object X was changed at time T4)

Object.defaultLocation.{set|get}(o - object, t - time, l - location) (it is unknown where object X was at time t5)

Object.purchase(o - object, t - time, trans - transaction) (object X was purchased at time t6)

Object.{sell|consume|destroy}(o - object, t - time, trans - transaction) (object X was sold, consumed or destroyed at time t7)

Location.stock(l - location, t - time, ty - type, qty - quantity) (there are 3 copies of object X in stock, in various conditions - c1, c2 and c3)
Object.condition(o - object, c - condition)

Object.location(o - object, l - location, d - duration, c - confidence) (object X may have been at location L sometime around duration T8 - T9)

Location.emptyStock(o - object, t - time, ty - type) (we've run out of object X as of now)

Location.expectedStock(o - object, t - time,0 - qty) (consumable X is expected to be fully consumed by time T)

Condition.holds(c - condition, t - time) (condition C holds at time T)

Object.notWhereILeftIt(o - object, l - location, t - time) (Object X is not where I left it)

Object.lost(o - object) (I can't find object X)
Object.lost(o - object, t - time) (I can't find object X)
Object.lost(o - object, l - last-seen-location, t - time) (I can't find object X)

Object.lost(o - object, l - last-seen-location, t - time) (object X has been lost since approximately time T)








