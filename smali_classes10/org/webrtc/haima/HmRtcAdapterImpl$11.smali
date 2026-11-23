.class Lorg/webrtc/haima/HmRtcAdapterImpl$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onCreatePeerConnectionSuccess(Ljava/lang/Object;)V
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
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$11;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$11;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2200(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/beans/GamePlatformType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$11;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2300(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/SessionDescription;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
