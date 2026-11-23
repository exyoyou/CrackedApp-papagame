.class Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->notifyStasticInfo(IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;JILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$value:J

    .line 4
    .line 5
    iput p4, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$type:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$data:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$value:J

    .line 16
    .line 17
    iget v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$type:I

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    const-wide/16 v4, 0x19

    .line 22
    .line 23
    cmp-long v0, v2, v4

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/util/Random;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, 0x14

    .line 38
    .line 39
    int-to-long v2, v0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v4, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$type:I

    .line 49
    .line 50
    iget-object v5, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$data:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v0, v4, v2, v3, v5}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onPlayStatus(IJLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$type:I

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 62
    .line 63
    iget-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$value:J

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmPlayerBitRate(J)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$data:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mPlayerFrameSize:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v2, 0x1

    .line 76
    if-ne v0, v2, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 81
    .line 82
    iget-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$value:J

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmPlayerFPS(J)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    if-ne v0, v1, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 91
    .line 92
    iget-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;->val$value:J

    .line 93
    .line 94
    iput-wide v1, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mPlayerDecodeTime:J

    .line 95
    .line 96
    :cond_5
    :goto_0
    return-void
.end method
