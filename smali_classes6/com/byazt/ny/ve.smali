.class public Lcom/byazt/ny/ve;
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
        0x36
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/eia/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/eia/n;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/eia/n;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    .line 10
    .line 11
    return-void
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

    .line 23
    iget-object v0, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-static {v0, p1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {p1}, Lcom/byazt/eia/n;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 9
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
    iget-object v0, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {p3}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/eia/c;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Map;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/byazt/ny/ve;->c(Ljava/util/Map;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p3, p2, v0}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {p1}, Lcom/byazt/eia/n;->gu()I

    move-result p1

    const/16 v1, -0x3e9

    if-eq p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {p1}, Lcom/byazt/eia/n;->gu()I

    move-result p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/apd/tt;->ve()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v1, p1}, Lcom/byazt/eia/n;->c(I)V

    .line 8
    iget-object v1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-static {v1, p2}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/ete/ic;->iu(I)V

    :goto_0
    const-string v1, "saas_status_while_click"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p1, Lcom/byazt/bb/a;

    iget-object v3, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v3}, Lcom/byazt/eia/n;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v1}, Lcom/byazt/eia/n;->tt()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v1}, Lcom/byazt/eia/n;->ve()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/byazt/bb/a;-><init>(Lcom/byazt/eia/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    iget-object v1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v1}, Lcom/byazt/eia/n;->sp()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 12
    iget-object v1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v1}, Lcom/byazt/eia/n;->sp()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/bb/a;->tt(I)V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v1}, Lcom/byazt/eia/n;->x()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/bb/a;->c(Landroid/view/View;)V

    .line 14
    iget-object v1, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v1}, Lcom/byazt/eia/n;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/bb/a;->tt(Ljava/util/Map;)V

    .line 15
    new-instance v1, Lcom/byazt/bb/n;

    iget-object v2, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    .line 16
    invoke-static {v2, p2}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v4

    iget-object v2, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    .line 17
    invoke-virtual {v2}, Lcom/byazt/eia/n;->tt()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/byazt/bb/n;-><init>(Lcom/byazt/hl/c;Lcom/byazt/eia/i;Lcom/byazt/cq/c;Ljava/util/Map;Ljava/lang/String;)V

    .line 18
    new-instance p1, Lcom/byazt/bb/tt;

    iget-object v2, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v2}, Lcom/byazt/eia/n;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-static {v2, p2}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v5

    iget-object v2, p0, Lcom/byazt/ny/ve;->c:Lcom/byazt/eia/n;

    invoke-virtual {v2}, Lcom/byazt/eia/n;->tt()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v3, v1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/byazt/bb/tt;-><init>(Lcom/byazt/hl/c;Landroid/content/Context;Lcom/byazt/eia/i;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/cq/c;)V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v1}, Lcom/byazt/bb/tt;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    sget-object p1, Lcom/byazt/cr/uj;->ve:Lcom/byazt/cr/uj;

    invoke-static {p2, p1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 21
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;)V

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p3, p2, v0}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
