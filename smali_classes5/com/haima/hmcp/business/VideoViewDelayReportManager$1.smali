.class Lcom/haima/hmcp/business/VideoViewDelayReportManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/VideoViewDelayReportManager;->reportRtcCodec(Lcom/haima/hmcp/beans/VideoDelayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/VideoViewDelayReportManager;

.field final synthetic val$baseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/VideoViewDelayReportManager;Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager$1;->this$0:Lcom/haima/hmcp/business/VideoViewDelayReportManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager$1;->val$baseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager$1;->val$baseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getStreamModel()Lcom/haima/hmcp/listeners/IStreamModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->getRtcPlayer()Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectRtc(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager$1;->val$baseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 22
    .line 23
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_weak:I

    .line 24
    .line 25
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/16 v2, 0x2711

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
