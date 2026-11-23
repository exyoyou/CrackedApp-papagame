.class Lcom/join/mgps/activity/GameTransferActivity$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private b:Z

.field c:Ljava/io/File;

.field d:J

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/activity/GameTransferActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameTransferActivity;Ljava/io/File;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "file",
            "size",
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->f:Lcom/join/mgps/activity/GameTransferActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->b:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->c:Ljava/io/File;

    .line 10
    .line 11
    iput-wide p3, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->d:J

    .line 12
    .line 13
    iput-object p5, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->c:Ljava/io/File;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N1(Ljava/io/File;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "zip currentSize ="

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->d:J

    .line 31
    .line 32
    const-wide/16 v4, 0x2

    .line 33
    .line 34
    mul-long v2, v2, v4

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    cmp-long v6, v2, v4

    .line 39
    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    cmp-long v6, v0, v4

    .line 43
    .line 44
    if-nez v6, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-wide/16 v4, 0x64

    .line 48
    .line 49
    mul-long v0, v0, v4

    .line 50
    .line 51
    div-long v4, v0, v2

    .line 52
    .line 53
    :cond_2
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/join/mgps/event/e0;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/GameTransferActivity$d;->e:Ljava/lang/String;

    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v0, 0x3e8

    .line 69
    .line 70
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    throw v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method
