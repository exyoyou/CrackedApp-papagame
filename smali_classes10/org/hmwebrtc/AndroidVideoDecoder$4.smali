.class Lorg/hmwebrtc/AndroidVideoDecoder$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/AndroidVideoDecoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/AndroidVideoDecoder;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/AndroidVideoDecoder;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

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
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 2
    .line 3
    new-instance v1, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/hmwebrtc/ThreadUtils$ThreadChecker;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$702(Lorg/hmwebrtc/AndroidVideoDecoder;Lorg/hmwebrtc/ThreadUtils$ThreadChecker;)Lorg/hmwebrtc/ThreadUtils$ThreadChecker;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 12
    .line 13
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$800(Lorg/hmwebrtc/AndroidVideoDecoder;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$900(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 25
    .line 26
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$900(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->start()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 34
    .line 35
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$1000(Lorg/hmwebrtc/AndroidVideoDecoder;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->deliverDecodedFrame()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 48
    .line 49
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$900(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 56
    .line 57
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$900(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->stop()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$4;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 65
    .line 66
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$1100(Lorg/hmwebrtc/AndroidVideoDecoder;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
