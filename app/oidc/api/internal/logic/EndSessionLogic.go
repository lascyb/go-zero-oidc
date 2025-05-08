package logic

import (
	"context"

	"app/oidc/api/internal/svc"
	"github.com/zeromicro/go-zero/core/logx"
)

type EndSessionLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewEndSessionLogic(ctx context.Context, svcCtx *svc.ServiceContext) *EndSessionLogic {
	return &EndSessionLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *EndSessionLogic) EndSession() (resp string, err error) {
	// todo: add your logic here and delete this line

	return
}
