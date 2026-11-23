.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/haima/ijk/media/player/IMediaPlayer;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mAudioPreparedListener===mAudioPlayer==SUCCESS"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v1, "audioUrl"

    .line 17
    .line 18
    const-string v2, "success"

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isAudioConnectSuccess:Z

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "cloudPlayInfo == null,can\'t set ijkVideoView.getCloudPlayInfo().isAudioConnectSuccess = true"

    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    const-string p1, "12033"

    .line 74
    .line 75
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1700(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->start()V

    .line 85
    .line 86
    .line 87
    return-void
.end method
