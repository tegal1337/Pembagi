#!/usr/bin/env bash
clear

 toilet -f big  Pembagi | lolcat
echo "
      LoliC0d3 - Tegal1337

Tools Untuk Membagi List Menjadi Beberapa Bagian
Pilih Methode
1.Awk
2.Bash
3.Split
" | lolcat
read -p "senpai@tegalsec:~# " select

if [[ $select == 1 ]]; then
  echo "Menggunakan Awk"
  read -p "Masukan List Mu: " list
  read -p "Dibagi Jadi Berapa: " bagi
  echo "Sabar Boss.."
  echo "kalo ada lebih 1 itu itu sisanya boss"
  awk '{
      a[NR] = $0
  }
  END {
      for (i = 1; i in a; ++i) {
          x = (i * '$bagi' - 1) / NR + 1
          sub(/\..*$/, "", x)
          print a[i] > "file" x ".txt"
      }
  }' $list
  echo "Selesai Boss.."

elif [[ $select == 2 ]]; then
  echo "Menggunakan Bash"
  read -p "Masukan List Mu: " list
  read -p "Dibagi Jadi Berapa: " bagi
  echo "Sabar Boss.."
  readarray -t lines < $list
  hasil=${#lines[@]}
  for i in "${!lines[@]}"; do
      loli=$(( (i * $bagi - 1) / hasil + 1 ))
      echo "${lines[I]}" >> "file${loli}.txt"
  done
  echo "Selesai Boss.."

elif [[ $select == 3 ]]; then
  echo "Menggunakan Split"
  read -p "Masukan List Mu: " list
  read -p "Dibagi Jadi Berapa Mb: " bagi
  echo "Sabar Boss.."
  split -b $bagi'M' -d  $list file --additional-suffix=.txt
  echo "Selesai Boss.."
else
  echo "Sepertinya Mata Anda Kurang Sehat!"
fi
