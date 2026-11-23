.class public Lcom/byazt/ts/uj$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x165,
        0x6c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ts/uj;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ts/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ts/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ts/uj$8;->c:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ts/uj$8;->c:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ts/uj;->x(Lcom/byazt/ts/uj;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ts/uj$8;->c:Lcom/byazt/ts/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ts/uj;->x(Lcom/byazt/ts/uj;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/uj$8;->c:Lcom/byazt/ts/uj;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/ts/uj;->u(Lcom/byazt/ts/uj;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/ts/uj$8;->c:Lcom/byazt/ts/uj;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/byazt/ts/uj;->x(Lcom/byazt/ts/uj;)Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "thread_service"

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/byazt/dna/qp;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/byazt/ts/uj$8;->c:Lcom/byazt/ts/uj;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/byazt/ts/uj;->x(Lcom/byazt/ts/uj;)Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v0, v2}, Lcom/byazt/dna/qp;->recycleHandler(Landroid/os/Handler;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lcom/byazt/ts/uj$8;->c:Lcom/byazt/ts/uj;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :catchall_0
    :cond_1
    return-void
.end method
