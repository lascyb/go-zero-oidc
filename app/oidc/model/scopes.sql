CREATE TABLE scopes (
    id VARCHAR(36) PRIMARY KEY,           -- 作用域UUID
    name VARCHAR(100) NOT NULL,           -- 作用域名称
    display_name VARCHAR(200),            -- 显示名称
    description TEXT,                     -- 描述
    is_default BOOLEAN DEFAULT false,     -- 是否默认作用域
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    UNIQUE(name)
);