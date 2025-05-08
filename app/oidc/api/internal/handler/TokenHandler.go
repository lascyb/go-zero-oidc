package handler

import (
	"net/http"

	"app/oidc/api/internal/logic"
	"app/oidc/api/internal/svc"
	"app/oidc/api/internal/types"
	"github.com/zeromicro/go-zero/rest/httpx"
)

func TokenHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.TokenRequest
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := logic.NewTokenLogic(r.Context(), svcCtx)
		resp, err := l.Token(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
