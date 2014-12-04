// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `core_pages`.
library core_elements.core_pages;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/interop.dart' show registerDartType;
import 'package:polymer/polymer.dart' show initMethod;
import 'core_selector.dart';

/// `core-pages` is used to select one of its children to show. One use is to cycle through a list of children "pages".
///
/// Example:
///
///     <core-pages selected="0">
///       <div>One</div>
///       <div>Two</div>
///       <div>Three</div>
///     </core-pages>
///
///     <script>
///       document.addEventListener('click', function(e) {
///         var pages = document.querySelector('core-pages');
///         pages.selected = (pages.selected + 1) % pages.children.length;
///       });
///     </script>
class CorePages extends CoreSelector {
  CorePages.created() : super.created();
  factory CorePages() => new Element.tag('core-pages');

  get $ => jsElement[r'$'];
}
@initMethod
upgradeCorePages() => registerDartType('core-pages', CorePages);
