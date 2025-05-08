CREATE TABLE sessions (
    id VARCHAR(36) PRIMARY KEY,           -- 会话UUID
    user_id VARCHAR(36) NOT NULL,         -- 用户ID
    ip_address VARCHAR(45),               -- IP地址
    user_agent TEXT,                      -- 用户代理
    expires_at TIMESTAMP NOT NULL,        -- 过期时间
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_active_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 最后活动时间
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);