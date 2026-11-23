.class Lcom/join/mgps/helper/MGFightServerManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public b:Z

.field private c:J

.field private d:Ljava/lang/Thread;

.field final synthetic e:Lcom/join/mgps/helper/MGFightServerManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightServerManager;)V
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
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->e:Lcom/join/mgps/helper/MGFightServerManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->b:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->c:J

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Ljava/lang/Thread;

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
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Ljava/lang/Thread;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->b:Z

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->c:J

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Ljava/lang/Thread;

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
    iput-boolean v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->b:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->c:J

    .line 10
    .line 11
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->e:Lcom/join/mgps/helper/MGFightServerManager;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->e:Lcom/join/mgps/helper/MGFightServerManager;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v2, 0xd

    .line 30
    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iget-wide v4, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->c:J

    .line 38
    .line 39
    sub-long/2addr v2, v4

    .line 40
    const-wide/16 v4, 0x2710

    .line 41
    .line 42
    cmp-long v0, v2, v4

    .line 43
    .line 44
    if-ltz v0, :cond_2

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->e:Lcom/join/mgps/helper/MGFightServerManager;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$700(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/os/Handler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightServerManager$b;->e:Lcom/join/mgps/helper/MGFightServerManager;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/join/mgps/helper/MGFightServerManager;->access$700(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    const-wide/16 v0, 0x3e8

    .line 66
    .line 67
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    nop

    .line 72
    goto :goto_0
.end method
