   M S B A M L   `   `   `  ����J  FSubsManipulator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:SubsManipulatorSubsManipulator  5   	        SubsManipulator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:SubsManipulator     5   	     � Title$  Subs Manipualtor��5   	   $	��500��6"   $	��600��6/    � WindowStartupLocation$ CenterScreen=�6;    � WindowStyle$ ThreeDBorderWindow=�6`    � 
ResizeMode$ CanMinimize=�6�   ��5	      �� 5
   
    �� ImageSource$ film_wallpaper.jpg��6    �� Opacity$	 0.8Q�66   .��5      � $��20q�6   .+�5   
   �� ���	#BF000000$
��Left=�6%   $	��Top=�6@   $
��1000��5      $
��1000��6"   �� 5   
   $&�� Manipulate Subtitles Time-Stamps��6   $��Center=�6<   $��0,30,0,0q�6Y   $	��Top=�5      $��20(�6,   ���	#CCFFFFFF6:   �� 5   
   -   5         ��Name$ 
fileButton��5      $��Choose File��6%   $	��140��6;   $��40��6G   $��Center=�5      $	��Top=�6.   
�������$��	0,120,0,0q�5      $��13(�6=   ��5      �� 5       �� 
TargetType" ��6"   .R�5      ��  ��Name$ bdr_main��6   	 �� CornerRadius$	 20��6/   $��1q�6A   ���#1C536F._�5      �� $��Center=�6+   $��Center=�6F   5      
 �� Triggers
 5      P� 5       P� Property �@J�IsMouseOver P� Value . . �5      ��  �� 
TargetName$ bdr_main��6%    �� Property � �� �� Value �#1C435F6Q   5      P� 5        � �� . . �5!      �� $ bdr_main��6%    � �� �#1C233F6Q   5"      5$      5&      �� 5'   
   -   5         ��Name$ fileNameTextBlock��5'      $�� ��6/   $��11(�67   $	��170��6E   $	��Top=�5(      $
��Left=�6,    �� TextAlignment$
 Left=�6G   
�������$��365,132,0,0q�5)   '   $y�Hidden=�6<   �� 5*   
   -   5        $ fileTypeTextBlock��5*      $ ��Please choose an .SRT file��6/   $��10(�6Q   $	��Top=�5+      $��Center=�6,   
���  ��$��	0,165,0,0q�5,   %   $y�Hidden=�68   �� 5.   
   $��Delay:��6   $��Center=�6"   $��16(�6?   $	��Top=�5/      $��-125,205,0,0q�6,   
�������6B   �� 50   
   -   5         ��Name$ delayTextBox��50      $��26��6(   $��60��64   $��16(�6?   $��Center=�51      $	��Top=�6/   $��	0,205,0,0q�52      {�.  ���	#FF0D3149$��0,0,0,2q�53      
����������#FFFFFF$��Right=�54      $	��0,0��65   �� 55   
   $��Seconds (s)��6   $��Center=�6(   $��12(�6E   $	��Top=�56      $��140,209,0,0q�6,   
�������6A   �� 58   
   -   5        $ updateButton��58      $��Update Subs��6'   $	��140��6=   $��40��6I   $��Center=�59      $	��Top=�6.   {�.  $��	0,310,0,0q�5:      
���������5;      �� 5<      " ��6"   .R�5=      �� $ bdr_main��6   $	 20��6/   $��1q�6A   ���#1C732F._�5>      �� $��Center=�6+   $��Center=�6F   5?      
 5@      P� 5A       �@J�IsMouseOver . . �5B      �� $ bdr_main��6%    � �� �#1C631F6Q   5C      P� 5D       � �� . . �5E      �� $ bdr_main��6%    � �� �#1C430F6Q   5F      P� 5G       � {� .  . �5H      �� $ bdr_main��6%    � �� �	#CC1C330F6Q   5I      5K      5M      �� 5N   
   -   5        $ doneTextBlock��5N      $��Subs Updated!��6+   $��14(�6@   $��Center=�5O      $	��Top=�61   
���  ��$��	0,370,0,0q�5P      $y�Hidden=�6'   �� 5R   
   $��
0.2 - 2021��6   $��10(�6&   
�������$
��Left=�5S      $��Bottom=�6/   $��15,10q�5T      �� 5U   
   $��By Anton Lüning��6   $��10(�6+   
�������$��Right=�5V      $��Bottom=�60   $��15,10q�5W      5X      5Y      