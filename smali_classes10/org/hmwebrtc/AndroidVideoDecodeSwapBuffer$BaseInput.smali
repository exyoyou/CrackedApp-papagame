.class abstract Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Input;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseInput"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V

    return-void
.end method


# virtual methods
.method public onDecodedFrame(IIIIJLjava/lang/Integer;)J
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$300(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/utils/TimeDiff;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 10
    .line 11
    invoke-static {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$300(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)Lorg/hmwebrtc/utils/TimeDiff;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/hmwebrtc/utils/TimeDiff;->add()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$BaseInput;->this$0:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;

    .line 19
    .line 20
    invoke-static {p1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;->access$400(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const-wide/32 p1, 0x186a0

    .line 24
    .line 25
    .line 26
    return-wide p1
.end method

.method start()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method stop()V
    .locals 0

    return-void
.end method
