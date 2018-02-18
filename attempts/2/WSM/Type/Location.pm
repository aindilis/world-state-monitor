package WSM::Type::Location;

extends 'WSM::Type';

sub get {
  my ($self,$args) = @_;
  my %args = %$args;
  #   Object.location.{set|get}(o - object, l - location, t - time) (at time T1 I saw that object X was at location Y)
  #     (kassert (location ?OBJECT ?LOCATION ?TIME))
  #     (kquery (location ?OBJECT ?LOCATION ?TIME))

  #     Object.location.{set|get}(o - object, l - location, t - time) (again at later time T2 I saw that object X was still at location Y)
  #     (kassert (and (location ?OBJECT ?LOCATION ?TIME1) (location ?OBJECT ?LOCATION ?TIME2)))

  #     Object.location.{set|get}(o - object) (where is object X)
  #     (kquery (location ?OBJECT ?LOCATION))

  #     object.location.{set|get}(o - object, t - time) (at time T1, where was object X)
  #     (kquery (location ?OBJECT ?LOCATION ?TIME))

  #     object.location.{set|get}(p - plan, o - object, t - time) (in plan case P1, if it is known where object X should be at time
  # 							       T3 in the future, please tell me.)
  #     (if (holds ?PLAN (location ?OBJECT, ?LOCATION ?TIME))
  #      (print ?LOCATION))

  # Object.location.{set|get}(o - object) (the last known location of object X is Y)
  # (kquery (location ?OBJECT ?LOCATION ?TIME))
  #     select max{e.time} from . where (location ?OBJECT ?LOCATION e.time)
  #     select e.location from . where (and (?TIME = e.time) (location ?OBJECT ?LOCATION ?TIME))
}

sub set {
  my ($self,$args) = @_;
  my %args = %$args;
  #   Object.location.{set|get}(o - object, l - location, t - time) (at time T1 I saw that object X was at location Y)
  #     (kassert (location ?OBJECT ?LOCATION ?TIME))
  #     (kquery (location ?OBJECT ?LOCATION ?TIME))

  #     Object.location.{set|get}(o - object, l - location, t - time) (again at later time T2 I saw that object X was still at location Y)
  #     (kassert (and (location ?OBJECT ?LOCATION ?TIME1) (location ?OBJECT ?LOCATION ?TIME2)))

  #     Object.location.{set|get}(o - object) (where is object X)
  #     (kquery (location ?OBJECT ?LOCATION))

  #     object.location.{set|get}(o - object, t - time) (at time T1, where was object X)
  #     (kquery (location ?OBJECT ?LOCATION ?TIME))

  #     object.location.{set|get}(p - plan, o - object, t - time) (in plan case P1, if it is known where object X should be at time
  # 							       T3 in the future, please tell me.)
  #     (if (holds ?PLAN (location ?OBJECT, ?LOCATION ?TIME))
  #      (print ?LOCATION))

  # Object.location.{set|get}(o - object) (the last known location of object X is Y)
  # (kquery (location ?OBJECT ?LOCATION ?TIME))
  #     select max{e.time} from . where (location ?OBJECT ?LOCATION e.time)
  #     select e.location from . where (and (?TIME = e.time) (location ?OBJECT ?LOCATION ?TIME))
}

1;
