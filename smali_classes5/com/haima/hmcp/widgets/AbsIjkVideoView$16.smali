.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->enableHighBitrate(ZLcom/haima/hmcp/listeners/OnEnableHighBitrateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$enable:Z

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;ZLcom/haima/hmcp/listeners/OnEnableHighBitrateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;->val$enable:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;->val$listener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->enableHighBitrateRequesting:Z

    .line 5
    .line 6
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->enableHighBitrate:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->setHighBitrateEnable(Ljava/lang/Boolean;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;->val$listener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;->onFail(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->enableHighBitrateRequesting:Z

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;->val$enable:Z

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->enableHighBitrate:Ljava/lang/Boolean;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$16;->val$listener:Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/OnEnableHighBitrateListener;->onSuccess()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
