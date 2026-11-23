.class public Lcom/join/mgps/helper/MGWifiFightClientManger$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGWifiFightClientManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lcom/join/mgps/helper/MGWifiFightClientManger;


# direct methods
.method public constructor <init>(Lcom/join/mgps/helper/MGWifiFightClientManger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->c:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->b:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->c:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/join/mgps/helper/MGWifiFightClientManger;->access$200(Lcom/join/mgps/helper/MGWifiFightClientManger;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x4e20

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-ltz v4, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->c:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/helper/MGWifiFightClientManger;->handler:Landroid/os/Handler;

    .line 25
    .line 26
    const/16 v1, 0x4e20

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/join/mgps/helper/MGWifiFightClientManger$b;->c:Lcom/join/mgps/helper/MGWifiFightClientManger;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/join/mgps/helper/MGWifiFightClientManger;->handler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-wide/16 v0, 0x64

    .line 41
    .line 42
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    nop

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    return-void
.end method
