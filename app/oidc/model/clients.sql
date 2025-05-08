CREATE TABLE clients (
    id VARCHAR(36) PRIMARY KEY,          -- 客户端UUID
    client_id VARCHAR(100) NOT NULL,     -- 客户端ID (对外展示)
    client_secret VARCHAR(100) NOT NULL, -- 客户端密钥
    client_name VARCHAR(200) NOT NULL,   -- 客户端名称
    client_uri VARCHAR(2000),            -- 客户端网站地址
    logo_uri VARCHAR(2000),              -- 客户端logo地址
    redirect_uris TEXT NOT NULL,         -- 重定向URI列表，JSON格式
    allowed_cors_origins TEXT,           -- 允许的CORS源，JSON格式
    token_endpoint_auth_method VARCHAR(30) NOT NULL DEFAULT 'client_secret_basic', -- 客户端认证方式
    grant_types TEXT NOT NULL,           -- 允许的授权类型，JSON格式
    response_types TEXT NOT NULL,        -- 允许的响应类型，JSON格式
    scopes TEXT NOT NULL,                -- 允许的作用域，JSON格式
    contacts TEXT,                       -- 联系人列表，JSON格式
    policy_uri VARCHAR(2000),            -- 隐私政策地址
    tos_uri VARCHAR(2000),               -- 服务条款地址
    jwks_uri VARCHAR(2000),              -- JWKS地址
    jwks TEXT,                           -- JWKS内容，JSON格式
    software_id VARCHAR(36),             -- 软件ID
    software_version VARCHAR(36),        -- 软件版本
    client_type VARCHAR(20) NOT NULL DEFAULT 'confidential', -- 客户端类型：公开(public)或机密(confidential)
    sector_identifier_uri VARCHAR(2000), -- 扇区标识符URI
    subject_type VARCHAR(20) DEFAULT 'public', -- 主题类型：公开(public)或成对(pairwise)
    id_token_signed_response_alg VARCHAR(10) DEFAULT 'RS256', -- ID令牌签名算法
    id_token_encrypted_response_alg VARCHAR(10), -- ID令牌加密算法
    id_token_encrypted_response_enc VARCHAR(10), -- ID令牌加密编码
    access_token_ttl INTEGER DEFAULT 3600,       -- 访问令牌生存时间(秒)
    refresh_token_ttl INTEGER DEFAULT 86400,     -- 刷新令牌生存时间(秒)
    auth_code_ttl INTEGER DEFAULT 300,           -- 授权码生存时间(秒)
    active BOOLEAN NOT NULL DEFAULT true,        -- 是否激活
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    UNIQUE(client_id)
);