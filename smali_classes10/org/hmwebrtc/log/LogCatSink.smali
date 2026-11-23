.class Lorg/hmwebrtc/log/LogCatSink;
.super Lorg/hmwebrtc/log/LogApi$LogSink;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogApi$LogSink;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->tag:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->tag:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_2

    .line 14
    .line 15
    iget-object p1, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->tag:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p1, v0, :cond_3

    .line 20
    .line 21
    iget-object p1, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->tag:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p1, v0, :cond_4

    .line 26
    .line 27
    iget-object p1, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->tag:Ljava/lang/String;

    .line 28
    .line 29
    :cond_4
    :goto_0
    return-void
.end method
