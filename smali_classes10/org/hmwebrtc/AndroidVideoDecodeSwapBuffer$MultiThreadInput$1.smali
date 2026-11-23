.class Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/utils/SimpleWorkThread$Work;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput$1;->this$1:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public done()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput$1;->this$1:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->access$1300(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput$1;->this$1:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;->access$1400(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$MultiThreadInput;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
