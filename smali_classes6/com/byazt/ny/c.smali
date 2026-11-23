.class public Lcom/byazt/ny/c;
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
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/eia/tt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/eia/tt;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/eia/tt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    .line 10
    .line 11
    return-void
.end method

.method private c(Ljava/util/Map;I)Lcom/byazt/bb/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Lcom/byazt/bb/c;"
        }
    .end annotation

    .line 11
    new-instance v9, Lcom/byazt/bb/uj;

    iget-object v1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {v1}, Lcom/byazt/eia/tt;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {v0}, Lcom/byazt/eia/tt;->x()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {v0}, Lcom/byazt/eia/tt;->da()Lcom/byazt/yzg/ve;

    move-result-object v4

    iget-object v0, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {v0}, Lcom/byazt/eia/tt;->yp()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {v0}, Lcom/byazt/eia/tt;->gt()Z

    move-result v6

    const/4 v8, 0x1

    move-object v0, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/byazt/bb/uj;-><init>(Lcom/byazt/eia/sp;Landroid/content/Context;Ljava/lang/String;Lcom/byazt/yzg/ve;Ljava/lang/String;ZLjava/util/Map;Z)V

    .line 12
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->u()Z

    move-result p1

    invoke-virtual {v9, p1}, Lcom/byazt/bb/c;->tt(Z)V

    .line 13
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->t()Z

    move-result p1

    invoke-virtual {v9, p1, p2}, Lcom/byazt/bb/c;->c(ZI)V

    .line 14
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->i()Lcom/byazt/su/DownloadStatusChangeListener;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/byazt/bb/c;->c(Lcom/byazt/su/DownloadStatusChangeListener;)V

    .line 15
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->sp()Z

    move-result p1

    invoke-virtual {v9, p1}, Lcom/byazt/bb/c;->c(Z)V

    .line 16
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->sl()I

    move-result p1

    invoke-virtual {v9, p1}, Lcom/byazt/bb/c;->c(I)V

    .line 17
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->m()Lcom/byazt/hl/c;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/byazt/bb/c;->c(Lcom/byazt/hl/c;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->u_()Lcom/byazt/ete/gt;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/byazt/bb/c;->c(Lcom/byazt/ete/gt;)V

    return-object v9
.end method

.method private c(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-static {v0, p1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->yp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->z()Lcom/byazt/ete/n;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 23
    iget-object v1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/byazt/eia/tt;->c(Ljava/lang/String;)V

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->yp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p1}, Lcom/byazt/eia/tt;->da()Lcom/byazt/yzg/ve;

    move-result-object p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 4
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
    iget-object v0, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {p3}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/eia/c;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Map;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/byazt/ny/c;->c(Ljava/util/Map;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p3, p2, v1}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return v0

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/byazt/bb/c;->uj(Ljava/util/Map;)I

    move-result p1

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/byazt/ny/c;->c(Ljava/util/Map;I)Lcom/byazt/bb/c;

    move-result-object p1

    .line 6
    new-instance v2, Lcom/byazt/szt/tt;

    iget-object v3, p0, Lcom/byazt/ny/c;->c:Lcom/byazt/eia/tt;

    invoke-virtual {v3}, Lcom/byazt/eia/tt;->nu()Lcom/byazt/zd/tt;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/byazt/szt/tt;-><init>(Lcom/byazt/hl/c;Lcom/byazt/zd/tt;)V

    .line 7
    invoke-virtual {v2, p2}, Lcom/byazt/szt/tt;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/byazt/cr/tt;->ve:Lcom/byazt/cr/tt;

    invoke-static {p2, p1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 9
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p3, p2, v1}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    :goto_0
    return v0
.end method
