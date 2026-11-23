.class Lorg/webrtc/haima/HmRtcAdapterImpl$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/webrtc/haima/HmRtcAdapterImpl$20;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl$20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20$1;->this$1:Lorg/webrtc/haima/HmRtcAdapterImpl$20;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20$1;->this$1:Lorg/webrtc/haima/HmRtcAdapterImpl$20;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 4
    .line 5
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$700(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20$1;->this$1:Lorg/webrtc/haima/HmRtcAdapterImpl$20;

    .line 11
    .line 12
    iget-object v1, v1, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 13
    .line 14
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20$1;->this$1:Lorg/webrtc/haima/HmRtcAdapterImpl$20;

    .line 21
    .line 22
    iget-object v1, v1, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 23
    .line 24
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Lorg/webrtc/haima/HmStreamerCallback;->onSignalV2RecvOffer()V

    .line 29
    .line 30
    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method
