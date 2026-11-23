.class public Lcom/byazt/sxv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58d,
        0x14
    }
.end annotation


# static fields
.field public static volatile tt:Lcom/byazt/sxv/c;


# instance fields
.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/kkb/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
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
    iput-object v0, p0, Lcom/byazt/sxv/c;->c:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static c()Lcom/byazt/sxv/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/sxv/c;->tt:Lcom/byazt/sxv/c;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/byazt/sxv/c;->tt:Lcom/byazt/sxv/c;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lcom/byazt/sxv/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/sxv/c;->tt:Lcom/byazt/sxv/c;

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lcom/byazt/sxv/c;->tt:Lcom/byazt/sxv/c;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Lcom/byazt/sxv/c;

    invoke-direct {v1}, Lcom/byazt/sxv/c;-><init>()V

    .line 7
    sput-object v1, Lcom/byazt/sxv/c;->tt:Lcom/byazt/sxv/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Ljava/util/Map;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/byazt/cq/c;Lcom/byazt/nd/c;)V
    .locals 3

    .line 10
    iget-object p3, p0, Lcom/byazt/sxv/c;->c:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/kkb/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/cq/c;->c()Ljava/util/Map;

    move-result-object p3

    .line 12
    invoke-virtual {p2}, Lcom/byazt/cq/c;->n()Lcom/byazt/nd/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {}, Lcom/byazt/rv/c;->c()Lcom/byazt/rv/c;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/rv/c;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 14
    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bh/c;->uj()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/byazt/cq/c;->x()Lcom/byazt/bh/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bh/c;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2}, Lcom/byazt/cq/c;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/byazt/bh/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    new-instance p1, Lcom/byazt/qb/c;

    const v0, 0x73f77f

    const-string v1, "\u6761\u4ef6\u4e0d\u6ee1\u8db3"

    invoke-direct {p1, v0, v1}, Lcom/byazt/qb/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3, p1}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return-void

    .line 18
    :cond_3
    invoke-static {}, Lcom/byazt/ow/c;->c()Lcom/byazt/ow/c;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/byazt/ow/c;->c(Lcom/byazt/kkb/c;)Lcom/byazt/kkb/c;

    move-result-object p1

    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-virtual {p2}, Lcom/byazt/cq/c;->tt()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/byazt/sxv/c;->c(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    invoke-virtual {p2}, Lcom/byazt/cq/c;->tt()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 23
    :cond_4
    invoke-direct {p0, p3}, Lcom/byazt/sxv/c;->c(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    :cond_5
    invoke-virtual {v0, p1, v1}, Lcom/byazt/ow/c;->c(Ljava/lang/Object;Ljava/util/Map;)V

    .line 26
    instance-of p3, p1, Lcom/byazt/kkb/ve;

    if-eqz p3, :cond_6

    .line 27
    check-cast p1, Lcom/byazt/kkb/ve;

    .line 28
    invoke-virtual {p2}, Lcom/byazt/cq/c;->tt()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/byazt/cq/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p3, v0, p2}, Lcom/byazt/kkb/ve;->c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z

    return-void

    .line 29
    :cond_6
    instance-of p3, p1, Lcom/byazt/kkb/tt;

    if-eqz p3, :cond_7

    .line 30
    check-cast p1, Lcom/byazt/kkb/tt;

    .line 31
    invoke-virtual {p2}, Lcom/byazt/cq/c;->tt()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/byazt/cq/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p3, v0, p2}, Lcom/byazt/kkb/ve;->c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z

    :cond_7
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/kkb/c;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/sxv/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
