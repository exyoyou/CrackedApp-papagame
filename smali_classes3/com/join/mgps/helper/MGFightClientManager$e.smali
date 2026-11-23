.class Lcom/join/mgps/helper/MGFightClientManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field public b:Z

.field private c:J

.field private d:Ljava/lang/Thread;

.field final synthetic e:Lcom/join/mgps/helper/MGFightClientManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightClientManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->e:Lcom/join/mgps/helper/MGFightClientManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->c:J

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->d:Ljava/lang/Thread;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->d:Ljava/lang/Thread;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:Z

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->c:J

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->d:Ljava/lang/Thread;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->c:J

    .line 10
    .line 11
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->c:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    const-wide/16 v2, 0x2710

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-ltz v4, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->e:Lcom/join/mgps/helper/MGFightClientManager;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$e;->e:Lcom/join/mgps/helper/MGFightClientManager;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    const-wide/16 v0, 0xc8

    .line 36
    .line 37
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    nop

    .line 42
    goto :goto_0
.end method
