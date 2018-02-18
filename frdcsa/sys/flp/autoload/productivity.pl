generatePageFor(worldStateMonitor2,User,AllResults) :-
  	fluents_for_productivity_predicates(ProductivityPredicates),
  	fluents_for_productivity(ProductivityFacts),
	findall([TruthValue,Predicate,Arguments],
		(   
		    member(Tmp1Fact,ProductivityFacts),
		    (	(   Tmp1Fact =.. [neg|Tmp2Fact] ) ->
			(   TruthValue = false, PositiveFact = Tmp2Fact) ;
			(   TruthValue = true, PositiveFact = Tmp1Fact)),
		    PositiveFact =.. [Predicate|Arguments]
		    %% findall([Var,Type],(member(are(Vars,Type),TypeSpec),member(Var,Vars)),VarSpecs)
		),AllResults).

%% generatePageFor(worldStateMonitor1,User,AllResults) :-
%%   	fluents_for_productivity_predicates(Results),
%% 	findall([Predicate,VarSpecs],(
%% 			   member(Result,Results),
%% 			   Result =.. [Predicate|TypeSpec],
%% 			   findall([Var,Type],(member(are(Vars,Type),TypeSpec),member(Var,Vars)),VarSpecs)
%% 			  ),AllResults).