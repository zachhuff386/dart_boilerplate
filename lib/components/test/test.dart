library test_comp;

import 'package:angular/angular.dart' show Component;

@Component(
  selector: 'test',
  template: '<div class="test">Test</div>',
  cssUrl: 'packages/boilerplate/components/test/test.css'
)
class TestComp {
}
