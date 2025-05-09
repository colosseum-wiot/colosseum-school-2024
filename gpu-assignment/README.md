# GPU Performance Testing with PyTorch on Colosseum

This document provides instructions for testing the performance of GPUs on Colosseum and running a PyTorch example for image classification using transfer learning.

The link for Example [Transfer Learning for Computer Vision Tutorial](https://pytorch.org/tutorials/beginner/transfer_learning_tutorial.html)

## Connecting to Colosseum

1. Connect to Colosseum VPN (instructions [here](https://colosseumwireless.readthedocs.io/en/latest/getting_started/cisco_anyconnect_remote_vpn_access.html) and login to [Colosseum website](https://experiments.colosseum.net)).

2. Connect to Colosseum and reserve a GPU with the PyTorch image (base-pytorch:1.0).

3. SSH into Colosseum using the following command:
    ```
    ssh root@host-name -p [port]
    ```
    **Note:** Replace `[port_number]` with the appropriate port number and `[host-name]` with your hostname. The default password is "ChangeMe".

## Terminal Setup

Once you have successfully SSHed into Colosseum, set up two terminals for different purposes:

1. Terminal 1: GPU Performance Monitoring
    ```
    nvidia-smi
    ```
    Use the `nvidia-smi` command to check the GPU status. If the GPUs are available, they should be displayed in the list.

2. Terminal 2: Model Training
    ```
    cd ~
    ```
    Change to your home directory to perform the following steps.

## Code Setup

1. Clone or copy the [code](https://github.com/pytorch/tutorials/blob/main/beginner_source/transfer_learning_tutorial.py) for the image classification example into the container. 

2. Download the [dataset](https://download.pytorch.org/tutorial/hymenoptera_data.zip) from the PyTorch website. You use `wget` or any other command. 

3. Create a directory named `data/` to store the dataset.
    ```
    mkdir data
    ```
4. Install unzip package
    ```
    sudo apt-get install unzip
    ```

6. Unzip the downloaded file into the `data/` directory. 
    ```
    unzip hymenoptera_data.zip -d data/
    ```

## Running the Example

1. Navigate to the directory where the code is located.

2. Run the code for transfer learning with PyTorch.
    ```
    python transfer_learning.py
    ```
3. Meanwhile it is training you check the status of the GPUs using nvidia-smi. 

4. You can see the saved the results by transfering them into your computer or use VS code or PyCharm.

Congratulations! You have successfully tested the performance of GPUs on Colosseum and executed the PyTorch example for image classification using transfer learning.
