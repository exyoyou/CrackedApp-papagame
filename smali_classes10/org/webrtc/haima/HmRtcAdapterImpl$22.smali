.class Lorg/webrtc/haima/HmRtcAdapterImpl$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/HmBandWidthController$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->initBandWidthController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$22;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailableBandWidth(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$22;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$700(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$22;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 9
    .line 10
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$22;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 17
    .line 18
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lorg/webrtc/haima/HmStreamerCallback$MsgId;->AvailableBandWidth:Lorg/webrtc/haima/HmStreamerCallback$MsgId;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-interface {v1, v2, p1, p2, v3}, Lorg/webrtc/haima/HmStreamerCallback;->onCommonMessage(Lorg/webrtc/haima/HmStreamerCallback$MsgId;JLorg/webrtc/haima/HmStreamerCallback$MsgPayload;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v1, Lorg/webrtc/haima/HmBandWidthController;->kModuleName:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "AvailableBandWidthKbps:"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ","

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$22;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 49
    .line 50
    invoke-static {p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const-string p1, "have "

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string p1, "no "

    .line 60
    .line 61
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, "mStreamerCallback."

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p1
.end method
