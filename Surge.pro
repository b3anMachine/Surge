% Surge
% Edward Nunez
% AI, Gillian Smith
% Sept 29, 2012


% dynamic, retractable predicates
:- dynamic loc/1, at/2, holding/1,
	state/1, record/1, cal/1,
	recording/1, onl/0, offl/0,
	rloc/1, iloc/0, hurl/1, rocks/1,
	holdingtwo/1, holdingthree/1, rocks/1,
	thrower/2, bike/1, path/3, desc/3.

:- retractall(loc(_)),retractall(at(_,_)), retractall(holding(_)),
	retractall(state(_)), retractall(record(_)), retractall(cal(_)),
	retractall(recording(_)), retractall(onl), retractall(offl),
	retractall(rloc(_)), retractall(iloc), retractall(hurl(_)), retractall(rocks(_)),
        retractall(holdingtwo(_)), retractall(holdingthree(_)), retractall(rocks(_)),
	retractall(thrower(_,_)), retractall(bike(_)), retractall(path(_,_,_)), retractall(desc(_,_,_)).


%world setup
path(the_corner_store, e, sidi_bouzid_tunisia).
path(sidi_bouzid_tunisia, n, kasserine_tunisia).
path(tunis_tunisia_second_st, w, tunis_tunisia_third_st).
path(tunis_tunisia_second_st, e, tunis_tunisia_fourth_st).
path(tunis_tunisia_second_st, n, tunis_tunisia_sixth_st).
path(tunis_tunisia_sixth_st, w, tunis_tunisia_fifth_st).
path(tunis_tunisia_sixth_st, n, tunis_tunisia_ninth_st).
path(tunis_tunisia_sixth_st, e, tunis_tunisia_seventh_st).
path(tunis_tunisia_seventh_st, e, tunis_tunisia_eighth_st).
path(tunis_tunisia_seventh_st, n, tunis_tunisia_muhammid_ali_sq).
path(dashboard, e, twitter).
path(dashboard, w, youtube).

path(sidi_bouzid_tunisia, w, the_corner_store).
path(kasserine_tunisia, s, sidi_bouzid_tunisia).
path(tunis_tunisia, s, kasserine_tunisia).
path(tunis_tunisia_sixth_st, s, tunis_tunisia_second_st).
path(tunis_tunisia_seventh_st, w, tunis_tunisia_sixth_st).
path(tunis_tunisia_muhammid_ali_sq, s, tunis_tunisia_seventh_st).
path(twitter, w, dashboard).
path(youtube, e, dashboard).

%item locations
at(the_corner_store, lighter).
at(sidi_bouzid_tunisia, rock).
at(kasserine_tunisia, lemon).

%world State 1
desc(one, dashboard, 'the world wide web.').
desc(one, the_corner_store, 'Store owner: Hey, whats going on outside?').
desc(one, sidi_bouzid_tunisia, 'You witness a fruit vender committing a self immolation government protest!').
desc(one, kasserine_tunisia, 'Home to many impoverished fruit vendors.').
desc(one, youtube, 'Have anything interesting to "post."?').
desc(one, twitter, 'The state of our beloved Tunisia is fucking deplorable. Somebody needs to take a stand.').

%world State 2
desc(two, dashboard, 'the world wide web.').
desc(two, the_corner_store, 'Store owner: Somebody needs to help that guy outside. Man, if I had an arm like yours I would "hurl()." a "rock" at that son of a bitch who is killing him out there.').
desc(two, sidi_bouzid_tunisia, 'You see a government protestor being beaten by the police.').
desc(two, kasserine_tunisia, 'Home to many impoverished fruit vendors.').
desc(two, youtube, 'Controversial. Your protest video is getting a lot of hits.').
desc(two, twitter, 'Amazing. Protests are starting to break out at Sidi Bouzid over the immolation!').

%world State 3
desc(three, dashboard, 'the world wide web.').
desc(three, sidi_bouzid_tunisia, 'Protester Bassam: Thank you for saving me, you have quite the arm! Listen, a revolution is starting and we need people to mobilize in Tunis. I am too injured to go anywhere but you... Here, take this key. Borrow my "bike(X)." and "ride" it from kasserine!').
desc(three, kasserine_tunisia, 'You can "bike(X)." "ride" from here!').
desc(three, tunis_tunisia_first_st, 'The capital of Tunisia. You can "bike(X)." "ride" from here.
You see a protester bieng chased by an official!').
desc(three, tunis_tunisia_second_st, 'The tear gas is irritating, but you whipe some lemon juice and move on.').
desc(three, tunis_tunisia_third_st, 'You are shot dead by an official.').
desc(three, tunis_tunisia_fourth_st, 'The tear gas is irritating, but you whipe some lemon juice and move on.').
desc(three, tunis_tunisia_fifth_st, 'You are shot daed by an official.').
desc(three, tunis_tunisia_sixth_st, 'The tear gas is irritating, but you whipe some lemon juice and move on.').
desc(three, tunis_tunisia_seventh_st, 'The tear gas is irritating, but you whipe some lemon juice and move on.').
desc(three, tunis_tunisia_eighth_st, 'You are shot dead by an official.').
desc(three, tunis_tunisia_ninth_st, 'You are shot dead by an official.').
desc(three, tunis_tunisia_muhammid_ali_sq, 'The crowds are surging.

:Who has a "light."?? Lets burn this image of Ali and send him a message!!').
desc(three, youtube, 'Controversial. Your protest video is getting a lot of hits.').
desc(three, twitter, 'Tunisia, lets do this. #Revolution').


%world State 4
desc(four, dashboard, 'the world wide web.').
desc(four, sidi_bouzid_tunisia, 'Protester Bassam: Thank you for saving me, you have quite the arm! Listen, a revolution is starting and we need people to mobilize in Tunis. I am too injured to go anywhere but you... Here, take this key. Borrow my "bike(X)." and "ride" it from kasserine!').
desc(four, kasserine_tunisia, 'You can "bike(X)." "ride" from here!').
desc(four, tunis_tunisia_first_st, 'You can "bike(X)." "ride" from here.
Protester Slim: Wow, thanks! Im going to do you a favor now: I cant let you go any further unless you have a lemon. Its your best defense against the tear gas. If you have one, go to Muhammid Ali Square, that is where we are congregating. The city is very dangerous right now. Check online to make sure youre taking a safe route. Allah be with you!').
desc(four, tunis_tunisia_second_st, 'The tear gas is irritating, but you whipe some lemon juice and move on.').
desc(four, tunis_tunisia_third_st, 'You are shot dead by an official.').
desc(four, tunis_tunisia_fourth_st, 'The tear gas is irritating, but you whipe some lemon juice and move on.').
desc(four, tunis_tunisia_fifth_st, 'You are shot daed by an official.').
desc(four, tunis_tunisia_sixth_st, 'The tear gas is irritating, but you whipe some lemon juice and move on.').
desc(four, tunis_tunisia_seventh_st, 'The tear gas is irritating, but you whipe some lemon juice and move on.').
desc(four, tunis_tunisia_eighth_st, 'You are shot dead by an official.').
desc(four, tunis_tunisia_ninth_st, 'You are shot dead by an official.').
desc(four, tunis_tunisia_muhammid_ali_sq, 'The crowds are surging.

:Who has a "light."?? Lets burn this image of Ali and send him a message!!').
desc(four, youtube, 'Controversial. Your protest video is getting a lot of hits.').
desc(four, twitter, '#Revolution').


%initial conditions
loc(the_corner_store).
state(one).
offl.
rocks(1).
holding(void).
holdingtwo(void).
holdingthree(void).


%Verbs

%to initialize game
start :-
     write('Hey! Whats "that." in your hand?').

%to continue initial dialogue
that :-
	write('Store Owner: Oh nice, you have a new cell. I bet it does things like record videos and connect to the internet. I really enjoy watching videos on Youtube that were filmed right here in Tunisia. Oh, what a world we live in today!
	Speaking of which, try to be mindful of your surroundings. Our benevolent dickhead Ben Ali has been escalating the violence recently. I saw some officials beat down another poor fruit vendor just the other day.

Make sure to "look." around you and check your "status." from time to time. Please, dont make me have to say that "again.".').

%to repeat initial dialogue
again :-
	that.


%to describe where in space the player is, list objects at the location
look :-
	loc(X),
	state(N),
	write('You are at '),
	write(X),
	write('.'),
	nl,
	objects(X),
	nl,
	describe(N,X).

%to describe the player's inventory and movement freedom
status :-
	loc(X),
	rocks(Q),
	holding(B),
	write('Your right pocket has a '),
	write(B),
	write('.'),
	nl,
	holdingtwo(E),
	write('Your left pocket has a '),
	write(E),
	write('.'),
	nl,
	holdingthree(A),
	write('Your back pocket has a '),
	write(A),
	write('.'),
	nl,
	write('Also, for whatever reason, you have '),
	write(Q),
        write(' rocks'),
	write('.'),
	nl, nl,
	write('"cell(X)." can '), nl,
	write('"record" '), nl,
	write('"connect"'), nl,
	write('"offline"'),
	nl, nl,
	signpost(X).

%to help describe movement freedom
signpost(X) :-
	path(X, Dir, Y),
	write('You can "move(X)." to '),
	write(Y),
	write(' in the "'),
	write(Dir),
	write('".'),
	nl,
	fail.

%to describe a specific location and state
describe(N,X) :-
	desc(N,X,R),
	nl,
        write(R).


%to list objects in a location
objects(X) :-
	at(X, Obj),
	write('You can "pickup(X)."'), write(' a "'), write(Obj),
	write('" here.').

objects(X) :-
	loc(X),
	true.

%to transport player to tunisia land area
bike(ride) :-
	loc(kasserine_tunisia),
	retract(loc(kasserine_tunisia)),
	assert(loc(tunis_tunisia_first_st)),
	look.


bike(ride) :-
	loc(tunis_tunisia_first_st),
	retract(loc(tunis_tunisia_first_st)),
	assert(loc(kasserine_tunisia)),
	look.

bike(ride) :-
	write('No bikes around here.').

%to record, call, and connect.
%both a transportation device and custom object
cell(record) :-
	loc(sidi_bouzid_tunisia),
	state(one),
	assert(recording(immolation)),
	write('You record what you see!'),
	nl.

cell(call) :-
	write('You made a call! Not exactly the most exciting thing your phone can do...'),
	nl.


cell(connect) :-
	offl,
	retract(offl),
	assert(onl),
	loc(R),
	assert(rloc(R)),
	retract(loc(R)),
        assert(loc(dashboard)),
	write('Welcome to the internet.'),
	nl,
	write('"cell(offline)." to return.'),
	nl, nl,
	signpost(dashboard),
	nl,
	fail.

cell(offline) :-
	onl,
	retract(onl),
	assert(offl),
	loc(I),
	retract(loc(I)),
	rloc(R),
	assert(loc(R)),
	retract(rloc(R)).


%to preform rock throwing action.
hurl(rock) :-
	rocks(X),
	X > 0,
	N is X - 1,
	retract(rocks(X)),
	assert(rocks(N)),
	write('You hurl a rock'),
	hurl_shift.
/*
hurl(_) :-
	write('you do not seem to have one.').
*/

%to change the state of the game at key rock throws
hurl_shift :-
	state(two),
	loc(sidi_bouzid_tunisia),
	retract(holdingthree(void)),
	assert(holdingthree(key)),
	retract(state(two)),
	assert(state(three)).

hurl_shift :-
	state(three),
	loc(tunis_tunisia_first_st),
	retract(state(three)),
	assert(state(four)).




%to post recorded video on youtube
post :-
	loc(youtube),
	state(one),
	recording(immolation),
	write('Controversial. Your protest video is getting a lot of hits.'),
	retract(state(one)),
	assert(state(two)).

post :-
	loc(youtube),
	write('Doesnt seem like it.').


%to move the player if the movement is valid
%changes tweet assignments later in the game
move(Dir) :-
	loc(X),
	path(X, Dir, Y),
	retract(loc(X)),
	assert(loc(Y)),
	tweet.

%to receive a new tweet message on the player's cell
tweet :-
	loc(tunis_tunisia_second_st),
	state(N),
	desc(N, twitter, Y),
	retract(desc(N, twitter, Y)),
	assert(desc(N, twitter, 'from second, there are guns to the east and to the west.')),
	look.

tweet :-
	loc(tunis_tunisia_sixth_st),
	state(N),
	desc(N, twitter, Y),
	retract(desc(N, twitter, Y)),
	assert(desc(N, twitter, 'I am on sixith. Patrols coming in from the north and west sides.')),
	look.

tweet :-
	loc(tunis_tunisia_seventh_st),
	state(N),
	desc(N, twitter, Y),
	retract(desc(N, twitter, Y)),
	assert(desc(N, twitter, 'seventh northword, it is the way to go!')),
	look.

tweet :-
	look.

/*
move(_) :-
	write('You cannot move in that direction.'),
	nl.
*/

%to pickup objects in the game.
%including limited rock resources
pickup(rock) :-
	loc(sidi_bouzid_tunisia),
	rocks(X),
	N is X + 1,
	retract(rocks(X)),
	assert(rocks(N)),
	write('You pick up a rock').

pickup(lemon) :-
	loc(kasserine_tunisia),
	retract(holdingtwo(void)),
	assert(holdingtwo(lemon)),
	assert(path(tunis_tunisia_first_st, n, tunis_tunisia_second_st)),
	assert(path(tunis_tunisia_second_st, s, tunis_tunisia_first_st)),
	write('You have picked it up.').


pickup(lighter) :-
	loc(the_corner_store),
	retract(holding(void)),
	assert(holding(lighter)),
	write('You have picked it up.').

/*
pickup(_) :-
	write('You cant afford another. Oh well, one is probably enough.'),
	nl.

pickup(_) :-
	write('You do not see that here.'),
	nl.
*/

%to win the game and defeat the main antagonist
light :-
	holding(lighter),
	loc(tunis_tunisia_muhammid_ali_sq),
	write('Ben Ali is fleeing! Looks like we really did something here.'), nl, write('Game Over.').



%testing purposes
test :-
	assert(loc(tunis_tunisia_first_st)),
	assert(state(three)),
	assert(path(tunis_tunisia_first_st, n, tunis_tunisia_second_st)),
	assert(path(tunis_tunisia_second_st, s, tunis_tunisia_first_st)).


