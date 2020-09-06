package B123
  model TEST
    inner Modelica.Mechanics.MultiBody.World world annotation(
      Placement(visible = true, transformation(origin = {-62, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1 annotation(
      Placement(visible = true, transformation(origin = {-4, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape1(m = 1, r = {1, 0, 0})  annotation(
      Placement(visible = true, transformation(origin = {56, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(world.frame_b, revolute1.frame_a) annotation(
      Line(points = {{-52, 8}, {-14, 8}, {-14, 8}, {-14, 8}}, color = {95, 95, 95}));
  connect(revolute1.frame_b, bodyShape1.frame_a) annotation(
      Line(points = {{6, 8}, {44, 8}, {44, 8}, {46, 8}}, color = {95, 95, 95}));
  end TEST;
  annotation(
    uses(Modelica(version = "3.2.3")));
end B123;
