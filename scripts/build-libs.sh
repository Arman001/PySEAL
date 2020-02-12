echo "building SEAL c++ library..."
cd ../SEAL/
bash build-it.sh

cd ../scripts/
echo "building PySEAL python wrapper..."
pip3 install setuptools
pip3 install -r ../SEALPython/requirements.txt
git -C ../SEALPython/ clone https://github.com/pybind/pybind11.git
git -C ../SEALPython/pybind11/ checkout a303c6fc479662fd53eaa8990dbc65b7de9b7deb

echo "installing library"
cd ../SEALPython/
python3 setup.py build_ext -i

echo "...............sucess..............."
