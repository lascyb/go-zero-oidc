package logic

import (
	"context"

	"app/oidc/api/internal/svc"
	"app/oidc/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type RevokeLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewRevokeLogic(ctx context.Context, svcCtx *svc.ServiceContext) *RevokeLogic {
	return &RevokeLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *RevokeLogic) Revoke(req *types.RevokeTokenRequest) (resp *types.RevokeResponse, err error) {
	// todo: add your logic here and delete this line

	return
}
