.class public Lcom/byazt/zo/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x328,
        0xf
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/byazt/zo/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/zo/uj;->c:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;Landroid/content/Context;)Lcom/byazt/nat/c;
    .locals 1

    .line 20
    new-instance v0, Lcom/byazt/nat/ve;

    invoke-direct {v0}, Lcom/byazt/nat/ve;-><init>()V

    .line 21
    invoke-virtual {v0, p1}, Lcom/byazt/nat/c;->c(Lcom/byazt/ete/ic;)V

    .line 22
    invoke-virtual {v0, p2}, Lcom/byazt/nat/c;->c(Landroid/content/Context;)V

    return-object v0
.end method

.method private tt(Ljava/lang/Class;)Lcom/byazt/zo/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/byazt/zo/c;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/byazt/zo/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :catchall_0
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_1
    new-array v2, v0, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v3, Lcom/byazt/ete/ic;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 16
    .line 17
    const-class v3, Landroid/content/Context;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    aput-object v3, v2, v5

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v1, v0, v4

    .line 32
    .line 33
    aput-object v1, v0, v5

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/byazt/zo/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    return-object p1

    .line 42
    :catchall_1
    return-object v1
.end method


# virtual methods
.method public c(Ljava/lang/Class;)Lcom/byazt/zo/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/byazt/zo/c;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/byazt/zo/uj;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/zo/c;

    if-nez v0, :cond_0

    .line 24
    invoke-direct {p0, p1}, Lcom/byazt/zo/uj;->tt(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public c(Lcom/byazt/ete/ic;Landroid/content/Context;Lcom/byazt/hkv/uj;Z)Lcom/byazt/zo/ve;
    .locals 5

    .line 1
    new-instance p4, Lcom/byazt/zo/ve;

    invoke-direct {p4, p3}, Lcom/byazt/zo/ve;-><init>(Lcom/byazt/hkv/uj;)V

    .line 2
    new-instance p3, Lcom/byazt/wdw/c;

    invoke-direct {p3, p1, p2}, Lcom/byazt/wdw/c;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/zo/uj;->c:Ljava/util/Map;

    const-class v1, Lcom/byazt/wdw/c;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/byazt/zo/tt;

    invoke-direct {v0, p1, p2}, Lcom/byazt/zo/tt;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/byazt/zo/uj;->c:Ljava/util/Map;

    const-class v2, Lcom/byazt/zo/tt;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/byazt/zo/uj;->c(Lcom/byazt/ete/ic;Landroid/content/Context;)Lcom/byazt/nat/c;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/byazt/zo/uj;->c:Ljava/util/Map;

    const-class v3, Lcom/byazt/nat/c;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/byazt/vis/c;

    invoke-direct {v2, p1, p2}, Lcom/byazt/vis/c;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V

    .line 9
    iget-object v3, p0, Lcom/byazt/zo/uj;->c:Ljava/util/Map;

    const-class v4, Lcom/byazt/vis/c;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v3, Lcom/byazt/vis/ve;

    invoke-direct {v3, p1, p2}, Lcom/byazt/vis/ve;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V

    .line 11
    iget-object p2, p0, Lcom/byazt/zo/uj;->c:Ljava/util/Map;

    const-class v4, Lcom/byazt/vis/ve;

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p4, v3}, Lcom/byazt/zo/ve;->c(Lcom/byazt/zo/c;)V

    .line 13
    invoke-virtual {p4, p3}, Lcom/byazt/zo/ve;->c(Lcom/byazt/zo/c;)V

    .line 14
    invoke-virtual {p4, v0}, Lcom/byazt/zo/ve;->c(Lcom/byazt/zo/c;)V

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->h()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 16
    invoke-virtual {p4, v2}, Lcom/byazt/zo/ve;->c(Lcom/byazt/zo/c;)V

    .line 17
    invoke-virtual {p4, v1}, Lcom/byazt/zo/ve;->c(Lcom/byazt/zo/c;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p4, v1}, Lcom/byazt/zo/ve;->c(Lcom/byazt/zo/c;)V

    .line 19
    invoke-virtual {p4, v2}, Lcom/byazt/zo/ve;->c(Lcom/byazt/zo/c;)V

    :goto_0
    return-object p4
.end method
