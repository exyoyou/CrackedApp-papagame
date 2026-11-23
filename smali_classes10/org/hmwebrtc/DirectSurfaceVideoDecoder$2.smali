.class Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 2
    .line 3
    new-instance v1, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$202(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;Lorg/hmwebrtc/ThreadUtils$ThreadChecker;)Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 12
    .line 13
    invoke-static {v0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$300(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->deliverDecodedFrame()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$400(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Ljava/util/concurrent/CountDownLatch;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 34
    .line 35
    invoke-static {v0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$400(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)Ljava/util/concurrent/CountDownLatch;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$2;->this$0:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 43
    .line 44
    invoke-static {v0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->access$500(Lorg/hmwebrtc/DirectSurfaceVideoDecoder;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
