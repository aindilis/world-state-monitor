importProblem(Problem) :-
	true.
	
importProblemFromPDDL(PDDL) :-
	true.
	
importProblemFromPDDLFile(PDDLFile) :-
	true.

importProblemFromProlog(Prolog) :-
	true.

importCapsuleFromModule(Module) :-
	getCurrentDateTime(DateTime),
	view([1]),
	fluents:pred_for_m(Module,AllAssertedKnowledge),
	view([5]),
	atomic_list_concat([Module,'_predicates'],'',ModulePredicates),
	view([6]),
	fluents:pred_for_m(ModulePredicates,TmpPredicates),
	view([7]),
	length(TmpPredicates,X),
	(   X == 0 ->
	    (	
		generateDomainFromAllAssertedKnowledge(AllAssertedKnowledge,Predicates)
	    ) ;
	    (
	     Predicates = TmpPredicates
	    )),
	view([8]),
	extractTypesFromPredicates(Predicates,Types),
	view([9]),
	assertAllAssertions(AllAssertedKnowledge),
	view([10]),
	view([types,Types,predicates,Predicates]),!.
	%% want to go ahead and generate the output domain

assertAllAssertions(AllAssertedKnowledge) :-
	forall(member(Assertion,AllAssertedKnowledge),assert(atTime(DateTime,Assertion))).

%% /var/lib/myfrdcsa/codebases/minor/resource-manager/frdcsa/sys/flp/autoload/productivity.pl
%% :- importCapsuleFromModule(productivity).

%% /var/lib/myfrdcsa/codebases/minor/resource-manager/frdcsa/sys/flp/autoload/productivity_predicates.pl

exportDomainAndSave :-
	toExport(domain(Domain)),
	ToExportDomain = domain(Domain),
	toExport(problem(Problem)),
	ToExportProblem = problem(Problem),

	output(domain(ToExportDomain),DomainResults),
	output(problem(ToExportProblem),ProblemResults),

	atomic_list_concat(['/var/lib/myfrdcsa/codebases/internal/verber/data/worldmodel/worlds/','flp/productivity'],'',Prefix),
	atomic_list_concat([Prefix,'.d.pddl'],'',WorldDomainFile),
	write_data_to_file(DomainResults,WorldDomainFile),

	atomic_list_concat(['/var/lib/myfrdcsa/codebases/internal/verber/data/worldmodel/worlds/','flp/productivity'],'',Prefix),
	atomic_list_concat([Prefix,'.p.pddl'],'',WorldProblemFile),
	write_data_to_file(ProblemResults,WorldProblemFile).

generateDomainFromAllAssertedKnowledge(AllAssertedKnowledge,AllPredicateDefinitions) :-
	setof(
	      PredicateDefinition,
	      Assertion^AllAssertedKnowledge^PredicateDefinitions^
	     (	 
		 member(Assertion,AllAssertedKnowledge),
		 getPDDLPredicateDefinitionsFromAssertion(Assertion,PredicateDefinitions),
		 member(PredicateDefinition,PredicateDefinitions)
	     ),
	     AllPredicateDefinitions),
	view([predicateDefinitions,AllPredicateDefinitions]).

getPDDLPredicateDefinitionsFromAssertion(Assertion,PredicateDefinitions) :-
	Assertion =.. [Predicate|Args],
	findall(PredicateDefinition,
		(   
		    member(Arg,Args),
		    (	atomic(Arg) -> true ;
			(   
			    getPDDLPredicateDefinitionsFromAssertion(Arg,SubPredicateDefinitions),
			    member(PredicateDefinition,SubPredicateDefinitions)
			)
		    )
		),
		SubPredicateDefinitions),
	append([Predicate],SubPredicateDefinitions,PredicateDefinitions).

extractTypesFromPredicates(Predicates,TypesWithSuperclasses) :-
	setof(Type,Predicate^Predicates^P^ArgSpecs^Args^(member(Predicate,Predicates),Predicate =.. [P|ArgSpecs],member(are(Args,Type),ArgSpecs)),Types),
	getTypesWithSuperclassesFromTypes(Types,TypesWithSuperclasses).

%% types: [genls([modeOfTransportation],category)]
%% predicates: [autonomous(are(['$VAR'('A')],intelligentAgent)),location(are(['$VAR'('O')],object),are(['$VAR'('L')],physicalLocation)),contains(are(['$VAR'('C')],container),are(['$VAR'('O')],object)),mobile(are(['$VAR'('Ob')],object)),'directly-holding'(are(['$VAR'('A')],intelligentAgent),are(['$VAR'('O')],object))]

%% for now, don't generate these but borrow them, load the manually created ones

%% :- importProblemFromPDDLFile('/var/lib/myfrdcsa/codebases/internal/verber/data/worldmodel/templates/finance/current/tsimpleopticclp.p.verb').

getTypesWithSuperclassesFromTypes(Types,Types).

%% getTypesWithSuperclassesFromTypes(Types,TypesWithSuperclasses) :-
%% 	member(Type,Types),
%% 	allIsa(Type,AllIsa),
%% 	true.
	