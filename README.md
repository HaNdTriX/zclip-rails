# :warning: Author Warning :warning:

I added this wrapper to give access to the zclip Jquery plugin. Nevertheless I can not recommend Zclip on complex projects.
A better solution is to use the [zeroclipboard-rails](https://github.com/HaNdTriX/zeroclipboard-rails) gem in addition with this [script](https://github.com/HaNdTriX/zeroclipboard-rails/wiki/zeroclipboard-rails---jQuery-Examples).

# Zclip::Rails

Adds easy copytoclipboard functionality to your html-elements this is done by including the Jquery zClip libary to Rails 3.x.

## Installation

Add this line to your application's Gemfile:

    gem 'zclip-rails'

And then execute:

    $ bundle

Add this line to your application.js:

    //= require zclip

## Usage

Add an element (button, input, div, span etc.) somewhere in your .erb template e.g.:

    <button type="button" id="copy-some-txt">example</button>

Add this in some required js file of your app:

    $('#copy-some-txt').zclip({
        copy: "this is the text to copy"
    });

### Supply custom callback functions

    $('#copy-some-txt').zclip({
        copy: "this is the text to copy",
        beforeCopy: function() {
          alert("I am going to copy some text to your clipboard");
        },
        afterCopy: function() {
          alert("done");
        }
    });

### Settings

<table>
  <thead>
    <tr>
      <th colspan="3">
        <h4>Settings</h4>
      </th>
    </tr>
    <tr>
      <th>
        <h5>Variable</h5>
      </th>
      <th>
        <h5>Default Value</h5>
      </th>
      <th>
        <h5>Available Values</h5>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>copy *</td>
      <td>null</td>
      <td>any string, or any javascript expression or function that returns a string</td>
    </tr>
    <tr>
      <td>afterCopy</td>
      <td>null</td>
      <td>specify a function to call after text is copied.<br><br>(your afterCopy function will overwrite the default alert box.)</td>
    </tr>
    <tr>
      <td>beforeCopy</td>
      <td>null</td>
      <td>specify a function to call before text is copied.</td>
    </tr>
    <tr>
      <td>clickAfter</td>
      <td>true</td>
      <td>true<br>false</td>
    </tr>
    <tr>
      <td>setHandCursor</td>
      <td>true</td>
      <td>true<br>false</td>
    </tr>
    <tr>
      <td>setCSSEffects</td>
      <td>true</td>
      <td>true<br>false</td>
    </tr>
    <tr>
      <td colspan="3" style="text-align:right">* required</td>
    </tr>
  </tbody>
</table>

### Notes

#### Proper CSS effects
zClip is a flash overlay, so it must provide the target element with "hover" and "active" classes to simulate native :hover and :active states. Be sure to write your CSS as follows for best results:

    a:hover, a.hover {...}
    a:active, a.active {...}

    $('a.copy').zclip('show'); // enable zClip on the selected element

    $('a.copy').zclip('hide'); // hide zClip on the selected element

    $('a.copy').zclip('remove'); // remove zClip from the selected element

### Requirements

* jquery
* Rails 3.x

### Browsersupport

The Zero Clipboard Library has been tested on the following browsers / platforms:

<table>
    <tr>
      <td><strong>Browser</strong></td>
      <td><strong>Windows XP SP3</strong></td>
      <td><strong>Windows Vista</strong></td>
      <td><strong>Mac OS X Leopard</strong></td>
    </tr> 
    <tr>
      <td> Internet Exploder </td>
      <td> 7.0 </td>
      <td> 7.0 </td>
      <td> - </td>
    </tr> <tr>
      <td> Firefox </td>
      <td> 3.0 </td>
      <td> 3.0 </td>
      <td> 3.0 </td>
    </tr> <tr>
      <td> Safari </td>
      <td> - </td>
      <td> - </td>
      <td> 3.0 </td>
    </tr> <tr>
      <td> Google Chrome </td>
      <td> 1.0 </td>
      <td> 1.0 </td>
      <td> - </td>
    </tr> 
</table>

Adobe Flash Flash Player versions 9 and 10 are supported.

## TODO

* Write a gem tests

## Credits

* Thanks to Joseph Huckaby for writing the zeroclipboard libary.

* Thanks to [steamdev.com](http://www.steamdev.com/zclip/) for writing the jQuery wrapper.

* Thanks to all the contributers to this Project.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
