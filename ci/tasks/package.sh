#!/bin/sh




cd $inputDir
./mvnw clean package -Pci -DversionNumber=$version

# Copy war file to concourse output folder
cd ..
cp $inputDir/target/$artifactName $outputDir/$artifactName
