%% doesn't work currently, needs to get the arity for the predicate

listCurrentWSMHoldings(QueryPredicates) :-
	getCurrentDateTime(CurrentDateTime),
	findall(P,(atTime(X,Y), Y =.. [P|_]),Ps),
	setof(Z,member(Z,Ps),Predicates),
	findall(QueryPredicate,
		(   
		    member(Predicate,Predicates),
		    arities(Predicate,Arities),
		    member(ArgsLength,Arities),
		    %% Predicate =.. [PredicateName|TypeSpec],
		    %% findall([Var,Type],(member(are(Vars,Type),TypeSpec),member(Var,Vars)),VarSpecs),
		    %% length(VarSpecs,ArgsLength),
		    length(QueryPredicateArgs,ArgsLength),
		    QueryPredicate =.. [PredicateName|QueryPredicateArgs],
		    wsmHolds(CurrentDateTime,QueryPredicate,z),
		    validateAllArgumentsAreObjects(QueryPredicate,ObjectList),
		    validateQueryPredicateArgsHaveCorrectTypes(QueryPredicate,QueryPredicateArgs)
		),
		QueryPredicates),
	viewIf([queryPredicates,QueryPredicates]).
