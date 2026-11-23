.class public Lcom/byazt/wz/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x71
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/c;->tt(Lcom/byazt/pop/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pop/c;

.field public final synthetic tt:Lcom/byazt/wz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/c;Lcom/byazt/pop/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/c$9;->tt:Lcom/byazt/wz/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/c$9;->c:Lcom/byazt/pop/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/wzi/c;->c(Landroid/content/Context;)Lcom/byazt/wzi/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/byazt/ymw/a;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/wz/c$9;->c:Lcom/byazt/pop/c;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/byazt/ymw/a;-><init>(Lcom/byazt/pop/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v2}, Lcom/byazt/wzi/c;->c(I)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/byazt/omf/yp$c;->c(Landroid/os/IBinder;)Lcom/byazt/omf/yp;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/byazt/wz/c$9;->tt:Lcom/byazt/wz/c;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/byazt/wz/c;->sl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Lcom/byazt/omf/yp;->c(Ljava/lang/String;Lcom/byazt/omf/nu;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/wz/c$9;->tt:Lcom/byazt/wz/c;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/byazt/wz/c;->uj(Lcom/byazt/wz/c;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/byazt/wz/c$9;->tt:Lcom/byazt/wz/c;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/byazt/wz/c;->uj(Lcom/byazt/wz/c;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method
