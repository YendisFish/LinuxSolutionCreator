echo "Enter a directory to generate the solution in [End with '/']:"
read dir

echo "Enter a universal name:"
read univ

mkdir $dir

cd $dir

dotnet new sln

echo "Would you like to create a project for this too? [y/n]:"
read project

if [ $project == "y" ]
then
	echo "What type of project would you like to create? [I.E. console]:"
	read Type

	dotnet new $Type -o "${univ}"
	dotnet sln add "${univ}"
else
	echo "failed"
fi
