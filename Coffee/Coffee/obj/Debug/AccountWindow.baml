   M S B A M L   `   `   `  ����A  =Coffee, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:CoffeeCoffee  5   	   /clr-namespace:Coffee.ControlCoffee.Control  5   
       Coffee.AccountWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Coffee     5   	   +ucclr-namespace:Coffee.Control     5   
   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   
   -   5          �Name$  window��5   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	     	AccountVM � DataContext# [ 5   	    � Title$ Account��5   	   $	��300��6   $	��850��6&   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      !   Coffee.Control.ControlBarUC  
	 � Tag	 6   �� *Title+
 �� ElementName$
 window��6J   5      � 5    
   $��1��6    � ColumnDefinitions 5!      �� 5"      $��1* �6#   60   �� 5#      $��2* �6#   60   .+�5%      � $��0��6    5'      �� 5(      6&   �� 5)      6&   �� 5*      6&   �� 5+      6&    � 	Resources 5.       �� 
TargetType �� Property �� Value��%�   '��       �� 5/      " ��6   .�50      ��  � ��$ Bottom=�6>   6O   �� 51       � ��$ 0 0 10 0q�63   6F   52      53      .+�54      � $��0��6    55      �� 56      $��1* �6+   68   �� 57      $��2* �6+   68    5:      �� 5;      6*   �� 5<      6*   �� 5=      6*   �� 5>      6*   �� 5?      6*   .+�5B      �� $��0��6   $��	DISP-NAME��6)   6?   �� 5C      $��1��6   $��	USER NAME��6)   6?   �� 5D      $��2��6   $��PASSWORD��6)   6>   �� 5E      $��3��6   $��DEPART��6)   6<   �� 5H      $��0��6   $��1��6+   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ displayName��5J       % !MaterialDesignFloatingHintTextBox#��[ 5K      ��5I      �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�5K      �� 5L      $��1��6   $��1��6+   $ userName��5N      #��[ 5O      ��5M      �� *
UserName+$ PropertyChanged=�5O      �� 5P      $��2��6   $��1��6+   $ password��5R      #��[ 5S      ��5Q      �� *
PassWord+$ PropertyChanged=�5S      �� 5T      $��3��6   $��1��6,    �� DisplayMemberPath$ DisplayName��5V      $ 
department��5X       & "MaterialDesignFloatingHintComboBox#��[ 5Y      ��5U      �� *AccountRole+ �� SelectedItem 5W      �� *SelectedAccountRole+ �� Mode$ TwoWay=�$ PropertyChanged=�5Y      5\      5^      #  MaterialDesignThemes.Wpf.Card  5_      $��1��6"   $��10 0 0 0q�62   .��5`      �� $	��200��6s   ��6   �� *List+ 68   �� *SelectedItem+$ OneWayToSource=� �� View 5a      �� 5b      .P�5c      �� $��DisplayName��6-    �� DisplayMemberBinding 6B   �� *DisplayName+6q   �� 5d      $��UserName��6-    6?   �� *
UserName+6k   �� 5e      $��PassWord��6-    6?   �� *
PassWord+6k   �� 5f      $��
Department��6-    6A   �� *AccountRole.DisplayName+6|   5g      5i      5j      5k        5m   
   $��2��6   $��5q�6+   .��5n      �� $
��Auto=�6   .��5o      � $��Right=�6   $��Center=�68   .+�5p      �� $	��Add��6<   $��5q�6J   $	��130��6U   ��6   �� *
AddCommand+6c   �� 5q      $��Change Pass��6G   $��5q�6]   $	��130��6h   ��6   �� *ChangePasswordCommand+6v   �� 5r      $��Delete��6?   $��5q�6P   $	��130��6[   ��6   �� *DeleteCommand+6i   5s      5t      5u      5w      5x      