CREATE TABLE users (
    id VARCHAR(36) PRIMARY KEY,          -- 用户UUID
    username VARCHAR(100) NOT NULL,      -- 用户名
    password VARCHAR(100),               -- 密码(哈希值)
    email VARCHAR(255),                  -- 电子邮件
    email_verified BOOLEAN DEFAULT false,-- 邮箱是否已验证
    phone_number VARCHAR(20),            -- 电话号码
    phone_verified BOOLEAN DEFAULT false,-- 电话是否已验证
    given_name VARCHAR(100),             -- 名
    family_name VARCHAR(100),            -- 姓
    middle_name VARCHAR(100),            -- 中间名
    nickname VARCHAR(100),               -- 昵称
    profile VARCHAR(2000),               -- 个人资料URL
    picture VARCHAR(2000),               -- 头像URL
    website VARCHAR(2000),               -- 网站URL
    gender VARCHAR(10),                  -- 性别
    birthdate DATE,                      -- 出生日期
    zoneinfo VARCHAR(40),                -- 时区
    locale VARCHAR(20),                  -- 本地化设置
    address TEXT,                        -- 地址信息，JSON格式
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 更新时间
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 创建时间
    active BOOLEAN NOT NULL DEFAULT true,                   -- 是否激活
    
    UNIQUE(username),
    UNIQUE(email)
);