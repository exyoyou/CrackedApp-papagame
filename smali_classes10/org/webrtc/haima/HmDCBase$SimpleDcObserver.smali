.class Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/DataChannel$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmDCBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleDcObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmDCBase;


# direct methods
.method private constructor <init>(Lorg/webrtc/haima/HmDCBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;->this$0:Lorg/webrtc/haima/HmDCBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/HmDCBase;Lorg/webrtc/haima/HmDCBase$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;-><init>(Lorg/webrtc/haima/HmDCBase;)V

    return-void
.end method


# virtual methods
.method public onBufferedAmountChange(J)V
    .locals 0

    return-void
.end method

.method public onMessage(Lorg/hmwebrtc/DataChannel$Buffer;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->binary:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    iget-object p1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "UTF-8"

    .line 32
    .line 33
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;->this$0:Lorg/webrtc/haima/HmDCBase;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmDCBase;->onReceiveMessage(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;->this$0:Lorg/webrtc/haima/HmDCBase;

    .line 47
    .line 48
    invoke-static {p1}, Lorg/webrtc/haima/HmDCBase;->access$100(Lorg/webrtc/haima/HmDCBase;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "DataChannel data is null!"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onStateChange()V
    .locals 0

    return-void
.end method

.method public synthetic onWritableState(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/g;->a(Lorg/hmwebrtc/DataChannel$Observer;Z)V

    return-void
.end method
