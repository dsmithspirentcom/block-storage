CREATE EXTERNAL TABLE IF NOT EXISTS [your database].block_storage_fio (
  active_range TINYINT,
  benchmark_version VARCHAR(8),
  collectd_rrd VARCHAR(255),
  fio_command VARCHAR(1024),
  fio_version VARCHAR(8),
  iodepth_level_1 FLOAT,
  iodepth_level_16 FLOAT,
  iodepth_level_2 FLOAT,
  iodepth_level_32 FLOAT,
  iodepth_level_4 FLOAT,
  iodepth_level_8 FLOAT,
  iodepth_level_gte64 FLOAT,
  iteration TINYINT,
  jobname VARCHAR(32),
  latency_ms_10 FLOAT,
  latency_ms_100 FLOAT,
  latency_ms_1000 FLOAT,
  latency_ms_2 FLOAT,
  latency_ms_20 FLOAT,
  latency_ms_2000 FLOAT,
  latency_ms_250 FLOAT,
  latency_ms_4 FLOAT,
  latency_ms_50 FLOAT,
  latency_ms_500 FLOAT,
  latency_ms_750 FLOAT,
  latency_ms_gte2000 FLOAT,
  latency_us_10 FLOAT,
  latency_us_100 FLOAT,
  latency_us_1000 FLOAT,
  latency_us_2 FLOAT,
  latency_us_20 FLOAT,
  latency_us_250 FLOAT,
  latency_us_4 FLOAT,
  latency_us_50 FLOAT,
  latency_us_500 FLOAT,
  latency_us_750 FLOAT,
  majf INT,
  meltdown_vulnerable TINYINT,
  meta_burst TINYINT,
  meta_compute_service VARCHAR(32),
  meta_compute_service_id VARCHAR(24),
  meta_cpu VARCHAR(32),
  meta_cpu_cache VARCHAR(32),
  meta_cpu_cores TINYINT,
  meta_cpu_speed FLOAT,
  meta_drive_interface VARCHAR(16),
  meta_drive_model VARCHAR(16),
  meta_drive_type VARCHAR(16),
  meta_encryption TINYINT,
  meta_host_cache VARCHAR(5),
  meta_hostname VARCHAR(64),
  meta_instance_id VARCHAR(96),
  meta_memory VARCHAR(32),
  meta_memory_gb SMALLINT,
  meta_memory_mb INT,
  meta_os_info VARCHAR(32),
  meta_piops INT,
  meta_provider VARCHAR(32),
  meta_provider_id VARCHAR(24),
  meta_pthroughput INT,
  meta_region VARCHAR(32),
  meta_resource_id VARCHAR(32),
  meta_run_id VARCHAR(32),
  meta_storage_config VARCHAR(32),
  meta_storage_vol_info VARCHAR(32),
  meta_test_id VARCHAR(64),
  meta_test_sw VARCHAR(64),
  minf INT,
  noprecondition TINYINT,
  noprecondition_rotational TINYINT,
  nopurge TINYINT,
  nopurge_ignore TINYINT,
  norandom TINYINT,
  nosecureerase TINYINT,
  notrim TINYINT,
  nozerofill TINYINT,
  nozerofill_non_rotational TINYINT,
  oio_per_thread SMALLINT,
  precondition_once TINYINT,
  precondition_passes TINYINT,
  purge_methods VARCHAR(255),
  purge_once TINYINT,
  read_bw INT,
  read_bw_agg FLOAT,
  read_bw_dev FLOAT,
  read_bw_max INT,
  read_bw_mean FLOAT,
  read_bw_min INT,
  read_clat_max INT,
  read_clat_mean FLOAT,
  read_clat_min INT,
  read_clat_percentile_1 INT,
  read_clat_percentile_10 INT,
  read_clat_percentile_20 INT,
  read_clat_percentile_30 INT,
  read_clat_percentile_40 INT,
  read_clat_percentile_5 INT,
  read_clat_percentile_50 INT,
  read_clat_percentile_60 INT,
  read_clat_percentile_70 INT,
  read_clat_percentile_80 INT,
  read_clat_percentile_90 INT,
  read_clat_percentile_95 INT,
  read_clat_percentile_99 INT,
  read_clat_percentile_99_5 INT,
  read_clat_percentile_99_9 INT,
  read_clat_percentile_99_95 INT,
  read_clat_percentile_99_99 INT,
  read_clat_stddev FLOAT,
  read_io_bytes BIGINT,
  read_iops INT,
  read_lat_max INT,
  read_lat_mean FLOAT,
  read_lat_min INT,
  read_lat_stddev FLOAT,
  read_runtime INT,
  read_slat_max INT,
  read_slat_mean FLOAT,
  read_slat_min INT,
  read_slat_stddev FLOAT,
  report_pdf VARCHAR(255),
  report_zip VARCHAR(255),
  skip_blocksize VARCHAR(64),
  skip_workload VARCHAR(64),
  spectre_meltdown_report VARCHAR(255),
  spectre_variant1_vulnerable TINYINT,
  spectre_variant2_vulnerable TINYINT,
  started TIMESTAMP,
  stopped TIMESTAMP,
  sys_cpu FLOAT,
  target VARCHAR(128),
  target_count TINYINT,
  target_size_gb SMALLINT,
  target_sizes VARCHAR(255),
  test VARCHAR(12),
  test_started TIMESTAMP,
  test_stopped TIMESTAMP,
  threads TINYINT,
  threads_total TINYINT,
  timeout INT,
  usr_cpu FLOAT,
  wd_sleep_between VARCHAR(64),
  wd_test_duration SMALLINT,
  write_bw INT,
  write_bw_agg FLOAT,
  write_bw_dev FLOAT,
  write_bw_max INT,
  write_bw_mean FLOAT,
  write_bw_min INT,
  write_clat_max INT,
  write_clat_mean FLOAT,
  write_clat_min INT,
  write_clat_percentile_1 INT,
  write_clat_percentile_10 INT,
  write_clat_percentile_20 INT,
  write_clat_percentile_30 INT,
  write_clat_percentile_40 INT,
  write_clat_percentile_5 INT,
  write_clat_percentile_50 INT,
  write_clat_percentile_60 INT,
  write_clat_percentile_70 INT,
  write_clat_percentile_80 INT,
  write_clat_percentile_90 INT,
  write_clat_percentile_95 INT,
  write_clat_percentile_99 INT,
  write_clat_percentile_99_5 INT,
  write_clat_percentile_99_9 INT,
  write_clat_percentile_99_95 INT,
  write_clat_percentile_99_99 INT,
  write_clat_stddev FLOAT,
  write_io_bytes BIGINT,
  write_iops INT,
  write_lat_max INT,
  write_lat_mean FLOAT,
  write_lat_min INT,
  write_lat_stddev FLOAT,
  write_runtime INT,
  write_slat_max INT,
  write_slat_mean FLOAT,
  write_slat_min INT,
  write_slat_stddev FLOAT
)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
LOCATION 's3://[your S3 bucket]/path/to/csv/files/block_storage_fio_1_0/'
TBLPROPERTIES (
  'skip.header.line.count'='1'
);


CREATE EXTERNAL TABLE IF NOT EXISTS [your database].block_storage_iops (
  active_range TINYINT,
  benchmark_version VARCHAR(8),
  collectd_rrd VARCHAR(255),
  fio_version VARCHAR(8),
  iops_128k_0_100 INT,
  iops_128k_100_0 INT,
  iops_128k_35_65 INT,
  iops_128k_50_50 INT,
  iops_128k_5_95 INT,
  iops_128k_65_35 INT,
  iops_128k_95_5 INT,
  iops_16k_0_100 INT,
  iops_16k_100_0 INT,
  iops_16k_35_65 INT,
  iops_16k_50_50 INT,
  iops_16k_5_95 INT,
  iops_16k_65_35 INT,
  iops_16k_95_5 INT,
  iops_1m_0_100 INT,
  iops_1m_100_0 INT,
  iops_1m_35_65 INT,
  iops_1m_50_50 INT,
  iops_1m_5_95 INT,
  iops_1m_65_35 INT,
  iops_1m_95_5 INT,
  iops_32k_0_100 INT,
  iops_32k_100_0 INT,
  iops_32k_35_65 INT,
  iops_32k_50_50 INT,
  iops_32k_5_95 INT,
  iops_32k_65_35 INT,
  iops_32k_95_5 INT,
  iops_4k_0_100 INT,
  iops_4k_100_0 INT,
  iops_4k_35_65 INT,
  iops_4k_50_50 INT,
  iops_4k_5_95 INT,
  iops_4k_65_35 INT,
  iops_4k_95_5 INT,
  iops_512b_0_100 INT,
  iops_512b_100_0 INT,
  iops_512b_35_65 INT,
  iops_512b_50_50 INT,
  iops_512b_5_95 INT,
  iops_512b_65_35 INT,
  iops_512b_95_5 INT,
  iops_64k_0_100 INT,
  iops_64k_100_0 INT,
  iops_64k_35_65 INT,
  iops_64k_50_50 INT,
  iops_64k_5_95 INT,
  iops_64k_65_35 INT,
  iops_64k_95_5 INT,
  iops_8k_0_100 INT,
  iops_8k_100_0 INT,
  iops_8k_35_65 INT,
  iops_8k_50_50 INT,
  iops_8k_5_95 INT,
  iops_8k_65_35 INT,
  iops_8k_95_5 INT,
  iteration TINYINT,
  meltdown_vulnerable TINYINT,
  meta_burst TINYINT,
  meta_compute_service VARCHAR(32),
  meta_compute_service_id VARCHAR(24),
  meta_cpu VARCHAR(32),
  meta_cpu_cache VARCHAR(32),
  meta_cpu_cores TINYINT,
  meta_cpu_speed FLOAT,
  meta_drive_interface VARCHAR(16),
  meta_drive_model VARCHAR(16),
  meta_drive_type VARCHAR(16),
  meta_encryption TINYINT,
  meta_host_cache VARCHAR(5),
  meta_hostname VARCHAR(64),
  meta_instance_id VARCHAR(96),
  meta_memory VARCHAR(32),
  meta_memory_gb SMALLINT,
  meta_memory_mb INT,
  meta_os_info VARCHAR(32),
  meta_piops INT,
  meta_provider VARCHAR(32),
  meta_provider_id VARCHAR(24),
  meta_pthroughput INT,
  meta_region VARCHAR(32),
  meta_resource_id VARCHAR(32),
  meta_run_id VARCHAR(32),
  meta_storage_config VARCHAR(32),
  meta_storage_vol_info VARCHAR(32),
  meta_test_id VARCHAR(64),
  meta_test_sw VARCHAR(64),
  noprecondition TINYINT,
  noprecondition_rotational TINYINT,
  nopurge TINYINT,
  nopurge_ignore TINYINT,
  norandom TINYINT,
  nosecureerase TINYINT,
  notrim TINYINT,
  nozerofill TINYINT,
  nozerofill_non_rotational TINYINT,
  oio_per_thread SMALLINT,
  precondition_once TINYINT,
  precondition_passes TINYINT,
  purge_methods VARCHAR(255),
  purge_once TINYINT,
  report_pdf VARCHAR(255),
  report_zip VARCHAR(255),
  skip_blocksize VARCHAR(64),
  skip_workload VARCHAR(64),
  spectre_meltdown_report VARCHAR(255),
  spectre_variant1_vulnerable TINYINT,
  spectre_variant2_vulnerable TINYINT,
  ss_average FLOAT,
  ss_largest_data_excursion FLOAT,
  ss_largest_slope_excursion FLOAT,
  ss_linear_fit_formula VARCHAR(64),
  ss_max_data_excursion FLOAT,
  ss_max_rounds TINYINT,
  ss_max_slope_excursion FLOAT,
  ss_rounds VARCHAR(16),
  ss_slope FLOAT,
  ss_start TINYINT,
  ss_stop TINYINT,
  ss_verification TINYINT,
  ss_y_intercept FLOAT,
  target VARCHAR(128),
  target_count TINYINT,
  target_size_gb SMALLINT,
  target_sizes VARCHAR(255),
  test VARCHAR(12),
  test_started TIMESTAMP,
  test_stopped TIMESTAMP,
  threads TINYINT,
  threads_total TINYINT,
  timeout INT,
  wd_sleep_between VARCHAR(64),
  wd_test_duration SMALLINT
)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
LOCATION 's3://[your S3 bucket]/path/to/csv/files/block_storage_iops_1_0/'
TBLPROPERTIES (
  'skip.header.line.count'='1'
);


CREATE EXTERNAL TABLE IF NOT EXISTS [your database].block_storage_latency (
  active_range TINYINT,
  benchmark_version VARCHAR(8),
  collectd_rrd VARCHAR(255),
  fio_version VARCHAR(8),
  iteration TINYINT,
  latency_16k_0_100_max FLOAT,
  latency_16k_0_100_mean FLOAT,
  latency_16k_100_0_max FLOAT,
  latency_16k_100_0_mean FLOAT,
  latency_16k_65_35_max FLOAT,
  latency_16k_65_35_mean FLOAT,
  latency_4k_0_100_max FLOAT,
  latency_4k_0_100_mean FLOAT,
  latency_4k_100_0_max FLOAT,
  latency_4k_100_0_mean FLOAT,
  latency_4k_65_35_max FLOAT,
  latency_4k_65_35_mean FLOAT,
  latency_512b_0_100_max FLOAT,
  latency_512b_0_100_mean FLOAT,
  latency_512b_100_0_max FLOAT,
  latency_512b_100_0_mean FLOAT,
  latency_512b_65_35_max FLOAT,
  latency_512b_65_35_mean FLOAT,
  latency_8k_0_100_max FLOAT,
  latency_8k_0_100_mean FLOAT,
  latency_8k_100_0_max FLOAT,
  latency_8k_100_0_mean FLOAT,
  latency_8k_65_35_max FLOAT,
  latency_8k_65_35_mean FLOAT,
  meltdown_vulnerable TINYINT,
  meta_burst TINYINT,
  meta_compute_service VARCHAR(32),
  meta_compute_service_id VARCHAR(24),
  meta_cpu VARCHAR(32),
  meta_cpu_cache VARCHAR(32),
  meta_cpu_cores TINYINT,
  meta_cpu_speed FLOAT,
  meta_drive_interface VARCHAR(16),
  meta_drive_model VARCHAR(16),
  meta_drive_type VARCHAR(16),
  meta_encryption TINYINT,
  meta_host_cache VARCHAR(5),
  meta_hostname VARCHAR(64),
  meta_instance_id VARCHAR(96),
  meta_memory VARCHAR(32),
  meta_memory_gb SMALLINT,
  meta_memory_mb INT,
  meta_os_info VARCHAR(32),
  meta_piops INT,
  meta_provider VARCHAR(32),
  meta_provider_id VARCHAR(24),
  meta_pthroughput INT,
  meta_region VARCHAR(32),
  meta_resource_id VARCHAR(32),
  meta_run_id VARCHAR(32),
  meta_storage_config VARCHAR(32),
  meta_storage_vol_info VARCHAR(32),
  meta_test_id VARCHAR(64),
  meta_test_sw VARCHAR(64),
  noprecondition TINYINT,
  noprecondition_rotational TINYINT,
  nopurge TINYINT,
  nopurge_ignore TINYINT,
  norandom TINYINT,
  nosecureerase TINYINT,
  notrim TINYINT,
  nozerofill TINYINT,
  nozerofill_non_rotational TINYINT,
  oio_per_thread SMALLINT,
  precondition_once TINYINT,
  precondition_passes TINYINT,
  purge_methods VARCHAR(255),
  purge_once TINYINT,
  report_pdf VARCHAR(255),
  report_zip VARCHAR(255),
  skip_blocksize VARCHAR(64),
  skip_workload VARCHAR(64),
  spectre_meltdown_report VARCHAR(255),
  spectre_variant1_vulnerable TINYINT,
  spectre_variant2_vulnerable TINYINT,
  ss_average FLOAT,
  ss_largest_data_excursion FLOAT,
  ss_largest_slope_excursion FLOAT,
  ss_linear_fit_formula VARCHAR(64),
  ss_max_data_excursion FLOAT,
  ss_max_rounds TINYINT,
  ss_max_slope_excursion FLOAT,
  ss_rounds VARCHAR(16),
  ss_slope FLOAT,
  ss_start TINYINT,
  ss_stop TINYINT,
  ss_verification TINYINT,
  ss_y_intercept FLOAT,
  target VARCHAR(128),
  target_count TINYINT,
  target_size_gb SMALLINT,
  target_sizes VARCHAR(255),
  test VARCHAR(12),
  test_started TIMESTAMP,
  test_stopped TIMESTAMP,
  threads TINYINT,
  threads_total TINYINT,
  timeout INT,
  wd_sleep_between VARCHAR(64),
  wd_test_duration SMALLINT
)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
LOCATION 's3://[your S3 bucket]/path/to/csv/files/block_storage_latency_1_0/'
TBLPROPERTIES (
  'skip.header.line.count'='1'
);


CREATE EXTERNAL TABLE IF NOT EXISTS [your database].block_storage_throughput (
  active_range TINYINT,
  benchmark_version VARCHAR(8),
  collectd_rrd VARCHAR(255),
  fio_version VARCHAR(8),
  iteration TINYINT,
  meltdown_vulnerable TINYINT,
  meta_burst TINYINT,
  meta_compute_service VARCHAR(32),
  meta_compute_service_id VARCHAR(24),
  meta_cpu VARCHAR(32),
  meta_cpu_cache VARCHAR(32),
  meta_cpu_cores TINYINT,
  meta_cpu_speed FLOAT,
  meta_drive_interface VARCHAR(16),
  meta_drive_model VARCHAR(16),
  meta_drive_type VARCHAR(16),
  meta_encryption TINYINT,
  meta_host_cache VARCHAR(5),
  meta_hostname VARCHAR(64),
  meta_instance_id VARCHAR(96),
  meta_memory VARCHAR(32),
  meta_memory_gb SMALLINT,
  meta_memory_mb INT,
  meta_os_info VARCHAR(32),
  meta_piops INT,
  meta_provider VARCHAR(32),
  meta_provider_id VARCHAR(24),
  meta_pthroughput INT,
  meta_region VARCHAR(32),
  meta_resource_id VARCHAR(32),
  meta_run_id VARCHAR(32),
  meta_storage_config VARCHAR(32),
  meta_storage_vol_info VARCHAR(32),
  meta_test_id VARCHAR(64),
  meta_test_sw VARCHAR(64),
  noprecondition TINYINT,
  noprecondition_rotational TINYINT,
  nopurge TINYINT,
  nopurge_ignore TINYINT,
  norandom TINYINT,
  nosecureerase TINYINT,
  notrim TINYINT,
  nozerofill TINYINT,
  nozerofill_non_rotational TINYINT,
  oio_per_thread SMALLINT,
  precondition_once TINYINT,
  precondition_passes TINYINT,
  purge_methods VARCHAR(255),
  purge_once TINYINT,
  report_pdf VARCHAR(255),
  report_zip VARCHAR(255),
  skip_blocksize VARCHAR(64),
  skip_workload VARCHAR(64),
  spectre_meltdown_report VARCHAR(255),
  spectre_variant1_vulnerable TINYINT,
  spectre_variant2_vulnerable TINYINT,
  ss_average FLOAT,
  ss_largest_data_excursion FLOAT,
  ss_largest_slope_excursion FLOAT,
  ss_linear_fit_formula VARCHAR(64),
  ss_max_data_excursion FLOAT,
  ss_max_rounds TINYINT,
  ss_max_slope_excursion FLOAT,
  ss_rounds VARCHAR(16),
  ss_slope FLOAT,
  ss_start TINYINT,
  ss_stop TINYINT,
  ss_verification TINYINT,
  ss_y_intercept FLOAT,
  target VARCHAR(128),
  target_count TINYINT,
  target_size_gb SMALLINT,
  target_sizes VARCHAR(255),
  test VARCHAR(12),
  test_started TIMESTAMP,
  test_stopped TIMESTAMP,
  threads TINYINT,
  threads_total TINYINT,
  throughput_1024k_0_100 FLOAT,
  throughput_1024k_100_0 FLOAT,
  throughput_128k_0_100 FLOAT,
  throughput_128k_100_0 FLOAT,
  timeout INT,
  wd_sleep_between VARCHAR(64),
  wd_test_duration SMALLINT
)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
LOCATION 's3://[your S3 bucket]/path/to/csv/files/block_storage_throughput_1_0/'
TBLPROPERTIES (
  'skip.header.line.count'='1'
);


CREATE EXTERNAL TABLE IF NOT EXISTS [your database].block_storage_wsat (
  active_range TINYINT,
  benchmark_version VARCHAR(8),
  collectd_rrd VARCHAR(255),
  fio_version VARCHAR(8),
  iteration TINYINT,
  meltdown_vulnerable TINYINT,
  meta_burst TINYINT,
  meta_compute_service VARCHAR(32),
  meta_compute_service_id VARCHAR(24),
  meta_cpu VARCHAR(32),
  meta_cpu_cache VARCHAR(32),
  meta_cpu_cores TINYINT,
  meta_cpu_speed FLOAT,
  meta_drive_interface VARCHAR(16),
  meta_drive_model VARCHAR(16),
  meta_drive_type VARCHAR(16),
  meta_encryption TINYINT,
  meta_host_cache VARCHAR(5),
  meta_hostname VARCHAR(64),
  meta_instance_id VARCHAR(96),
  meta_memory VARCHAR(32),
  meta_memory_gb SMALLINT,
  meta_memory_mb INT,
  meta_os_info VARCHAR(32),
  meta_piops INT,
  meta_provider VARCHAR(32),
  meta_provider_id VARCHAR(24),
  meta_pthroughput INT,
  meta_region VARCHAR(32),
  meta_resource_id VARCHAR(32),
  meta_run_id VARCHAR(32),
  meta_storage_config VARCHAR(32),
  meta_storage_vol_info VARCHAR(32),
  meta_test_id VARCHAR(64),
  meta_test_sw VARCHAR(64),
  noprecondition TINYINT,
  noprecondition_rotational TINYINT,
  nopurge TINYINT,
  nopurge_ignore TINYINT,
  norandom TINYINT,
  nosecureerase TINYINT,
  notrim TINYINT,
  nozerofill TINYINT,
  nozerofill_non_rotational TINYINT,
  oio_per_thread SMALLINT,
  precondition_once TINYINT,
  precondition_passes TINYINT,
  purge_methods VARCHAR(255),
  purge_once TINYINT,
  report_pdf VARCHAR(255),
  report_zip VARCHAR(255),
  skip_blocksize VARCHAR(64),
  skip_workload VARCHAR(64),
  spectre_meltdown_report VARCHAR(255),
  spectre_variant1_vulnerable TINYINT,
  spectre_variant2_vulnerable TINYINT,
  target VARCHAR(128),
  target_count TINYINT,
  target_size_gb SMALLINT,
  target_sizes VARCHAR(255),
  test VARCHAR(12),
  test_started TIMESTAMP,
  test_stopped TIMESTAMP,
  threads TINYINT,
  threads_total TINYINT,
  timeout INT,
  wd_sleep_between VARCHAR(64),
  wd_test_duration SMALLINT,
  wsat_iops INT
)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
LOCATION 's3://[your S3 bucket]/path/to/csv/files/block_storage_wsat_1_0/'
TBLPROPERTIES (
  'skip.header.line.count'='1'
);