   M S B A M L   `   `   `  ����A  =Coffee, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CoffeeCoffee  5   	   /clr-namespace:Coffee.ControlCoffee.Control  5	   	       Coffee.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Coffee     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   %ucclr-namespace:Coffee.Control  5	   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5        $��
mainWindow��5   	      MaterialDesignBody#���   5   
   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    
 MainVM � DataContext# [ 5   	    � Title$ 
MainWindow��5   	   $	��600��6   $	��900��6)   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6$   �� *LoadedWindowCommand+
   CommandParameter
 6L   ��  �� ElementName$ 
mainWindow��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5!   
   � $��0��6   .+�5"      !   Coffee.Control.ControlBarUC  
 � Tag 6   �� *Title+$ 
mainWindow��6N   5#      � 5%   
   $��1��6    � ColumnDefinitions 5&      �� 5'      $
��auto �6#   62   �� 5(      6%   .+�5+      � $��0��6   
������� 5,      �� 5-      $��3* �6$   62   �� 5.      6&   �� 5/      6&   �� 50      6&   �� 51      6&   �� 52      6&    � 	Resources 54       �� 
TargetType �� Property �� Value��%�   '��       �� 55      " ��6   .�56      ��  � ��$ 10q�63   6@   �� 57       � ��$
 auto��62   6A   �� 58       � ��
 �����6K   �� 59       � ��$ 15(�65   6B   �� 5:       � ��
 �����6L   5;      5<      .+�5=      �� $��0��6   .��5>      �� $��./Image/coffee_logo.png��6   6?   5?      �� 5@      $��1��6<   ��6   �� *AccountCommand+.��5A      �  5B      �� 5C      61   �� 5D      61   .+�5F      � $��0��6   .+�5G      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 
AccountKey=�66   5H      � 5I      $��1��6   .+�5J      �� $��	  ACCOUNT��6(   6;   5K      5L      5M      �� 5N      $��2��6:   ��6   �� *TableCommand+.��5O      �  5P      �� 5Q      61   �� 5R      61   .+�5T      � $��0��6   .+�5U        $ Table=�66   5V      � 5W      $��1��6   .+�5X      �� $��0 0 2 0q�6(   $��  TABLE��69   6J   5Y      5Z      5[      �� 5\      $��3��69   ��6   �� *MenuCommand+.��5]      �  5^      �� 5_      61   �� 5`      61   .+�5b      � $��0��6   .+�5c        $ Coffee=�66    J� RenderTransformOrigin$ -1.119,0.256&�6D   5d      � 5e      $��1��6   .+�5f      �� $��0 0 2 0q�6(   $��  MENU��69   6I   5g      5h      5i      �� 5j      $��4��6   .��5k      �  5l      �� 5m      61   �� 5n      61   .+�5p      � $��0��6   .+�5q        $ 	ChartLine=�66   5r      � 5s      $��1��6   .+�5t      �� $��0 0 2 0q�6(   $��  TOTAL REVENUE��69   6R   5u      5v      5w      �� 5x      $��5��6   .��5y      �  5z      �� 5{      61   �� 5|      61   .+�5~      � $��0��6   .+�5        $ 
KeyVariant=�66   5�      � 5�      $��1��6   .+�5�      �� $��0 0 2 0q�6(   $��	  LOG OUT��69   6L   5�      5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $��4* �6$   62   �� 5�      $��1* �6$   62   .+�5�      � $��0��6    5�      �� 5�      $
��1.5* �6+   6:   �� 5�      $��2* �6+   68   .+�5�      � $��0��6    5�      �� 5�      $��1* �6,   6:   �� 5�      $��5* �6,   6:   .+�5�      � $��0��6$   $��Center=�61   $��Center=�6N   .+�5�      � $��0 0 50 0q�6(   .+�5�   "   �� $��Name:��6(   $��Bottom=�68   $��0 0 10 0q�6S   6g   �� 5�   "   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 name��5�       % !MaterialDesignFloatingHintTextBox#��[ 5�      ��5�   *   �� *Name+ �� UpdateSourceTrigger$ PropertyChanged=�5�      5�      � 5�      $��0 0 50 0q�6(   .+�5�   "   �� $��Price:��6(   $��Bottom=�69   $��0 0 10 0q�6T   6h   �� 5�   "   $ price��5�      #��[ 5�      ��5�   +   �� *Price+$ PropertyChanged=�5�      5�      5�      � 5�      $��1��6   .+�5�      #	  MaterialDesignThemes.Wpf.Card	  $��1��62   $��5q�6B   $	��Top=�6M   .��5�   "   �� $
��auto��6�   ��6+   �� *
MainList+ �� SelectedItem 6L   �� *SelectedItem+ �� Mode$ OneWayToSource=�$ PropertyChanged=� �� View 5�   &   �� 5�   *   .P�5�   .   �� $
��Name��6=    �� DisplayMemberBinding 6K   �� *Name+6s   �� 5�   .   $��Price��6=    6L   �� *Price+6u   �� 5�   .   $��Category��6=    6O   �� *FoodCategory.CategoryName+6�   5�   +   5�   #   5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $��1* �6,   6:   �� 5�      $��5* �6,   6:   .+�5�      � $��0��6$   $��Center=�61   .+�5�      � .+�5�      �� $��	Category:��6$   $��Bottom=�68   $��0 0 10 0q�6S   6g   �� 5�       �� DisplayMemberPath$ CategoryName��6'   $��Center=�6�   $��0 0 50 0q�6�   $ F  or  D��5�       & "MaterialDesignFloatingHintComboBox#��[ 5�      ��5�   H   �� *
Category+ 6i   �� *SelectedFoodCategory+$ TwoWay=�$ PropertyChanged=�5�      5�      � 5�      .+�5�   "   �� $��Table��6(   $��Bottom=�68   $��0 0 10 0q�6S   6g   �� 5�   "   $ 	TableName��6+   $��Center=�6�   $��0 0 50 0q�6�   $ 
table name��5�      #��[ 5�      ��5�   I   �� *Table+ 6g   �� *SelectedTable+$ TwoWay=�$ PropertyChanged=�5�      5�      5�      � 5�      $��1��6   .+�5�      	  $��1��62   $��5q�6C   $	��Top=�6N   .��5�      �� $
��auto��6H   ��6'   �� *	SetMenu+ 5�   "   �� 5�   *   .P�5�   *   �� $
��Name��69    6G   �� *SetMenuName+$ PropertyChanged=�6�   �� 5�   *   $��Price��69    6H   �� *SetMenuPrice+$ PropertyChanged=�6�   �� 5�   *   $��Table��69    6H   �� *SetMenuTableName+6|   �� 5�   *   $��Category��69    6K   �� *SetMenuCategory+6~   5�   +   5�      5�      5�      5�      5�      � 5�      $��1��6   .+�5�      � $��Center=�6    $��Center=�6;   .+�5�      � $��0 0 50 0q�6$   .+�5�      �� $��TOTAL ��6$   $��Center=�65   $
��Left=�6P   $��30 0 0 0q�6k   $��20(�6}   6�   �� 5�      $��2q�6%   
���   �._�5�   "   �� $��Right=�6F   $��Center=�6b   $	��150��6}   $��20��6�   $��18(�6�    �� TextAlignment$ Center=�6�   ��6,   �� *
SetTotal+6�   5�      5�      �� 5�      $��50 0 0 0q�6F    " MaterialDesignRaisedDarkButton#��[ 5�      $	��110��5�       � ToolTip$8 2Resource name: MaterialDesignRaisedLightDarkButton��5�      $��Add to card��6Z   ��5�   !   �� *AddToBillCommand+5�      �� 5�      $��50 0 0 0q�6@    $  MaterialDesignRaisedAccentButton#��[ 5�      $	��100��5�      $5 /Resource name: MaterialDesignRaisedAccentButton��5�      $	��PAY��6X   ��5�   !   �� *
PayCommand+5�      5�      5�      5�      5�      5�      5�      