.class Lcom/beizi/ad/lance/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/lance/a/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/lance/a/f;


# direct methods
.method constructor <init>(Lcom/beizi/ad/lance/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/lance/a/f;->a(Lcom/beizi/ad/lance/a/f;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/ad/lance/a/f;->b(Lcom/beizi/ad/lance/a/f;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/beizi/ad/lance/a/f;->a(Lcom/beizi/ad/lance/a/f;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/beizi/ad/lance/a/f;->c(Lcom/beizi/ad/lance/a/f;)Lcom/beizi/ad/internal/c/e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/f;->a(Lcom/beizi/ad/lance/a/f;Z)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/beizi/ad/lance/a/f;->c(Lcom/beizi/ad/lance/a/f;)Lcom/beizi/ad/internal/c/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/beizi/ad/internal/c/e;->a()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/beizi/ad/lance/a/f;->d(Lcom/beizi/ad/lance/a/f;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/beizi/ad/lance/a/f;->d(Lcom/beizi/ad/lance/a/f;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/beizi/ad/lance/a/f;->e(Lcom/beizi/ad/lance/a/f;)Ljava/lang/Runnable;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f$1;->a:Lcom/beizi/ad/lance/a/f;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/f;->a(Lcom/beizi/ad/lance/a/f;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method
