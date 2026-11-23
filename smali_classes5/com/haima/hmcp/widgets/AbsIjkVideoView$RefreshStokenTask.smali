.class public Lcom/haima/hmcp/widgets/AbsIjkVideoView$RefreshStokenTask;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RefreshStokenTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RefreshStokenTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    const-string v0, "===RefreshStokenTask implements Runnable===="

    .line 2
    .line 3
    const-string v1, "AbsIjkVideoView"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RefreshStokenTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    iget v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    if-eq v2, v3, :cond_3

    .line 14
    .line 15
    iget v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isWaitStreamUrlPre()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v0, "refreshStoken cancel because pooled restart receive op4.5 but not receive op5"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "12200"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RefreshStokenTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1, v1, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectSocketIo(ZZZ)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RefreshStokenTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 48
    .line 49
    const/16 v2, 0x8

    .line 50
    .line 51
    const-string v3, ""

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RefreshStokenTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v2, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IIZ)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void

    .line 69
    :cond_3
    :goto_0
    const-string v0, "===game over no refresh ===="

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
