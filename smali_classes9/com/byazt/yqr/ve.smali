.class public Lcom/byazt/yqr/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d6,
        0x36
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/yqr/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/yqr/ve;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/byazt/fk/u;Lcom/byazt/fk/da$c;)V
    .locals 3

    const-class v0, Lcom/byazt/yqr/ve;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, " url\u3001dir and hash is must property   in VideoInfoModel"

    .line 1
    invoke-static {p0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 4
    sget-object v1, Lcom/byazt/yqr/ve;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yqr/tt;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Lcom/byazt/yqr/tt;

    invoke-direct {v2, p0, p1}, Lcom/byazt/yqr/tt;-><init>(Landroid/content/Context;Lcom/byazt/fk/u;)V

    .line 6
    invoke-interface {p1}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 8
    invoke-interface {p1}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    .line 9
    :cond_1
    invoke-virtual {v2, p2}, Lcom/byazt/yqr/tt;->c(Lcom/byazt/fk/da$c;)V

    .line 10
    :cond_2
    invoke-interface {p1}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 11
    invoke-interface {p1}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Lcom/byazt/fk/u;)V
    .locals 3

    const-class v0, Lcom/byazt/yqr/ve;

    monitor-enter v0

    .line 13
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 14
    sget-object v1, Lcom/byazt/yqr/ve;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yqr/tt;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Lcom/byazt/yqr/tt;->c(Z)V

    .line 16
    :cond_0
    invoke-interface {p0}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 17
    invoke-interface {p0}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
