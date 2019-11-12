% +subject object
% singular plural
% +parse tree
% seperate lexicon

sentence(s(SC, VOC)) --> subject_clause(SC), verb_object_clause(VOC).
subject_clause(sc(NP)) --> noun_phrase(subject, NP). 
verb_object_clause(voc(VP)) --> verb_phrase(VP).
verb_object_clause(voc(VP, NP)) --> verb_phrase(VP), noun_phrase(object, NP).

noun_phrase(_, np(DN)) --> det_noun(DN).
noun_phrase(X, np(P)) --> pronoun(X, P).
verb_phrase(vp(V)) --> verb(V).

pronoun(subject, p(he)) --> [he].
pronoun(subject, p(she)) --> [she].
pronoun(object, p(him)) --> [him].
pronoun(object, p(her)) --> [her].

det_noun(dn(D, N)) --> det(D), noun(N).
det(d(a)) --> [a].
det(d(the)) --> [the].
noun(n(man)) --> [man].
noun(n(woman)) --> [woman].

verb(v(likes)) --> [likes].
verb(v(hates)) --> [hates].
verb(v(sees)) --> [sees]. 