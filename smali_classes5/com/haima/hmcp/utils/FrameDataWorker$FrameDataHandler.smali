.class public Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/FrameDataWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/FrameDataWorker;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/utils/FrameDataWorker;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;->this$0:Lcom/haima/hmcp/utils/FrameDataWorker;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;->this$0:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/utils/FrameDataWorker;->access$000(Lcom/haima/hmcp/utils/FrameDataWorker;)Lcom/haima/hmcp/listeners/HmFrameCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    check-cast p1, [J

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    array-length v1, p1

    .line 19
    if-ge v0, v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;->this$0:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/haima/hmcp/utils/FrameDataWorker;->access$000(Lcom/haima/hmcp/utils/FrameDataWorker;)Lcom/haima/hmcp/listeners/HmFrameCallback;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;->this$0:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/haima/hmcp/utils/FrameDataWorker;->access$000(Lcom/haima/hmcp/utils/FrameDataWorker;)Lcom/haima/hmcp/listeners/HmFrameCallback;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/haima/hmcp/beans/FrameInfo;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/haima/hmcp/beans/FrameInfo;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/haima/hmcp/utils/FrameDataWorker$FrameDataHandler;->this$0:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 42
    .line 43
    invoke-static {v3}, Lcom/haima/hmcp/utils/FrameDataWorker;->access$104(Lcom/haima/hmcp/utils/FrameDataWorker;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v3, v4}, Lcom/haima/hmcp/beans/FrameInfo;->setId(J)Lcom/haima/hmcp/beans/FrameInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    aget-wide v3, p1, v0

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Lcom/haima/hmcp/beans/FrameInfo;->setRenderedTime(J)Lcom/haima/hmcp/beans/FrameInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/FrameInfo;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Lcom/haima/hmcp/listeners/HmFrameCallback;->onFrame(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :goto_1
    return-void
.end method
