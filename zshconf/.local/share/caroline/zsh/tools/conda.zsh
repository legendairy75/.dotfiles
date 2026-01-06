# Lazy load conda on first use
__conda_lazy_load(){
  #Remove stub functions
  unset -f conda python pip

  #Initulize conda
  if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
      . "$HOME/miniconda3/etc/profile.d/conda.sh"
  else
      export PATH="$HOME/miniconda3/bin:$PATH"
  fi

  #Rerun the original command
  "$@"
}

#Stub command
conda()  { __conda_lazy_load conda  "$@"; }
python() { __conda_lazy_load python "$@"; }
pip()    { __conda_lazy_load pip    "$@"; }
