.class Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/FrameRenderDelayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderDataThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/FrameRenderDelayCallback;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/FrameRenderDelayCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;->this$0:Lorg/hmwebrtc/FrameRenderDelayCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/FrameRenderDelayCallback;Lorg/hmwebrtc/FrameRenderDelayCallback$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;-><init>(Lorg/hmwebrtc/FrameRenderDelayCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x3e8

    .line 12
    .line 13
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/hmwebrtc/FrameRenderDelayCallback$RenderDataThread;->this$0:Lorg/hmwebrtc/FrameRenderDelayCallback;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/hmwebrtc/FrameRenderDelayCallback;->access$100(Lorg/hmwebrtc/FrameRenderDelayCallback;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    :cond_0
    const-string v0, "FrameRenderDelayCallback"

    .line 23
    .line 24
    const-string v1, "RenderDataThread interrupte"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
