Dictionaries
============

There are a few utility dictionaries available. All of them inherit from the
base ``dict`` class, and can be used as drop-ins for the standard ``dict``
type. There are a few "primitive" base types that are then composed to
more complex types. To use these types, ``import kutils.dicts``.

+ ``AttrDict``: this dictionary provides access to the keys as attributes.
+ ``NoneDict``: this dictionary returns ``None`` for non-existent keys. This
  means it will not throw a :py:class:`KeyError` for top-level keys; note that
  nested dictionaries may not be `NoneDict`s.
+ ``StrDict``: this dictionary returns an empty string for non-existent keys.
+ ``DictDict``: this dictionary returns an empty ``StrDict`` for non-existent
  keys. This is mostly useful for values that are nested dictionaries of keys.
+ ``AttrNoneDict``: this is a composition of the ``AttrDict`` and the
  ``NoneDict``: it provides access to its keys as attributes, and returns
  ``None`` for missing keys or attributes; this means missing top-level keys
  and attributes will not throw :py:class:`KeyError` or :py:class:`AttributeError`.
+ ``AttrDictDict``: this is a composition of the ``AttrDict`` and ``DictDict``:
  it provides access to its keys as attributes, and returns an empty
  ``StrDict`` for missing keys or attributes; this means missing top-level keys
  and attributes will not throw :py:class:`KeyError` or :py:class:`AttributeError`.
