# Jupiter

Jupiter is a test bed for ActiveResource over XMPP using Switchboard and a
modified version of ARes in the _activeresource-xmpp_ branch of
`mojodna/rails` (forked from Rails 2.2.2).

See `test.rb` for sample usage.

ActiveResource is extremely tied to HTTP (e.g. use of Content-Length headers
and HTTP verbs), but there's no reason that it shouldn't work over a separate
transport that can handle REST semantics. XMPP's use of asynchronous
_retract_s and _publish_es cause particular problems, as ARes expects
responses immediately. `XmppConnection` could be adapted to block on those
operations, but that potentially eliminates some of its power.

XMPP also provides the ability to subscribe to event notifications when items
are published, updated, or retracted. Hooks could be built into ARes models so
that applications can listen and respond to such notifications.

## Getting Started

Install dependencies:

    $ sudo gem install mojodna-switchboard -s http://gems.github.com
    $ git clone git://github.com/mojodna/mars.git

Initialize submodules:

    $ git submodule update --init

Configure and start up [Mars](http://github.com/mojodna/mars "Mars").

Run the test script (modify it to try out different functionality):

    $ script/runner test.rb
