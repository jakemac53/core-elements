import 'dart:html';
import 'dart:js';
import 'package:polymer/polymer.dart';
import 'package:core_elements/core_animation.dart';

var last;

main() {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      document.body.onClick.listen(clickAction);

      document.body.addEventListener('core-animation-finish', (e) {
        print('core-animation-finish');
        e.target.target.querySelector('span').text = 'polymer';
      });
    });
  });
}

void clickAction(MouseEvent e) {
  var t = e.target;
  if ((e.target as HtmlElement).localName != 'button') return;
  var a = t.querySelector('core-animation, core-animation-group');

  if (last != null ) {
    last.cancel();
    last = null;
  }


  if (a.id == 'custom-animation') a.customEffect = customAnimationFn;

  a.target = document.getElementById('target');
  a.play();
  last = a;
}

// TODO(jakemac): Third argument here is always "fixme". What is up with that???
void customAnimationFn(timeFraction, target, _) {
  if (timeFraction == null) timeFraction = 1;
  target.querySelector('span').text = '$timeFraction';
}
