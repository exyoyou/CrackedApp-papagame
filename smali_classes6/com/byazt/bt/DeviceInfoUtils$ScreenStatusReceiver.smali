.class public Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x113
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/bt/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field public c:Lcom/byazt/lz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/lz/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;->c:Lcom/byazt/lz/ve;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;)Lcom/byazt/lz/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;->c:Lcom/byazt/lz/ve;

    return-object p0
.end method

.method private c(Landroid/content/Intent;Z)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/byazt/bt/DeviceInfoUtils;->c(Z)Z

    return-void

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/byazt/bt/DeviceInfoUtils;->c(Z)Z

    if-nez p2, :cond_2

    const-string p2, "thread_service"

    .line 7
    invoke-static {p2}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/dna/qp;

    .line 8
    invoke-interface {p2}, Lcom/byazt/dna/qp;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver$2;

    const-string v1, "updateScreenStatus"

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver$2;-><init>(Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/byazt/bt/DeviceInfoUtils;->c(J)J

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;Landroid/content/Intent;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;->c(Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver$1;-><init>(Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
