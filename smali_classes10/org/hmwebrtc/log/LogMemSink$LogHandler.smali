.class final Lorg/hmwebrtc/log/LogMemSink$LogHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/log/LogMemSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/log/LogMemSink;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/log/LogMemSink;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/log/LogMemSink$LogHandler;->this$0:Lorg/hmwebrtc/log/LogMemSink;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, [B

    .line 10
    .line 11
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    iget-object v1, p0, Lorg/hmwebrtc/log/LogMemSink$LogHandler;->this$0:Lorg/hmwebrtc/log/LogMemSink;

    .line 14
    .line 15
    invoke-static {v1}, Lorg/hmwebrtc/log/LogMemSink;->access$000(Lorg/hmwebrtc/log/LogMemSink;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/hmwebrtc/log/LogMemSink$LogHandler;->this$0:Lorg/hmwebrtc/log/LogMemSink;

    .line 24
    .line 25
    invoke-static {v1}, Lorg/hmwebrtc/log/LogMemSink;->access$000(Lorg/hmwebrtc/log/LogMemSink;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v1, v0, p1, v3}, Lorg/hmwebrtc/log/LogMemSink;->access$100(Lorg/hmwebrtc/log/LogMemSink;[BI[B)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-gtz p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-array v0, p1, [B

    .line 37
    .line 38
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/hmwebrtc/log/LogMemSink$LogHandler;->this$0:Lorg/hmwebrtc/log/LogMemSink;

    .line 42
    .line 43
    invoke-static {v1}, Lorg/hmwebrtc/log/LogMemSink;->access$000(Lorg/hmwebrtc/log/LogMemSink;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/hmwebrtc/log/LogMemSink$LogHandler;->this$0:Lorg/hmwebrtc/log/LogMemSink;

    .line 51
    .line 52
    invoke-static {p1, v0}, Lorg/hmwebrtc/log/LogMemSink;->access$200(Lorg/hmwebrtc/log/LogMemSink;[B)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 v1, 0x3e9

    .line 57
    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, [B

    .line 63
    .line 64
    invoke-static {p1}, Lorg/hmwebrtc/log/LogMemSink;->access$300([B)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void
.end method
