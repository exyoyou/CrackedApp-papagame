.class Lcom/haima/hmcp/utils/ping/PingTask$PingHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/ping/PingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/ping/PingTask;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/utils/ping/PingTask;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask$PingHandler;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

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
    .locals 2

    .line 1
    const-string v0, "NetPingTask"

    .line 2
    .line 3
    const-string v1, "handleMessage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask$PingHandler;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/haima/hmcp/utils/ping/PingTask;->access$200(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingPara;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/utils/ping/PingTask;->start(Lcom/haima/hmcp/utils/ping/PingPara;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask$PingHandler;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/haima/hmcp/utils/ping/PingTask;->access$800(Lcom/haima/hmcp/utils/ping/PingTask;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
