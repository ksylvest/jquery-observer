# jQuery Observe

Observe is a jQuery plugin designed to provide callbacks on changes in forms.

## Installation

To install copy the*javascripts* directory into your project and add the following snippet to the header:

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js" type="text/javascript"></script>
    <script src="javascript/jquery.observe.js" type="text/javascript"></script>
  
## Examples

Setting up observe is easy. The following snippet is a good start:
    
    <form id="search">
      <input type="text" name="search" />
    </form>

    <script type="text/javascript">
      $('#search').observe(function () { alert("observer"); });
    </script>

## Copyright

Copyright (c) 2010 - 2011 Kevin Sylvestre. See LICENSE for details.
