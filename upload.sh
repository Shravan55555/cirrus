if [ -f ~/rom/out/target/product/juice/Spark-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/juice/ && ls *.zip)"
      rclone copy ~/rom/out/target/product/juice/Spark-*.zip fm293:juice -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/juice/ && ls *.zip) Uploaded Successfully!"
fi