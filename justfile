valuePath:="./section/*.tex"

ea:
  # Encrypt all values of machines.
  ls {{valuePath}} | xargs -n 1 sops encrypt -i

da:
  # Decrypt all values of machines.
  ls {{valuePath}} | xargs -n 1 sops decrypt -i
