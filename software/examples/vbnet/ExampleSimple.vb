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

        ' Get current value
        Dim value As Boolean() = di8.GetValue()

        Console.WriteLine("Channel 0: " + value(0).ToString())
        Console.WriteLine("Channel 1: " + value(1).ToString())
        Console.WriteLine("Channel 2: " + value(2).ToString())
        Console.WriteLine("Channel 3: " + value(3).ToString())
        Console.WriteLine("Channel 4: " + value(4).ToString())
        Console.WriteLine("Channel 5: " + value(5).ToString())
        Console.WriteLine("Channel 6: " + value(6).ToString())
        Console.WriteLine("Channel 7: " + value(7).ToString())

        Console.WriteLine("Press key to exit")
        Console.ReadLine()
        ipcon.Disconnect()
    End Sub
End Module
