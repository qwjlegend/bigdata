
register target/nutchdbloader-0.0.1-SNAPSHOT.jar
register /home/hadoop/hadoop-2.7.3/share/hadoop/tools/lib/hadoop-aws-2.7.3.jar 
register nutch-1.12.jar
loaded = load 's3n://nutchcrawler/nutchdb/segments/*/parse_data/part-*/data' using com.example.NutchParsedDataLoader();
filtered = filter loaded by $0 is not null;
dump filtered;
--store filtered into 'output';
