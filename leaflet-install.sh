echo "Install nodejs=8.10.0..."
conda install -c conda-forge nodejs=8.10.0 -y
echo ""

echo "Install ipyleaflet for jupyter..."
conda install -c conda-forge ipyleaflet -y
jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.34.0
jupyter labextension install jupyter-leaflet
echo "Finished."
