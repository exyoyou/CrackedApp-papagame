.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationStreamingTimeOut;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitOperationStreamingTimeOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationStreamingTimeOut;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationStreamingTimeOut;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    const-string v0, "AbsIjkVideoView"

    .line 9
    .line 10
    const-string v1, "=OperationStream===game over no WaitOperationStreamingConfirm ===="

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->stopPlay(ZZ)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationStreamingTimeOut;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationStreamingTimeOut;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationStreamingTimeOut;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->waitStreamingTimeout(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
