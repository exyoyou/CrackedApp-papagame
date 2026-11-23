.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationFive;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitOperationFive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationFive;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationFive;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const-string v3, "AbsIjkVideoView"

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const-string v0, "=OperationStream===game over no WaitOperationFive ===="

    .line 11
    .line 12
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGetControl:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "=OperationStream=WaitOperationFive time out, reapply 211"

    .line 21
    .line 22
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationFive;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->rePreparation()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$WaitOperationFive;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$300(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
