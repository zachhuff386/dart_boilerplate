library test_comp;

import 'package:angular/angular.dart' show Component;
import 'package:angular/angular.dart' as ng;
import 'dart:html' as dom;

@Component(
  selector: 'test',
  templateUrl: 'packages/boilerplate/components/test/test.html',
  cssUrl: 'packages/boilerplate/components/test/test.css'
)
class TestComp implements ng.ShadowRootAware {
  String inputValue;
  String commitedInputValue;
  int sliderValue;
  bool showToast;

  void onClick() {
    this.showToast = this.showToast != true;
  }

  void onShadowRoot(dom.ShadowRoot root) {
    var sliderElem = root.querySelector('paper-slider');
    sliderElem.addEventListener('core-change', (evt) {
      print('sliderEvent: ${evt}');
    });
  }
}
