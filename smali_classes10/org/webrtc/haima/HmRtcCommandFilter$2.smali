.class Lorg/webrtc/haima/HmRtcCommandFilter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcCommandFilter;->onReceiveBinary([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcCommandFilter;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcCommandFilter;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcCommandFilter$2;->this$0:Lorg/webrtc/haima/HmRtcCommandFilter;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcCommandFilter$2;->val$data:[B

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
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcCommandFilter$2;->this$0:Lorg/webrtc/haima/HmRtcCommandFilter;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcCommandFilter;->access$000(Lorg/webrtc/haima/HmRtcCommandFilter;)Lorg/webrtc/haima/HmRtcCommandFilter$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcCommandFilter$2;->val$data:[B

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lorg/webrtc/haima/HmRtcCommandFilter$Listener;->onBinMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "onBinMessage ex:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "HmRtcCommandFilter"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
