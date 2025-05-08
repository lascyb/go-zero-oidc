CREATE TABLE id_tokens (
    id VARCHAR(36) PRIMARY KEY,           -- ID令牌UUID
    jti VARCHAR(36) NOT NULL,             -- JWT ID
    client_id VARCHAR(36) NOT NULL,       -- 客户端ID
    user_id VARCHAR(36) NOT NULL,         -- 用户ID
    expires_at TIMESTAMP NOT NULL,        -- 过期时间
    scope TEXT NOT NULL,                  -- 作用域，JSON格式
    claims TEXT NOT NULL,                 -- 声明信息，JSON格式
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE(jti)
);