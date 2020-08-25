Imports System
Imports Tinkerforge

Module ExampleSimple
    Const HOST As String = "localhost"
    Const PORT As Integer = 4223
    Const UID As String = "XYZ" ' Change XYZ to the UID of your TNG DI8

    Sub Main()
        Dim ipcon As New IPConnection() ' Create IP connection
        Dim di8 As New TNGDI8(UID, ipcon) ' Create device object

        ipcon.Connect(HOST, PORT) ' Connect to brickd
        ' Don't use device before ipcon is connected

        ' Get current values
        Dim values As Boolean() = di8.GetValues()

        Console.WriteLine("Channel 0: " + values(0).ToString())
        Console.WriteLine("Channel 1: " + values(1).ToString())
        Console.WriteLine("Channel 2: " + values(2).ToString())
        Console.WriteLine("Channel 3: " + values(3).ToString())
        Console.WriteLine("Channel 4: " + values(4).ToString())
        Console.WriteLine("Channel 5: " + values(5).ToString())
        Console.WriteLine("Channel 6: " + values(6).ToString())
        Console.WriteLine("Channel 7: " + values(7).ToString())

        Console.WriteLine("Press key to exit")
        Console.ReadLine()
        ipcon.Disconnect()
    End Sub
End Module
