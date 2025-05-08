CREATE TABLE refresh_tokens (
    id VARCHAR(36) PRIMARY KEY,           -- 令牌UUID
    token VARCHAR(100) NOT NULL,          -- 令牌
    access_token_id VARCHAR(36) NOT NULL, -- 对应的访问令牌ID
    client_id VARCHAR(36) NOT NULL,       -- 客户端ID
    user_id VARCHAR(36) NOT NULL,         -- 用户ID
    scopes TEXT NOT NULL,                 -- 授权范围，JSON格式
    expires_at TIMESTAMP NOT NULL,        -- 过期时间
    revoked BOOLEAN NOT NULL DEFAULT false, -- 是否已撤销
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (access_token_id) REFERENCES access_tokens(id) ON DELETE CASCADE,
    FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE(token)
);