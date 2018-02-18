package WSM::Type::Object;

use Moose;

extends 'WSM::Type';

has 'Location' =>
  (
   is => 'rw',
   isa => 'WSM::Type::Location',
  );

sub location {
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
  
    Object.location(o - object, l - location, d - duration, c - confidence) (object X may have been at location L sometime around duration T8 - T9)

  }

sub defaultLocation {
  Object.defaultLocation.{set|get}(o - object) (the default location of object X is Y)
    (kquery (defaultLocation ?OBJECT ?LOCATION ?TIME))

    Object.defaultLocation.{set|get}(o - object, t - time)(the default location of object X was changed at time T4)

    Object.defaultLocation.{set|get}(o - object, t - time, l - location) (it is unknown where object X was at time t5)

  }

sub stock {
  Location.stock(l - location, t - time, ty - type, qty - quantity) (there are 3 copies of object X in stock, in various conditions - c1, c2 and c3)
    Object.condition(o - object, c - condition)

  }

sub sell {
  Object.{sell|consume|destroy}(o - object, t - time, trans - transaction) (object X was sold, consumed or destroyed at time t7)

}

sub consume {

}

sub destroy {

}

sub emptyStock {
  Location.emptyStock(o - object, t - time, ty - type) (we've run out of object X as of now)
}

sub expectedStock {
  Location.expectedStock(o - object, t - time,0 - qty) (consumable X is expected to be fully consumed by time T)
  
}

sub purchase {
Object.purchase(o - object, t - time, trans - transaction) (object X was purchased at time t6)

}

sub lost {
  Object.lost(o - object) (I can't find object X)
    Object.lost(o - object, t - time) (I can't find object X)
Object.lost(o - object, l - last-seen-location, t - time) (I can't find object X)
      Object.lost(o - object, l - last-seen-location, t - time) (object X has been lost since approximately time T)
}

sub notWhereILeftIt {
  Object.notWhereILeftIt(o - object, l - location, t - time) (Object X is not where I left it)
}

1;
