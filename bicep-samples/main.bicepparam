using 'main.bicep'

param agentCount = 2
param agentVMSize = 'Standard_D2s_v5'
param dnsPrefix = 'aks-poc-buddy'
param linuxAdminUsername = 'clusteradmin'
param osDiskSizeGB = 30
param sshRSAPublicKey = 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDJJDDllWu071W4HoBBE6qXXnjb9euNlU/a/Bx4CZchWnzD94D0FURZ+Tyrcb+Ynx/aU+egRycpwQ2OisvWHl9Y55hzvDQnrJjGECd6UB28wNOj156V2sdFNPyZ41FCY13WA/ek+2U32qRGuix4UNc+z95Gvvajc1XnXJr4Q3j7vRwfrOF40EVSDjCMtaW4wzIdmnS9nh6N7fcDnkYegmadS+WPhzJtqR+GRbqsfq0TiDY36WLhoPw5A10TvmsWi2dOIjtdLdnxqu2LUu9wybR3MrAdXsGDGZoKpeVgCt14I9lqGjaZ8u/sJhDf3dwAo5MJyYGBP6phaGP0icaGszWXn49B54EImt9FSFZ83Sn9tXLYACU3+xFTYdvevaXdp5zdyBudFBIwoqIdD6PWlcBlcAz40uRuO0pye55Hr5nd3o8wASuEgjaU4EQsMKVHVtvXPlHTv5NmQgoAsZ0YPfN56JRWF9oZQiK1ahzmPJ6EFovQPW2syem4Q78Vxjvt4ac1CnOV4rXFJImmMbO1c85+n42SFiIxPuHnbFQ2rkHhUZG+IKv78zzb30ct3fV4yjzOqmfQgA7c6lk1DEn4n5T2wAz2IEmUP16k18zXjWIkuGXGng7eszHGBCjfuQTXneL/5MTsmbP2xnJvX9xDUO56CIWQXqQPtZJpXDJDB5PIjQ=='
