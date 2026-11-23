.class public Lcom/byazt/no/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x311,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/no/c$c;
    }
.end annotation


# instance fields
.field public c:I

.field public final tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/no/ve;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/no/uj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/byazt/no/c;->tt:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/no/c;->ve:Ljava/util/Map;

    .line 5
    iput v1, p0, Lcom/byazt/no/c;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/no/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/no/c;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/no/c;
    .locals 1

    .line 17
    invoke-static {}, Lcom/byazt/no/c$c;->c()Lcom/byazt/no/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/util/List;)Lcom/byazt/no/ve;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)",
            "Lcom/byazt/no/ve;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/no/c;->tt:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/no/c;->tt:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/no/ve;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/byazt/no/ve;->x()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/byazt/w/a;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    :try_start_1
    invoke-virtual {p1}, Lcom/byazt/no/ve;->uj()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 10
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/no/ve;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/byazt/no/ve;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 12
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/byazt/no/ve;->ve()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/no/c;->c:I

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/no/ve;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/no/c;->tt:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/no/c;->tt:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/byazt/no/c;->tt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/no/ve;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/byazt/no/ve;->sp()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/no/ve;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/byazt/no/ve;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public tt(Ljava/lang/String;Ljava/util/List;)Lcom/byazt/no/uj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)",
            "Lcom/byazt/no/uj;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/no/c;->ve:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/byazt/no/c;->ve:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/byazt/no/uj;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/byazt/no/uj;->a()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p2}, Lcom/byazt/w/a;->c(Ljava/util/List;Ljava/util/List;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {p1}, Lcom/byazt/no/uj;->n()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p2

    .line 30
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/no/uj;->x()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/byazt/no/uj;->sp()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/byazt/no/uj;->uj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    :catchall_0
    :cond_1
    const/4 p1, 0x0

    .line 50
    return-object p1

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    throw p1
.end method
