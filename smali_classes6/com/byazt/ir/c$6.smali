.class public Lcom/byazt/ir/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x271,
        0x66
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ir/c;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ir/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ir/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

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
    iget-object v0, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/ir/c;->u(Lcom/byazt/ir/c;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "thread_service"

    .line 51
    .line 52
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/byazt/dna/qp;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/byazt/ir/c;->sp(Lcom/byazt/ir/c;)Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v0, v2}, Lcom/byazt/dna/qp;->recycleHandler(Landroid/os/Handler;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/byazt/ir/c$6;->c:Lcom/byazt/ir/c;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/byazt/ir/c;->c(Lcom/byazt/ir/c;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :catchall_0
    :cond_1
    return-void
.end method
