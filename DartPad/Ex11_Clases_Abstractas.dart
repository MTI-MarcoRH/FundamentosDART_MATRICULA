void main() {

  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );


  print( 'wind: ${ chargePhone( windPlant ) }' );
  print( 'nuclear: ${ chargePhone( nuclearPlant ) }' );
}


double chargePhone( EnergyPlant plant ) {
  if ( plant.energyLeft < 10 ) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }


abstract class EnergyPlant {

  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({ 
    required this.energyLeft, 
    required this.type 
  });

  void consumeEnergy( double amount );

}

// extends o implements
class WindPlant extends EnergyPlant {

  WindPlant({ required double initialEnergy })
      : super( energyLeft: initialEnergy, type: PlantType.wind );

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}


class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({ required this.energyLeft });

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5);
  }
}


//Tarea  04:  Implementar la clase abstracta de las Personas considerando las propiedades definidas en el API del Hospital/Gimnasio, e implementar la clase 

//10 A Paciente considerando las propiedades de : NSS, TipoSeguro, Estatus_Vida, Estatus Medíco, Fecha_Registro, Fecha_Ultima_Cita

//10 B Miembro considerando las propiedades de: Nivel, Antiguedad, Tipo_Membresia, Estatus_Membrerisa, Estatus_Miembro, Fecha_Registro, Fecha_Ultima_Visita

/*
Ejecución: 

    3 Personas diferentes
    Caso1:  Nuevo paciente que se registra el día de hoy (datetime.now).
    Caso2: De un paciente nuevo, que alguna vez fue trabajador del hospital ()
    Caso3: Un paciente que acaba de fallecer.


    3 Personas Diferente
    Caso1: Nuevo miembro que se registra el día de hoy (datetime.now)
    Caso2: Nuevo miembro,  que alguna vez fue trabajador del gimnasio
    Caso3: Cancelar la membresia de un miembro.

    IMPORTANTE (10A): Rescribir las propiedades del paciente y el metodo de registraDefuncion()
    IMPORTANTE:(10B) Rescribir las propiedades del paciente y el metodo de cancelaMembresia()

*/