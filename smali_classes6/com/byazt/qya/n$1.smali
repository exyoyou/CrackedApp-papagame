.class public Lcom/byazt/qya/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b1,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qya/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qya/n;


# direct methods
.method public constructor <init>(Lcom/byazt/qya/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/qya/n;->c(Lcom/byazt/qya/n;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/qya/n;->tt(Lcom/byazt/qya/n;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/qya/n;->ve(Lcom/byazt/qya/n;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/qya/n;->ve()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/byazt/qya/n;->uj(Lcom/byazt/qya/n;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/byazt/qya/n;->n(Lcom/byazt/qya/n;)I

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/byazt/qya/n;->a(Lcom/byazt/qya/n;)Ljava/util/concurrent/Callable;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/byazt/qya/n;->x(Lcom/byazt/qya/n;)Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/byazt/qya/n$1;->c:Lcom/byazt/qya/n;

    .line 68
    .line 69
    invoke-static {v3}, Lcom/byazt/qya/n;->sp(Lcom/byazt/qya/n;)Ljava/lang/Runnable;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
