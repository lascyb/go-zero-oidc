CREATE TABLE consents (
    id VARCHAR(36) PRIMARY KEY,           -- 同意记录UUID
    user_id VARCHAR(36) NOT NULL,         -- 用户ID
    client_id VARCHAR(36) NOT NULL,       -- 客户端ID
    scopes TEXT NOT NULL,                 -- 同意的范围，JSON格式
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,                 -- 过期时间 (可选)
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE,
    UNIQUE(user_id, client_id)
);