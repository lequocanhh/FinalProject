   M S B A M L   `   `   `  ����A  =Coffee, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CoffeeCoffee  5   	   /clr-namespace:Coffee.ControlCoffee.Control  5   	       Coffee.MenuWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Coffee     5   	   +ucclr-namespace:Coffee.Control     5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   
   -   5          �Name$  window��5   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    
 MenuVM � DataContext# [ 5   	    � Title$
 Menu��5   	   $	��300��6   $	��800��6#   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      !   Coffee.Control.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6J   5      � 5    
   $��1��6    � ColumnDefinitions 5!      �� 5"      $��1* �6#   60   �� 5#      $��2* �6#   60   .+�5%      � $��0��6    5'      �� 5(      6&   �� 5)      6&   �� 5*      6&   �� 5+      6&    � 	Resources 5.       �� 
TargetType �� Property �� Value��%�   '��       �� 5/      " ��6   .�50      ��  � ��$ Bottom=�6>   6O   �� 51       � ��$ 0 0 10 0q�63   6F   52      53      .+�54      � $��0��6    55      �� 56      $��1* �6+   68   �� 57      $��2* �6+   68    5:      �� 5;      6*   �� 5<      6*   �� 5=      6*   .+�5@      �� $��0��6   $
��NAME��6)   6:   �� 5A      $��1��6   $��PRICE��6)   6;   �� 5B      $��2��6   $��CAT-ID��6)   6<   �� 5E      $��0��6   $��1��6+   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 name��5G       % !MaterialDesignFloatingHintTextBox#��[ 5H      ��5F      �� *Name+5H      �� 5I      $��1��6   $��1��6+   $ price��5K      #��[ 5L      ��5J      �� *Price+5L      �� 5M      $��2��6   $��1��6+   $ 
categoryid��5O      #��[ 5P      ��5N      �� *
CategoryID+.��5P   R   5Q      5R      5T      #  MaterialDesignThemes.Wpf.Card  5U      $��1��6"   $��10 0 0 0q�62   .��5V      �� $	��200��6s   ��6   �� *List+ �� SelectedItem 68   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5W      �� 5X      .P�5Y      �� $
��Name��6-    �� DisplayMemberBinding 6;   �� *Name+6c   �� 5Z      $��Price��6-    6<   �� *Price+6e   �� 5[      $��
CategoryID��6-    6A   �� *
CategoryID+6o   5\      5^      5_      5`        5b   
   $��2��6   $��5q�6+   .��5c      �� $
��Auto=�6   .��5d      � $��Right=�6   $��Center=�68   .+�5e      �� $	��Add��6<   $��5q�6J   $	��100��6U   ��6   �� *
AddCommand+6c   �� 5f      $��Update��6?   $��5q�6P   $	��100��6[   ��6   �� *UpdateCommand+6i   �� 5g      $��Delete��6?   $��5q�6P   $	��100��6[   ��6   �� *DeleteCommand+6i   5h      5i      5j      5l      5m      