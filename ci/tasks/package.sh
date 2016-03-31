#!/bin/sh

inputDir=  outputDir=  artifactId= 

while [ $# -gt 0 ]; do
  case $1 in
    -i | --input-dir )
      inputDir=$2
      shift
      ;;
    -o | --output-dir )
      outputDir=$2
      shift
      ;;
    -a | --artifactId )
      artifactId=$2
      shift
      ;;
    * )
      echo "Unrecognized option: $1" 1>&2
      exit 1
      ;;
  esac
  shift
done


artifactName="${artifactId}.jar"

cd $inputDir
./mvnw clean package -Pci -DversionNumber=$version

# Copy war file to concourse output folder
cd ..

cp $inputDir/manifest.yml package/manifest.yml
cp $inputDir/target/$artifactName $outputDir/$artifactName
