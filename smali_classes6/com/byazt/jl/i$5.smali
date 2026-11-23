.class public Lcom/byazt/jl/i$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0xc6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jl/i;->a()Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic tt:Lcom/byazt/jl/i;


# direct methods
.method public constructor <init>(Lcom/byazt/jl/i;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jl/i$5;->tt:Lcom/byazt/jl/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/jl/i$5;->c:Ljava/lang/Thread;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jl/i$5;->tt:Lcom/byazt/jl/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jl/i$5;->tt:Lcom/byazt/jl/i;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/jl/i;->a(Lcom/byazt/jl/i;)Lcom/byazt/on/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/jl/i$5;->tt:Lcom/byazt/jl/i;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/jl/i;->sp(Lcom/byazt/jl/i;)Lcom/byazt/zt/tt;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Lcom/byazt/zt/tt;->tt()Lcom/byazt/on/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/jl/i;->ve(Lcom/byazt/on/a;)Lcom/byazt/on/a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/byazt/jl/i;->c(Lcom/byazt/jl/i;Lcom/byazt/on/a;)Lcom/byazt/on/a;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/jl/i$5;->tt:Lcom/byazt/jl/i;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/byazt/jl/i;->a(Lcom/byazt/jl/i;)Lcom/byazt/on/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/byazt/on/a;->d_()V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/byazt/jl/i$5;->tt:Lcom/byazt/jl/i;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/byazt/jl/i;->a(Lcom/byazt/jl/i;)Lcom/byazt/on/a;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/byazt/jl/i;->tt(Lcom/byazt/on/a;)Landroid/graphics/Rect;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/byazt/jl/i;->c(Lcom/byazt/jl/i;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/byazt/jl/i$5;->c:Ljava/lang/Thread;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_1
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/byazt/jl/i$5;->tt:Lcom/byazt/jl/i;

    .line 68
    .line 69
    invoke-static {}, Lcom/byazt/jl/i;->u()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_2
    iget-object v1, p0, Lcom/byazt/jl/i$5;->c:Ljava/lang/Thread;

    .line 77
    .line 78
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method
