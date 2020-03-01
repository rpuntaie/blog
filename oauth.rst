.. https://gist.github.com/rpuntaie/7148c2295e0852a98e219a211b812e79

Python OAuth Libraries
======================

Googling for OAuth for python returns many results,
but not immediately the relevant ones,
i.e. up-to-date, independent, authoritative implementations.
So it took me more than necessary to adopt the right library.
Here is my conclusion about the current state,
to possibly abbreviate the search time for OAuth new-comers.

OAuth Libraries
---------------

There are two major unrelated libraries implementing the protocol

- https://github.com/lepture/authlib.
  *authlib* is intertwined with django and flask,
  although without actual installation dependence.

- https://github.com/oauthlib/oauthlib.
  *oauthlib* as more authoritative,
  because implemented in a more independent way.

Social Login Libraries
----------------------

My need was just for *login with*, i.e. *social login*,
as an alternative to the username/password auth flow.

I found older libraries,
but since OAuth2 is form 2012,
and new OAuth providers were gradually emerging,
only new and active libraries matter.

The first such library for *social login* that I found was
https://github.com/authlib/loginpass,
based on *authlib*.
Only later I realized,
that I should better base on *oauthlib*.

Others were

- auth.py in https://github.com/facebook/tornado.git,
  but tornado-specific

- https://github.com/pennersr/django-allauth,
  with lot of provider data, but django-specific

- https://github.com/snarfed/oauth-dropins
  has *google-cloud-ndb* dependence

- https://github.com/googleapis/google-auth-library-python and
  https://github.com/googleapis/google-auth-library-python-oauthlib
  are actually not really google specific, code-wise,
  were it not for the hard-coded google endpoints (URLs).

At that point I thought there is no library just doing *social login*,
without further dependence.
I actually wanted to extract just the data from *django-allauth*,
and base the flow on https://github.com/requests/requests-oauthlib
(this `gist <https://gist.github.com/rpuntaie/7148c2295e0852a98e219a211b812e79>`_).

But, browsing through libraries using *requests-oauthlib* on github,
I came across
https://github.com/python-social-auth/social-core.
**social-core** is not django specific.
It had a django history, though,
which is possibly the reason of its framework design.
If you just want the raw flow,
you need to stub the expected classes.
I did so and included it in the `gist`_ (second file).

Appendix: OAuth
---------------

A
`OAuth <https://en.wikipedia.org/wiki/OAuth>`__
*provider*

- **authenticates** the user and
- asks the user to **authorize** a *client* app
- to access the user's resources according to *scopes*
  (e.g. profile scope, email scope)

One needs to register an app at the OAuth provider to get a

- ``client_id`` and
- ``client_secret``

Some client apps only need a user ID,
to associate information to that user,
without ever the need to email that user.
In this case the ``openid`` scope is enough.
It just returns an ID for the user in that social network.
This gives the same person as many identities in the app,
as many social accounts he uses to log in.

A client app might further want to identify a user beyond
their social account, e.g. by their email,
in which case more social accounts can result in the same email.
The email uniquely identifies a person (n-1),
just like the social account does,
but allows to inform the user about changes, if necessary.

``openid`` comes from the *OpenID Connect* (OIDC) 
`spec <https://openid.net/specs/openid-connect-core-1_0.html>`__,
a technical extension to
`OAuth2 <https://tools.ietf.org/html/rfc6749>`__,
which practically is subsumed by *OAuth2*.
`OAuth1a <https://oauth.net/core/1.0a/>`__
is older and a bit more complicated,
because not relying on HTTPS.
Both use **tokens** representing a temporary grant.
In the following steps the last three occur for OAuth1 and OAuth2,
but the HTTP request parameters differ.
Also, OAuth1 needs signing, while OAuth2 relies on HTTPS.

#) OAuth1 only: get unauthorized *request token* from request URL
   to authorize it in the next step

#) Visit authorization URL
   The *authorization token* for a scope is returned via a 302 redirect to the provided *callback_uri*.

#) Retrieve an *access token* from the access token URL.
   The access token is normally a `jwt <https://en.wikipedia.org/wiki/JSON_Web_Token>`__
   (``<header>.<payload>.<signature>``).

#) Retrieve information according scope from the API URL
   providing ``Authorization: Bearer <access token>``
   in the `http authorization header <https://tools.ietf.org/html/rfc2616#section-14.8>`__.
   See `Bearer Token <https://tools.ietf.org/html/rfc6750>`__.

The linked specs are the best source for the details.

Some OAuth providers also accompany the access token with a refresh token,
that can be used to retrieve a new access token, when the old one has expired.

Some OAuth providers, provide the email in a basic scope,
others provide it in a more sensitive scope and
might even do a human review of the app, just for a *login with*,
like Microsoft's LinkedIn.

