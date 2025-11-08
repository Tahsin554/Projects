void testRunner(){
  armMovementTest01();
  armMovementTest02();
  armMovementTest03();
}

void armMovementTest01(){
  //Arrange
  setup();
  newtonBody.armAngle = 70;
  int expectedArmAngle = 75;
  
  //Act
  int result = newtonBody.armAngle + newtonBody.angleChange;
  
  //Assert
  assert result == expectedArmAngle: "Error in test armMovementTest01";
}

void armMovementTest02(){
  //Arrange
  setup();
  newtonBody.armAngle = 70;
  newtonBody.angleChange = -5;
  int expectedArmAngle = 65;
  
  //Act
  int result = newtonBody.armAngle + newtonBody.angleChange;
  
  //Assert
  assert result == expectedArmAngle: "Error in test armMovementTest02";
}

void armMovementTest03(){
  //Arrange
  setup();
  newtonBody.armAngle = -5;
  int expectedArmAngle = 0;
  
  //Act
  int result = newtonBody.armAngle + newtonBody.angleChange;
  
  //Assert
  assert result == expectedArmAngle: "Error in test armMovementTest03";
}
