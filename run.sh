#!/bin/bash

erl -boot start_sasl -pa ebin deps/*/ebin -run chat_app start 

