.class Lcom/beizi/ad/lance/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/lance/a/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/lance/a/g;


# direct methods
.method constructor <init>(Lcom/beizi/ad/lance/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/lance/a/g$1;->a:Lcom/beizi/ad/lance/a/g;

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/lance/a/g$1;->a:Lcom/beizi/ad/lance/a/g;

    .line 2
    .line 3
    new-instance v1, Lcom/beizi/ad/lance/a/g$1$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/beizi/ad/lance/a/g$1$1;-><init>(Lcom/beizi/ad/lance/a/g$1;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/g;->a(Lcom/beizi/ad/lance/a/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/ad/lance/a/g$1;->a:Lcom/beizi/ad/lance/a/g;

    .line 12
    .line 13
    invoke-static {}, Lcom/beizi/ad/lance/a/c;->b()Lcom/beizi/ad/lance/a/c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/beizi/ad/lance/a/c;->g()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/g;->a(Lcom/beizi/ad/lance/a/g;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/beizi/ad/lance/a/g$1;->a:Lcom/beizi/ad/lance/a/g;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/beizi/ad/lance/a/g;->d(Lcom/beizi/ad/lance/a/g;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/lance/a/g$1;->a:Lcom/beizi/ad/lance/a/g;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/beizi/ad/lance/a/g;->d(Lcom/beizi/ad/lance/a/g;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v0, p0, Lcom/beizi/ad/lance/a/g$1;->a:Lcom/beizi/ad/lance/a/g;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/beizi/ad/lance/a/g;->e(Lcom/beizi/ad/lance/a/g;)Ljava/lang/Runnable;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    const-wide/16 v5, 0xfa

    .line 48
    .line 49
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 52
    .line 53
    .line 54
    return-void
.end method
