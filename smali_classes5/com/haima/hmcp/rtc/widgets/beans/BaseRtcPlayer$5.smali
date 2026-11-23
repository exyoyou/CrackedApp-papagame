.class Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->onFirstFrameArrival()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$5;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$5;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->UiMessageSend(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$5;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isCallbackFirstFrameArrived:Z

    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$400()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "fold screen: FirstFrameArrived"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$5;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resolutionCheck()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
