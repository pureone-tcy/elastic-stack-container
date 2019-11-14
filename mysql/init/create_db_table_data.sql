use db_name;

create table if not exists table_name (
    table_id int unsigned not null
      comment 'table id',
    second_id int unsigned not null
      comment 'second id',
    create_datetime datetime(6) not null
      default current_timestamp(6)
    del_flg boolean not null default false
      comment 'del flg',

    primary key (table_id, second_id),
    index idx_second_id(second_id),
    index idx_del_flg(del_flg)
) comment='table name desc' engine=innodb default charset utf8;

load data local infile "/docker-entrypoint-initdb.d/data/data.csv " into table table_name fields terminated by ',';