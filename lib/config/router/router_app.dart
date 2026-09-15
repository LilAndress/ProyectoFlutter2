
 import 'package:proyecto2/config/router/router_model.dart';
import 'package:proyecto2/presentation/screen.dart';

const List<RouterModel> router = [
   RouterModel(
    title: 'Button',
    description: 'Vista con ttextos modificados ',
    name: 'Text', 
    widget: BotonesScreens()
    ),
    RouterModel(
    title: 'Text',
    description: 'Vista con ttextos modificados',
    name: 'Text', 
    widget: TextoScreen()
    ),
    RouterModel(
    title: 'Card',
    description: 'Vista con cardsmodificados',
    name: 'Card', 
    widget: CardCustomScreen()
    ),


 ];