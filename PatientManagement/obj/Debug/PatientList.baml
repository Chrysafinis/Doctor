   M S B A M L   `   `   `  ����L  HPatientManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:PatientManagementPatientManagement  5   	   #    PatientManagement.PatientList   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   1localclr-namespace:PatientManagement     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     67   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6t     � Title$  PatientList��5   	   $	��679��6   $	��875��6*    � 	Resources 5         patientViewSource��%   &	        �� 5   
   6   5      .��5	      �  � DataContext# [  6   .+�5
   
   �� -   5         ��Name$ NameTxt��5
      $
��Left=�6#   $��23��6>   $��
133,65,0,0q�6J    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $	��120��6�   �� 5   
   -   5        $��Search��5      $
��Left=�6"   $��
286,66,0,0q�6=   $	��Top=�6Q   $��75��6i   6t   �� 5   
   $��Eυρετήριο��6   $
��Left=�6$   $��	10,10,0,0q�6?   $	��Top=�6R   $��37��6j   $	��304��6v   $
��Bold"�6�   $��20(�6�   �� 5   
   $ ��Ονοματεπώνυμο��6   $
��Left=�6(   $��	10,62,0,0q�6C   $	��Top=�6V   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ patientDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��10,139,10,50q�6      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   	   CanUserAddRows	 .  ��6g   �� 
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        firstNameColumn��,  &System.Windows.Controls.DataGridColumn   Header$ 
Ονομα��5   \      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6k   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *	FirstName+6k     5      -   5        lastNameColumn��$ Επωνυμο��5   Z   $ * 6k    6=   �� *
LastName+6k     5      -   5        addressColumn��$ Διευθυνση��5   X   $ * 6k    6<   �� *	Address+6k     5      -   5        telephoneColumn��$ Τηλεφωνο��5   \   $ * 6n    6>   �� *	Telephone+6n     5      -   5        
aMKAColumn��$
 AMKA��5   R   $ * 6`    69   �� *AMKA+6`     5      -	   5        registerColumn��$ Register��5   Z   $ * 6l    6=   �� *
Register+6l   5      �� 5   
   -
   5        $	��New��5      $
��Left=�6   $��
762,20,0,0q�6:   $	��Top=�6N   $��75��6f   6q   �� 5   
   -   5        $
��Save��5      $
��Left=�6    $��782,617,0,0q�6;   $	��Top=�6P   $��75��6h   6s   �� 5   
   -   5        $��Cancel��5      $
��Left=�6"   $��687,617,0,0q�6=   $	��Top=�6R   $��75��6j   6u   �� 5   
   $��ΑΜΚΑ��6   $
��Left=�6   $��	10,93,0,0q�6:   $	��Top=�6M   �� 5   
   -   5        $ AMKATxt��5      $
��Left=�6#   $��23��6>   $��
133,96,0,0q�6J   $
 Wrap=�6^   $	��Top=�6r   $	��120��6�   5      5      