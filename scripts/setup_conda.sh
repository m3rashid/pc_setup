cd Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2023.07-2-Linux-x86_64.sh # or download the latest release from the anaconda download page
chmod +x ./Anaconda3-2023.07-2-Linux-x86_64.sh
./Anaconda3-2023.07-2-Linux-x86_64.sh

# Use the defaults untill this section arrives
# If you'd prefer that conda's base environment not be activated on startup, 
#   set the auto_activate_base parameter to false: 
# conda config --set auto_activate_base false
# Thank you for installing Anaconda3!

conda install -c conda-forge notebook
conda install -c conda-forge nb_conda_kernels

conda install -c conda-forge jupyterlab
conda install -c conda-forge nb_conda_kernels
