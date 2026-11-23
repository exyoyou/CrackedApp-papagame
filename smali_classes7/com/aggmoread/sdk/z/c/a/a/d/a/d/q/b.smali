.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/m;
.source "SourceFile"


# static fields
.field private static a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/m;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;
    .locals 3

    .line 1
    const-class v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;

    if-nez v1, :cond_1

    const-class v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;

    if-nez v2, :cond_0

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;-><init>()V

    sput-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_1
    :goto_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z
    .locals 3

    .line 2
    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->z:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result p0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->r:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "deg "

    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;I)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/q/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/m;->a(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method
