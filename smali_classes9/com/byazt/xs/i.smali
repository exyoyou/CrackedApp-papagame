.class public Lcom/byazt/xs/i;
.super Lcom/byazt/lv/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/xs/i$c;
    }
.end annotation


# instance fields
.field public volatile a:Lcom/byazt/xs/i$c;


# direct methods
.method public constructor <init>(Lcom/byazt/sz/rh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/lv/tt;-><init>(Lcom/byazt/sz/rh;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/xj/ve;Lcom/byazt/sz/m;Lcom/byazt/bh/c;)Lorg/json/JSONObject;
    .locals 2

    .line 28
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p3, :cond_0

    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p3}, Lcom/byazt/bh/c;->a()Ljava/util/Map;

    move-result-object v1

    .line 30
    invoke-virtual {p3}, Lcom/byazt/bh/c;->c()Ljava/lang/String;

    move-result-object p3

    .line 31
    invoke-virtual {p2, p1}, Lcom/byazt/sz/m;->c(Lcom/byazt/xj/ve;)V

    const-string p1, "type"

    .line 32
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 33
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    .line 36
    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private c(Lcom/byazt/cq/c;)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/byazt/lv/tt;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/byazt/xs/i;->tt()Lcom/byazt/xs/i$c;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/xs/i$c;->c(Lcom/byazt/xs/i$c;)Lcom/byazt/sz/m;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/byazt/xs/i;->c(Lcom/byazt/sz/m;Lcom/byazt/cq/c;)Lcom/byazt/sz/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/xs/i$c;->c(Lcom/byazt/sz/m;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/byazt/cq/c;->c(Lcom/byazt/nd/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/xs/i;Lcom/byazt/cq/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xs/i;->c(Lcom/byazt/cq/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/xs/i;Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/lv/tt;->tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    return-void
.end method

.method private tt()Lcom/byazt/xs/i$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Lcom/byazt/xs/i$c;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :cond_1
    new-instance v1, Lcom/byazt/xs/i$c;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/byazt/xs/i$c;-><init>(Lcom/byazt/xs/i;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v0, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 28
    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1
.end method


# virtual methods
.method public c(Lcom/byazt/sz/m;Lcom/byazt/cq/c;)Lcom/byazt/sz/m;
    .locals 5

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/sz/m;

    invoke-direct {v0}, Lcom/byazt/sz/m;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/sz/m;->c(I)V

    .line 10
    invoke-virtual {p2}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object p1

    .line 11
    invoke-direct {p0, v1, v0, p1}, Lcom/byazt/xs/i;->c(Lcom/byazt/xj/ve;Lcom/byazt/sz/m;Lcom/byazt/bh/c;)Lorg/json/JSONObject;

    move-result-object v2

    .line 12
    sget-object v3, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    invoke-virtual {p2}, Lcom/byazt/cq/c;->uj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/byazt/bh/tt;->c(Ljava/lang/String;)Lcom/byazt/bh/ve;

    move-result-object p2

    .line 13
    invoke-virtual {v1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, v3, v4}, Lcom/byazt/bh/ve;->c(Lcom/byazt/bh/c;Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v2}, Lcom/byazt/sz/m;->c(Lorg/json/JSONObject;)V

    .line 15
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 16
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/bh/c;

    if-nez v2, :cond_2

    return-object v0

    .line 17
    :cond_2
    new-instance v3, Lcom/byazt/sz/m;

    invoke-direct {v3}, Lcom/byazt/sz/m;-><init>()V

    .line 18
    invoke-direct {p0, v1, v3, v2}, Lcom/byazt/xs/i;->c(Lcom/byazt/xj/ve;Lcom/byazt/sz/m;Lcom/byazt/bh/c;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/byazt/sz/m;->c(Lorg/json/JSONObject;)V

    .line 19
    invoke-virtual {v3, v1}, Lcom/byazt/sz/m;->c(Lcom/byazt/xj/ve;)V

    .line 20
    invoke-virtual {v0, v3}, Lcom/byazt/sz/m;->c(Lcom/byazt/sz/m;)V

    .line 21
    :cond_3
    invoke-virtual {v1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, v2, v3}, Lcom/byazt/bh/ve;->tt(Lcom/byazt/bh/c;Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 23
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/bh/c;

    if-nez p1, :cond_4

    return-object v0

    .line 24
    :cond_4
    new-instance p2, Lcom/byazt/sz/m;

    invoke-direct {p2}, Lcom/byazt/sz/m;-><init>()V

    .line 25
    invoke-direct {p0, v1, p2, p1}, Lcom/byazt/xs/i;->c(Lcom/byazt/xj/ve;Lcom/byazt/sz/m;Lcom/byazt/bh/c;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/sz/m;->c(Lorg/json/JSONObject;)V

    .line 26
    invoke-virtual {p2, v1}, Lcom/byazt/sz/m;->c(Lcom/byazt/xj/ve;)V

    .line 27
    invoke-virtual {v0, p2}, Lcom/byazt/sz/m;->tt(Lcom/byazt/sz/m;)V

    :cond_5
    return-object v0

    :cond_6
    :goto_0
    return-object p1
.end method

.method public ve(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/xs/i;->tt()Lcom/byazt/xs/i$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/byazt/xs/i$c;->c(Lcom/byazt/sz/m;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/byazt/xs/i$c;->c(Lcom/byazt/sz/rh$tt;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/byazt/xs/i;->a:Lcom/byazt/xs/i$c;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Lcom/byazt/xs/i$c;->c(Lcom/byazt/sz/rh$c;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p2, Lcom/byazt/xs/i$1;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/byazt/xs/i$1;-><init>(Lcom/byazt/xs/i;)V

    .line 36
    .line 37
    .line 38
    const-string p3, "type"

    .line 39
    .line 40
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p3, p0, Lcom/byazt/lv/tt;->uj:Lorg/json/JSONObject;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0, v0, p2, p3}, Lcom/byazt/ppf/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/byazt/nd/ve;Lorg/json/JSONObject;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
