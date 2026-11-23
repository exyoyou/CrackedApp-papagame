.class Lorg/webrtc/haima/HmRtcCommandFilter$3;
.super Lorg/webrtc/haima/HmRtcCommandFilter$ChannelStateRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcCommandFilter;->onAvailable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcCommandFilter;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcCommandFilter;Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcCommandFilter$3;->this$0:Lorg/webrtc/haima/HmRtcCommandFilter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelStateRunnable;-><init>(Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcCommandFilter$3;->this$0:Lorg/webrtc/haima/HmRtcCommandFilter;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelStateRunnable;->state:Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcCommandFilter;->handleCommandChannelAvailable(Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
