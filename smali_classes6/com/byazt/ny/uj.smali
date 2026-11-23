.class public Lcom/byazt/ny/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kkb/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbc,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ny/uj$c;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/eia/uj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/eia/uj;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/eia/uj;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    .line 10
    .line 11
    return-void
.end method

.method private c(Ljava/util/Map;Lcom/byazt/cq/c;)Lcom/byazt/bb/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")",
            "Lcom/byazt/bb/x;"
        }
    .end annotation

    .line 7
    new-instance v9, Lcom/byazt/bb/x;

    iget-object v1, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    invoke-virtual {v1}, Lcom/byazt/eia/uj;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    invoke-virtual {v0}, Lcom/byazt/eia/uj;->tt()Z

    move-result v3

    iget-object v0, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    invoke-virtual {v0}, Lcom/byazt/eia/uj;->ve()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    invoke-virtual {v0}, Lcom/byazt/eia/uj;->uj()I

    move-result v7

    const/4 v8, 0x1

    move-object v0, v9

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/byazt/bb/x;-><init>(Lcom/byazt/eia/da;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/byazt/cq/c;IZ)V

    .line 8
    new-instance v0, Lcom/byazt/ny/uj$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ny/uj$1;-><init>(Lcom/byazt/ny/uj;Ljava/util/Map;Lcom/byazt/cq/c;)V

    invoke-virtual {v9, v0}, Lcom/byazt/bb/x;->c(Lcom/byazt/ny/uj$c;)V

    return-object v9
.end method

.method private c(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    invoke-static {v0, p1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    invoke-virtual {p1}, Lcom/byazt/eia/uj;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    invoke-virtual {p1}, Lcom/byazt/eia/uj;->A_()Lcom/byazt/ete/hq;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/ny/uj;->c:Lcom/byazt/eia/uj;

    invoke-virtual {p3}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3}, Lcom/byazt/cq/c;->tt()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/eia/c;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Map;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/byazt/ny/uj;->c(Ljava/util/Map;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/byazt/cr/a;->uj:Lcom/byazt/cr/a;

    invoke-static {p2, p1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p3, p2, p1}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return v0

    .line 5
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/byazt/ny/uj;->c(Ljava/util/Map;Lcom/byazt/cq/c;)Lcom/byazt/bb/x;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/byazt/bb/x;->c(Ljava/util/Map;)Z

    return v0
.end method
