package handler

import (
	"net/http"

	"app/oidc/api/internal/logic"
	"app/oidc/api/internal/svc"
	"app/oidc/api/internal/types"
	"github.com/zeromicro/go-zero/rest/httpx"
)

func RevokeHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.RevokeTokenRequest
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := logic.NewRevokeLogic(r.Context(), svcCtx)
		resp, err := l.Revoke(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
