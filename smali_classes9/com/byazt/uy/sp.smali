.class public final Lcom/byazt/uy/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x49c,
        0x5b
    }
.end annotation


# static fields
.field public static c:Z

.field public static tt:Z

.field public static uj:Z

.field public static ve:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c()V
    .locals 0

    .line 29
    invoke-static {}, Lcom/byazt/yg/c;->tt()V

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/byazt/uy/n;ZZ)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/byazt/uy/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/byazt/uy/sp;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/byazt/uy/sp;->c(Landroid/content/Context;Lcom/byazt/uy/n;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/byazt/uy/n;ZZZ)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/byazt/uy/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/byazt/uy/sp;

    monitor-enter v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p4

    .line 3
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/byazt/uy/sp;->c(Landroid/content/Context;Lcom/byazt/uy/n;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/byazt/uy/n;ZZZZ)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/byazt/uy/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/byazt/uy/sp;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-boolean v1, Lcom/byazt/uy/sp;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    .line 7
    :try_start_1
    instance-of v1, p0, Landroid/app/Application;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/byazt/mg/c;->ve(Landroid/content/Context;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_2
    :try_start_2
    invoke-static {p0, p1}, Lcom/byazt/uy/x;->c(Landroid/content/Context;Lcom/byazt/uy/n;)V

    .line 12
    invoke-static {p0}, Lcom/byazt/ia/n;->c(Landroid/content/Context;)V

    const/4 p1, 0x1

    if-nez p2, :cond_3

    if-eqz p3, :cond_5

    .line 13
    :cond_3
    invoke-static {}, Lcom/byazt/yg/c;->c()Lcom/byazt/yg/c;

    move-result-object p3

    if-eqz p2, :cond_4

    .line 14
    new-instance p2, Lcom/byazt/yg/ve;

    invoke-direct {p2, p0}, Lcom/byazt/yg/ve;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Lcom/byazt/yg/c;->c(Lcom/byazt/yg/tt;)V

    .line 15
    :cond_4
    sput-boolean p1, Lcom/byazt/uy/sp;->tt:Z

    .line 16
    :cond_5
    sput-boolean p4, Lcom/byazt/uy/sp;->uj:Z

    .line 17
    sput-boolean p1, Lcom/byazt/uy/sp;->c:Z

    .line 18
    sput-boolean p5, Lcom/byazt/uy/sp;->ve:Z

    .line 19
    invoke-static {}, Lcom/byazt/rx/sp;->tt()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/byazt/uy/sp$1;

    invoke-direct {p2, p0, p5}, Lcom/byazt/uy/sp$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit v0

    return-void

    .line 21
    :cond_6
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Lcom/byazt/ba/tt;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/byazt/rx/sp;->tt()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/uy/sp$2;

    invoke-direct {v1, p0}, Lcom/byazt/uy/sp$2;-><init>(Lcom/byazt/ba/tt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static c(Lcom/byazt/uy/a;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/byazt/uy/x;->tt()Lcom/byazt/uy/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/uy/tt;->c(Lcom/byazt/uy/a;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-static {}, Lcom/byazt/uy/x;->n()Lcom/byazt/rx/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rx/tt;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/byazt/yg/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/byazt/uy/x;->tt()Lcom/byazt/uy/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/uy/tt;->c(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
