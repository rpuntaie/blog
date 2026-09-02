/*
typst watch between_layers.typ ~/tmp/between_layers.pdf
zathura ~/tmp/between_layers.pdf
pandoc -f typst -t rst between_layers.typ -o ~/tmp/between_layers.rst
rstdoc ~/tmp/between_layers.rst ~/tmp/between_layers.html

https://rolandpuntaier.blogspot.com/2026/09/between-layers-understanding-and.html
*/

#import "@preview/note-me:0.6.0": *
// #note["text here"]

#set quote(block: true)
// #quote(attribution: [Google AI])[AI says this]

#set heading(numbering: "1")

// {spacetime_lagrangian particle variable layer}

#title[Between Layers]

Understanding and consciousness is to compare.
And I like to start with physics when placing something in the information space of my mind.
That might look a bit out of context for some topics,
but I don't see physics only as the study of relations between measurements, but rather a philosophical approach, a method of epistemology.
The following thoughts were starting points for musings on economy, a topic of current interest to me.

I've realized since quite some time that not seeing the bigger picture makes physics dogmatic.
For example when saying "the kinetic energy is $1/2 m v^2$": It is wrong as a general statement.
It is practical in the sense that if a body is stopped to a halt, that energy is transmitted.
But as a state: an inertial frame moving with $v$ has no distinction from a body at rest, and therefore has no energy.

Here I place the
- split of energy into kinetic and potential energy
as a
- connection between layers.

= Spacetime

/ energy: Energy is the rate of change of something, the frequency.
/ space: The something that is changed with the frequency.

Space is physically not existing without a change, without a time.
Therefore also "spacetime".

Space is not the vacuum, not the space with nothing in it.
Space is something that changes or cycles in a lower layer.
Space is energy at a lower layer.
Space is associated with matter and matter has mass and mass is energy.
So space is also energy.
We make the distinction in the mind,
but physics comes with equations that uncover them as one.
The method makes sense, to coordinate our mind variables with reality,
but this description and the reality as such are different things.

From the macroscopic viewpoint, not looking at the nucleus, not looking at the strong force, all matter is electromangetic.
A photon can be considered matter.
A photon is the change of electric and magnetic components in the electromagnetic field.
We live in an electromagnetic world.

#link("https://davidtong.org/teaching/quantum-field-theory/qfthtml/S6")[Field]
is a mapping from our $μ = t,x,y,z$ to reality.
We cannot assume the space in our mind is reality.
No, the field is the real space.
We coordinate it to our mind space via the equations of motion, plus further restrictions
(guage: which potential $A_μ$ with same $E$ and $B$).
A coordinate whose mapping stays constant (symmetry) is like saying that it maps to a property intrinsic to the object,
like $t$ to Hamiltonian $H$, or $x$ to momentum $p$.
(#link("https://en.wikipedia.org/wiki/Noether's_theorem")[Noether]).

So what is a field? The field is the real space, well spacetime of course,
because it is an evolving system and does not exist without the changes of it.
The field is the reality, and that is local.
The field can be $E$ or $B$, but it can as well be a biological system,
in the more general idea that changes happen locally and form the system.
In our mind we can say: Oh, see that star, as if we would see something that existed now, when saying it.
We can look at the road while driving, see nobody, look at the phone, and have killed somebody.

= T-U split

/ work: Work is the additional rate of change due to some influence from a another/remote/below system.

Work is change on this layer, extracting energy from layers below.
"Below" shall define the source of energy, not actually below.
The sun is above, but would be below in the layer idea, being a source of energy,
to make changes in this layer, the layer of interest.
Work can be seen as extraction process to produce change "here".
But intentions in "extracting" is of course judging and very much a mind thing.

/ force - potential energy: We start with the energy source, corresponding to a change "there". This is also called potential energy $V$.
  In the context here I might call it remote/below energy.
  Then we map this to a change "here" ($dif q$).
  $dif q$ is a local change and as such a local time step.
  A force is a local change due to an remote energy source, the influence depending on the location $q$: $F = (dif U) / (dif q)$.

/ momentum - local energy: We start with the local change without the external influence. I call this the local energy $T$, but is also called kinetic energy.
  In classical physics there was the idea of something ($m$) moving in a straight line $p = m v = m (dif q) / (dif t)$ (uniform motion, momentum).
  But we have to generalize this, because we realize there is no actual uniform motion to be found.
  It was just a local mental simplification due to the limited observation space.
  By comparing $dif q$ to a clock change $dif t$ we had left physics already -- which is fundamentally local,
  and had gone to a mental comparison process.
  Both $q$ and $t$ have by chance units or our choice, but $t$ is detached, a different system, we compare to.
  Rather we should think of $p$ as a (cycling) trajectory (geodesic) without the energy extracted from another source ($V$).
  Uniform motion and inertial frame becomes a local simplification on the geodesic, a linear coordinate system for our mind.
  Seeing change/energy as fundamental, one would fix the mental unit of change $dif t$ and see $p$ as the size of the according local change $dif q$ (local space).
  The linear $dot(q)$ projection from remote mental $t$ to local reality $q$ would change along the geodesic.
  The more general momentum is this change of spacetime projection $p = (dif T) / ( dif dot(q) )$.

/ time - energy: $(dif p) / (dif t) = F$ (Euler-Lagrange), $p = (dif L)/(dif dot(q))$, $F = (dif L) / (dif q)$, $L(dot(q),q)=T(dot(q))-U(q)$.
  The idea is that energy is change, be it of remote origin $V$ or of local $T$, and therefore additive, with total constant Hamiltonian $H=T+V$,
  while the Lagrangian $L$ denotes local rate change $T$, represented by the change of the mapping $dif t arrow dif q$, due to the remote $V$ influence at $q$: $L = T(dot(q))-U(q)$.
  The closed system has constant total action $S=∫ L dif t$. The action can be seen as information of the system (the local chain of time steps).
  The energy or Hamiltonian $H$ is the local time steps compared to our clock $(partial S) / (partial t) = - H (q, (partial S) / (partial q))$ (Hamilton-Jakobi equations),
  a rephrasing of Hamiltonian $H = p dot(q) - L$ as the Legendre transform, using $(partial S) / (partial q) = p$.
  Hamilton equations show this H as timing of the system: $dot(p) = - (partial H) / (partial q)$, $dot(q) = (partial H) / (partial p)$.

Seeing the time and space physically inseparable (spacetime),
I prefer to start from time, i.e. the local rate of change, i.e. from energy, saying:
The source energy $V$ is more fundamental physically, than the force $F$.
But if you want to overlay human intention, you could say: exert force $F$ along $q$ to extract energy $V$,
which kind of fits to a mind trained by evolution to control.
Work can be defined as extracting energy from lower layers,
not meaning necessarily physical work, moving things,
by seeing $dif q$ as any local change in $dif U = F dif q$, not a change of space coordinates.
We can also say work is the energy lost from layers below.
Wording does matter socially but the physical system is "unaware" of them.

Every new force is a new layer that cycles, if not stopping the layer below, where the potential energy $V$ comes from,
but rather adding a new dimension to which lower layers are bent.
- The T-U split is the link between layers
  - U: energy of layer one
  - T: and energy of layer two

In the energy bill actually only $U$ is mentioned. That is what you pay for, be it food, be it electricity.

= Physics of control <control_principle>

Close systems do not exist, other than as a mental approximation.
The T-U split is between two layers already.
Such systems last for a long time, think of an atom or of a star system.
In reality of course more than two systems interact.
But the two-system is the minimal interface,
a great starting point for a description, like the bit to describe all kinds of information.
Minor other interactions can be practically handled as a direct time dependence of a change,
i.e. not associated to an actual localized spacetime change.
This of course is a mind method, a mathematical method, not a reality.

In higher layer systems, in biological systems, in economic systems,
- the extractable energy $V$ varies along $q$, the local spacetime
- On the expense side the systems have a rather constant energy dissipation.
Such systems harvest more than needed at any point in spacetime and save it in more local buffers,
like in glycogen and fat for animals or equity/ownership in economy.
That makes interactions more localized between the one cell or a few cells and the energy buffer,
between an individual or a family and the assets under control (control = ownership).

Loss of energy at "lower" layers creates layers "above".
The layer above is sometimes called Maxwell demon.
I also name this `control_principle`, when intending
dissipation of energy, really lost energy,
not a back-and-forth interaction that will cycle forever.

= Action as spacetime

The T-U split is the Lagrangian $L = T-U$
On can see the Lagrangian $L$ as the local spacetime step, meaning both space and time, inseparable,
but of course with our time as something to relate to.
Action $S=∫L dif t$ is accumulated Lagrangian ($L=dif S/ dif t$).
If a closed system, as an approximation, $S$ can be seen as the information of the system.

Energy (Hamiltonian $H$) is the comparison to our remote time $H=∂S/∂t$

In our electromangetic_world a constant $c$ says "space and time are the same"
and a constant $h$ says "there is not infinity", there is a smallest step.
Most steps sizes of change are much larger than $h$, though.

Here some synonyms of `action`:

/ spacetime:  spacetime conveys that space (what changes) and time (the change) are physically one.
              Splitting spacetime into space and time is a mind thing and not physical.
/ variable: The values of the variable are changing, implying both the exclusive states and their change.
            A mind variable is physically happening/real in the mind but might not be mappable to an external world physical equivalent even if intended.
/ particle: Particle refers to one spacetime localization (the particle) among many similar ones (a layer).
            "This spacetime consists of lower layer spacetimes" is to say "This particle consists by lower layer particles".

Between layer's:
The lower layer's action change is this layer's step/quantum (Hamiltonian $H$) by which this layer's spacetime emerges (Lagrangian).
The Lagrangian is a 2D variable, the components being called potential energy $U$ and kinetic energy $T$.

While there are more $q_i$ changes observable (collectively named just $q$), they are components
of one change in a 2D deterministic spacetime $L=T-U$ line. Nature does not do a $q_i$ projecting to 2D,
but rather relation between the many lowest layer 2D spacetimes produce the mental 3D world.
With many independent localizations, layers of changes, the actual world around us is high-dimensional, with a 3D substrate.

The action $S=∫ L dif t$ is the full spacetime extension of a potential-kinetic-cycle. In an independent cycle the action is constant.
Constant action leads to the equation of motion (Euler-Lagrange Equation):
$ F = ( dif p ) / ( dif t ) $
$ F := ( partial L ) / ( partial q ) $
$ p := ( partial L ) / ( partial dot( q  ) ) $

Every spacetime particle is curved by $F != 0$.
$F = 0$ corresponds to no change, which is synonymous to non-existence.
Note the correspondence between change, existence, spacetime curvature, limited size and locality.

In the real world of layers, $S$ is not stationary.
It changes in $H$-steps lost to the layer above: $( partial S ) / (partial t) = -H$.
The local Lagrangian becomes part of another change (dependent on another time) and its 2D curve is not a cycle any more,
a spiral possibly, unless the loss is compensated by an equivalent gain from yet further down,
keeping a particle busy with turnover from below to above.

The layer above has the same description,
but with
- different action $S$
- different time extension $tau = S / H$
- different space extension $lambda = S / p$
Hamiltonian $H$ is the layer's time unit. Momentum $p$ is the layer's space unit.
It follows a layer-specific speed $v=lambda/tau$
linking space and time via layer specific $lambda = v tau$.

Special relativity is basically the relationship between layers,
totalling lowest layer spacetime creation speed to $c$:
$(E / c^2)^2 = ( p/c ) ^2 + ( m_0 )^2$.
Total mass is $m=E/c^2$. $m_0$ is the masses from layers below.

A potential is an energy gradient $∂_i U$. It compare mind space $i=x,y,z$ with actual spacetime energy.
For electric we would have written $q E = ∂_i q U$, and $B$ vertical to that.

In 4D $μ = t,x,y,z$ the Euler-Lagrangian equation is

$ ∂_μ ( ( ∂ L ) / ( ∂ ( ∂_μ A_μ) ) ) = ( ∂ L ) / ( ∂ A_μ ) $
$ L =  - 1/4 F_(μ ν) F^(μ ν) - J^μ A_μ $

The space $q,t$ above have become $A_μ$. I like that. More closer to reality.
The mapping to our mind variable $μ = t,x,y,z$ happens via $A_μ$
To coordinate with our mind variables is an essential step for a description.

