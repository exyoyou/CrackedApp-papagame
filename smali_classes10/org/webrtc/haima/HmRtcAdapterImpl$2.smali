.class Lorg/webrtc/haima/HmRtcAdapterImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/EglRenderer$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;
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
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$2;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlOutOfMemory(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x3510

    .line 5
    .line 6
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$2;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    new-instance v1, Lorg/webrtc/haima/HmRtcAdapterImpl$2$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$2$1;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl$2;Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$600(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onRuntimeException(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x3511

    .line 5
    .line 6
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$2;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 14
    .line 15
    new-instance v1, Lorg/webrtc/haima/HmRtcAdapterImpl$2$2;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$2$2;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl$2;Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$600(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
