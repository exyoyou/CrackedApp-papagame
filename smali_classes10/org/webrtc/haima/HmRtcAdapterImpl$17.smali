.class Lorg/webrtc/haima/HmRtcAdapterImpl$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onConnectionIPChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field final synthetic val$ipList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$17;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$17;->val$ipList:Ljava/lang/String;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$17;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

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
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$17;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 9
    .line 10
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$17;->val$ipList:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$17;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 26
    .line 27
    invoke-static {v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2, v1}, Lorg/webrtc/haima/HmStreamerCallback;->onCurrentIpAddress(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 37
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "Failed to parse ipList json string: "

    .line 42
    .line 43
    invoke-static {v2, v3, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw v1
.end method
