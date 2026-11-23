.class public Lcom/byazt/wzi/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x678,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/wzi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wzi/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wzi/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wzi/c$1;->c:Lcom/byazt/wzi/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/wzi/c$1;->c:Lcom/byazt/wzi/c;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/byazt/omf/da$c;->c(Landroid/os/IBinder;)Lcom/byazt/omf/da;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lcom/byazt/wzi/c;->c(Lcom/byazt/wzi/c;Lcom/byazt/omf/da;)Lcom/byazt/omf/da;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/byazt/wzi/c$1;->c:Lcom/byazt/wzi/c;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/byazt/wzi/c;->tt(Lcom/byazt/wzi/c;)Lcom/byazt/omf/da;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/byazt/wzi/c$1;->c:Lcom/byazt/wzi/c;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/byazt/wzi/c;->c(Lcom/byazt/wzi/c;)Landroid/os/IBinder$DeathRecipient;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    const-string p2, "MultiProcess"

    .line 33
    .line 34
    const-string v0, "onServiceConnected throws :"

    .line 35
    .line 36
    invoke-static {p2, v0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p1, p0, Lcom/byazt/wzi/c$1;->c:Lcom/byazt/wzi/c;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/byazt/wzi/c;->ve(Lcom/byazt/wzi/c;)Ljava/util/concurrent/CountDownLatch;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/byazt/wzi/c$1;->c:Lcom/byazt/wzi/c;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/byazt/wzi/c;->uj(Lcom/byazt/wzi/c;)J

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "MultiProcess"

    .line 2
    .line 3
    const-string v0, "BinderPool......onServiceDisconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
