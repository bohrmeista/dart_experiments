import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:angular_bloc/test_bloc.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    MaterialButtonComponent,
  ],
)
class AppComponent implements OnInit {
  String displayString;
  TestBloc bloc;

  @override
  void ngOnInit() {
    bloc = TestBloc();
    /// listen to any new state coming from the BLoC and read string from it
    bloc.state.listen((state) => displayString = state.text);
  }
}