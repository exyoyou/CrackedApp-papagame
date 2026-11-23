.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->notifyStasticInfo(IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;JILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$value:J

    .line 4
    .line 5
    iput p4, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$type:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$data:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-wide v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$value:J

    .line 24
    .line 25
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$type:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    const-wide/16 v4, 0x19

    .line 30
    .line 31
    cmp-long v0, v2, v4

    .line 32
    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/util/Random;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/lit8 v0, v0, 0x14

    .line 46
    .line 47
    int-to-long v2, v0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v4, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$type:I

    .line 59
    .line 60
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$data:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v0, v4, v2, v3, v5}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onPlayStatus(IJLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$type:I

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-wide v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$value:J

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmPlayerBitRate(J)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$data:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPlayerFrameSize:Ljava/lang/String;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v2, 0x1

    .line 88
    if-ne v0, v2, :cond_4

    .line 89
    .line 90
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-wide v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$value:J

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmPlayerFPS(J)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    if-ne v0, v1, :cond_5

    .line 103
    .line 104
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 105
    .line 106
    iget-wide v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;->val$value:J

    .line 107
    .line 108
    iput-wide v1, v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPlayerDecodeTime:J

    .line 109
    .line 110
    :cond_5
    :goto_0
    return-void
.end method
