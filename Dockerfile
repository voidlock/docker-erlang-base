FROM voidlock/erlang:latest
MAINTAINER Alex Arnell <alex.arnell@cgmail.com>

RUN cd /usr/src \
      && git clone https://github.com/rebar/rebar3.git \
      && cd rebar3 \
      && ./bootstrap \
      && cp rebar3 /usr/local/bin \
      && cd .. \
      && rm -rf rebar3


CMD ["erl"]
