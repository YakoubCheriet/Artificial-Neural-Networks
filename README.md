# Artificial-Neural-Networks
Neural Network Traning, Using Matlab "nntool"


----------
First stage :
The enter (Input / Output): The enter of neural networks are
randomly generated with the script with the name “Generate_Notes”
which will generate notes from 100 students and save them in a le
Excel with the name “Notes” with the means correspond calculate with
coe cients of the second semester Master 1 STIC of the di erent modules and again save them in an Excel file “Averages”

----------
Toolbox configuration:
• Put them in notes (in my case the le 'Input.mat') and the average output 'Output.mat'
• Choose the training function: TRAINLLM
• Choose the adaptation function: LEARNGDM
• And the MSE performance function, which calculates the error rate
• The number of neurons and stay by default '10'

![Toolbox configuration](https://github.com/YakoubCheriet/Artificial-Neural-Networks/blob/master/Implimentation/NNTool/Network%20Options.PNG?raw=true)

![Toolbox configuration](https://github.com/YakoubCheriet/Artificial-Neural-Networks/blob/master/Implimentation/NNTool/nntool.PNG?raw=true)

After con guration on a leash, the network trains, it will calculate after
the weights with an error rate (in my case 10ˆ -3 to 10ˆ -2)

And gives us the following performance: 
![performance](https://github.com/YakoubCheriet/Artificial-Neural-Networks/blob/master/Implimentation/NNTool/Performance.PNG?raw=true)

With the following training state:
![training state](https://github.com/YakoubCheriet/Artificial-Neural-Networks/blob/master/Implimentation/NNTool/Etats%20d'entrainement.PNG?raw=true)

With the following progression:
![progression](https://github.com/YakoubCheriet/Artificial-Neural-Networks/blob/master/Implimentation/NNTool/Progression.PNG?raw=true)

The result is in the form of a matrix in the two files 'Cal_Moyen_Errors.mat' and 'Cal_Moyen_Output.mat' which contains the weights calculated during training

----------
Execution part:

The Main: launches an interface or the selection of a list of notes from an Excel file
The calculation is done by clicking on calculate
It will return the result with the average and the decision (ADMITTED or REJECTED)
