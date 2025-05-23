// Code generated by goctl. DO NOT EDIT.
// goctl 1.8.2

package types

type AuthorizeRequest struct {
	ResponseType string `form:"response_type"`          // 响应类型：code(授权码流程), token/id_token(隐式流程)
	ClientId     string `form:"client_id"`              // 客户端标识符
	RedirectUri  string `form:"redirect_uri"`           // 重定向URI，认证完成后将用户重定向到此地址
	Scope        string `form:"scope,optional"`         // 请求的授权范围，空格分隔，如：openid profile email
	State        string `form:"state,optional"`         // 客户端状态值，服务端会原样返回，用于防止CSRF攻击
	Nonce        string `form:"nonce,optional"`         // 随机字符串值，会包含在ID令牌中，用于防止重放攻击
	Display      string `form:"display,optional"`       // 认证界面展示方式：page(页面)、popup(弹窗)、touch(触屏)、wap(移动设备)
	Prompt       string `form:"prompt,optional"`        // 交互提示：none(不提示)、login(重新登录)、consent(确认授权)、select_account(选择账号)
	MaxAge       int    `form:"max_age,optional"`       // 用户认证的最大有效时间（秒），超过时强制重新认证
	UiLocales    string `form:"ui_locales,optional"`    // 界面首选区域和语言标记，空格分隔，按优先级排序
	IdTokenHint  string `form:"id_token_hint,optional"` // 之前颁发的ID令牌，用于请求重新认证或校验会话状态
	LoginHint    string `form:"login_hint,optional"`    // 登录标识提示，帮助用户识别要使用的账号
	AcrValues    string `form:"acr_values,optional"`    // 请求的认证上下文引用值，空格分隔，按优先级排序
}

type ErrorResponse struct {
	Error            string `json:"error"`                      // 错误代码，如：invalid_request、unauthorized_client、access_denied等
	ErrorDescription string `json:"error_description,optional"` // 错误的详细描述，提供更多上下文信息
	ErrorUri         string `json:"error_uri,optional"`         // 指向错误详细信息的URI
}

type RevokeResponse struct {
	Success bool   `json:"success"`          // 撤销是否成功
	Message string `json:"message,optional"` // 消息说明
}

type RevokeTokenRequest struct {
	Token         string `form:"token"`                    // 要撤销的令牌
	TokenTypeHint string `form:"token_type_hint,optional"` // 令牌类型提示：access_token或refresh_token
	ClientId      string `form:"client_id,optional"`       // 客户端标识符
	ClientSecret  string `form:"client_secret,optional"`   // 客户端密钥
}

type TokenRequest struct {
	GrantType    string `form:"grant_type"`             // 授权类型：authorization_code、refresh_token、client_credentials、password
	Code         string `form:"code,optional"`          // 授权码，从授权端点获取的授权码
	RedirectUri  string `form:"redirect_uri,optional"`  // 重定向URI，必须与获取授权码时使用的相同
	ClientId     string `form:"client_id,optional"`     // 客户端标识符
	ClientSecret string `form:"client_secret,optional"` // 客户端密钥，用于客户端认证
	RefreshToken string `form:"refresh_token,optional"` // 刷新令牌，用于获取新的访问令牌
	Scope        string `form:"scope,optional"`         // 请求的授权范围，不能超出原始授权范围
}

type TokenResponse struct {
	AccessToken  string `json:"access_token"`           // 访问令牌，用于访问受保护的资源
	TokenType    string `json:"token_type"`             // 令牌类型，通常为"Bearer"
	IdToken      string `json:"id_token,optional"`      // ID令牌，包含用户认证信息的JWT格式令牌
	ExpiresIn    int    `json:"expires_in"`             // 访问令牌的有效期（秒）
	RefreshToken string `json:"refresh_token,optional"` // 刷新令牌，用于获取新的访问令牌
	Scope        string `json:"scope,optional"`         // 已授权的范围，可能小于请求的范围
}

type UserInfoRequest struct {
	AccessToken string `header:"Authorization"` // 访问令牌，格式为"Bearer {token}"
}

type UserInfoResponse struct {
	Sub           string `json:"sub"`                     // 用户唯一标识
	Name          string `json:"name,optional"`           // 用户全名
	GivenName     string `json:"given_name,optional"`     // 用户名
	FamilyName    string `json:"family_name,optional"`    // 用户姓
	Email         string `json:"email,optional"`          // 电子邮件
	EmailVerified bool   `json:"email_verified,optional"` // 邮件是否已验证
	Picture       string `json:"picture,optional"`        // 头像URL
	Locale        string `json:"locale,optional"`         // 区域设置
	Birthdate     string `json:"birthdate,optional"`      // 出生日期
	PhoneNumber   string `json:"phone_number,optional"`   // 电话号码
	Address       string `json:"address,optional"`        // 地址信息
	UpdatedAt     int64  `json:"updated_at,optional"`     // 信息更新时间
}
