.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FirstFrameTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    sget-wide v0, Lcom/haima/hmcp/Constants;->FIRST_FRAME_TIMEOUT:J

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FirstFrameTimer is time out"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->release(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    const-string v2, "First frame timeout"

    .line 20
    .line 21
    invoke-static {v0, v1, v1, v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$2300(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
