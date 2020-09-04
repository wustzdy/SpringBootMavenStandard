--liquibase formatted sql

--changeset lvyunxiao:20200604-10
CREATE TABLE `iam_users` (
    `id` bigint(20) unsigned NOT NULL COMMENT '分布式主id',
    `tenant_id` bigint(20) unsigned NOT NULL COMMENT '所属租户id',
    `owned_by_id` bigint(20) unsigned NOT NULL COMMENT '拥有者account id',
    `created_by_id` bigint(20) unsigned NOT NULL COMMENT '创建者account id',
    `created_time` datetime NOT NULL COMMENT '创建的UTC时间',
    `updated_by_id` bigint(20) unsigned DEFAULT NULL COMMENT '最后更新者account id',
    `updated_time` datetime DEFAULT NULL COMMENT '最后更新的UTC时间',
    `version` bigint(20) NOT NULL DEFAULT 0 COMMENT '乐观锁版本控制字段',
    `extras` json DEFAULT NULL COMMENT '扩展属性',

    `display_name` varchar(128) NOT NULL COMMENT '显示名',

    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '用户账户表';
