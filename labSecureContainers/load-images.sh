curl -u administrator:workshop --data '{}' -X POST http://$(hostname):80/api/v1/scanner/registry/Docker%20Hub/image/ravitella%2fdocker-springboot-recommendationservice:latest/scan
curl -u administrator:workshop --data '{}' -X POST http://$(hostname):80/api/v1/scanner/registry/Docker%20Hub/image/ravitella%2fdocker-springboot-readinglistapplication:latest/scan
