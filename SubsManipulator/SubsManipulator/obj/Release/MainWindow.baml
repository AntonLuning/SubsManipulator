   M S B A M L   `   `   `  ���� J  FSubsManipulator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:SubsManipulatorSubsManipulator       SubsManipulator.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:SubsManipulator       � Title$  Subs Manipualtor��$	��500��$	��600�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$ ThreeDBorderWindow=� � 
ResizeMode$ CanMinimize=�����  �� ImageSource$ film_wallpaper.jpg�� �� Opacity$	 0.8Q�.��� $��20q�.+��� ���	#BF000000$
��Left=�$	��Top=�$
��1000��$
��1000���� $&�� Manipulate Subtitles Time-Stamps��$��Center=�$��0,30,0,0q�$	��Top=�$��20(����	#CCFFFFFF�� -    ��Name$ 
fileButton��$��Choose File��$	��140��$��40��$��Center=�$	��Top=�
����·�
�������$��	0,100,0,0q�$��13(��� -    ��Name$ fileNameTextBlock��$�� ��$��11(�$	��170��$	��Top=�$
��Left=� �� TextAlignment$
 Left=�
�������$��365,110,0,0q�$y�Hidden=��� -   $ fileTypeTextBlock��$ ��Please choose an .SRT file��$��10(�$	��Top=�$��Center=�
���  ��$��	0,145,0,0q�$y�Hidden=��� $��Delay:��$��Center=�$��16(�$	��Top=�$��-130,205,0,0q�
��������� -   	 ��Name$	 delayTextBox��$��30��$��50��$��16(�$��Center=�$	��Top=�$��	0,200,0,0q�{�.  �� $��Seconds (s)��$��Center=�$��12(�$	��Top=�$��140,210,0,0q�
��������� -   $ updateButton��$��Update Subs��$	��140��$��40��$��Center=�$	��Top=�{�.  $��	0,310,0,0q�
��� � �
��������� -   $ doneTextBlock��$��Subs Updated!��$��14(�$��Center=�$	��Top=�
���  ��$��	0,370,0,0q�$y�Hidden=�