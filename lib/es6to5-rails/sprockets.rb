require 'sprockets'

Sprockets.register_engine '.es6', Es6to5::Template
