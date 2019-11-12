% subject object
% singular plural
% parse tree
% seperate lexicon

sentence --> subject_clause, verb_object_clause.
subject_clause --> noun_phrase(subject). 
verb_object_clause --> verb_phrase.
verb_object_clause --> verb_phrase, noun_phrase(object).

noun_phrase(_) --> det_noun.
noun_phrase(X) --> pronoun(X).
verb_phrase --> verb.


pronoun(subject) --> [he].
pronoun(subject) --> [she].
pronoun(object) --> [him].
pronoun(object) --> [her].

det_noun --> det, noun.
det --> [a].
det --> [the].
noun --> [man].
noun --> [woman].

verb --> [likes].
verb --> [hates].
verb --> [sees]. 