CREATE TABLE authorization_codes (
    id VARCHAR(36) PRIMARY KEY,           -- 授权码UUID
    code VARCHAR(100) NOT NULL,           -- 授权码
    client_id VARCHAR(36) NOT NULL,       -- 客户端ID
    user_id VARCHAR(36) NOT NULL,         -- 用户ID
    redirect_uri VARCHAR(2000) NOT NULL,  -- 重定向URI
    expires_at TIMESTAMP NOT NULL,        -- 过期时间
    scopes TEXT NOT NULL,                 -- 授权范围，JSON格式
    code_challenge VARCHAR(128),          -- PKCE代码挑战
    code_challenge_method VARCHAR(20),    -- PKCE挑战方法
    nonce VARCHAR(100),                   -- 随机数
    used BOOLEAN NOT NULL DEFAULT false,  -- 是否已使用
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE(code)
);