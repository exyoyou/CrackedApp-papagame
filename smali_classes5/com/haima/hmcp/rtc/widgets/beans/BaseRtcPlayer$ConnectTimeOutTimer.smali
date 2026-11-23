.class Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectTimeOutTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    sget p1, Lcom/haima/hmcp/Constants;->wertcConnectTimeout:I

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    int-to-long v2, p1

    .line 7
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectTimeout:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$400()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isWebrtcConnectTimeout = true"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectRtc(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
