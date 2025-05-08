CREATE TABLE resources (
    id VARCHAR(36) PRIMARY KEY,           -- 资源UUID
    name VARCHAR(100) NOT NULL,           -- 资源名称
    display_name VARCHAR(200),            -- 显示名称
    description TEXT,                     -- 描述
    resource_type VARCHAR(50) NOT NULL,   -- 资源类型
    resource_uri VARCHAR(2000),           -- 资源URI
    scopes TEXT,                          -- 支持的作用域，JSON格式
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    UNIQUE(name)
);