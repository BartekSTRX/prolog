% +subject object
% singular plural
% +parse tree
% +seperate lexicon

sentence(s(SC, VOC)) --> subject_clause(SC), verb_object_clause(VOC).
subject_clause(sc(NP)) --> noun_phrase(subject, NP). 
verb_object_clause(voc(VP)) --> verb_phrase(VP).
verb_object_clause(voc(VP, NP)) --> verb_phrase(VP), noun_phrase(object, NP).

noun_phrase(_, np(DN)) --> det_noun(DN).
noun_phrase(X, np(P)) --> pronoun(X, P).
verb_phrase(vp(V)) --> verb(V).

det_noun(dn(D, N)) --> det(D), noun(N).

det(d(Word)) --> [Word], {lexicon(Word, d)}.
noun(n(Word)) --> [Word], {lexicon(Word, n)}.
pronoun(Type, p(Word)) --> [Word], {lexicon(Word, Type, p)}.
verb(v(Word)) --> [Word], {lexicon(Word, v)}.

lexicon(a, d).
lexicon(the, d).
lexicon(man, n).
lexicon(woman, n).
lexicon(likes, v).
lexicon(hates, v).
lexicon(sees, v). 
lexicon(he, subject, p).
lexicon(she, subject, p).
lexicon(him, object, p).
lexicon(her, object, p).