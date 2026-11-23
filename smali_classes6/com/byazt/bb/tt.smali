.class public Lcom/byazt/bb/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hl/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0xd
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/byazt/eia/i;

.field public n:Lcom/byazt/cq/c;

.field public tt:Landroid/content/Context;

.field public uj:Lcom/byazt/hl/c;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/hl/c;Landroid/content/Context;Lcom/byazt/eia/i;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/cq/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/hl/c;",
            "Landroid/content/Context;",
            "Lcom/byazt/eia/i;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/bb/tt;->uj:Lcom/byazt/hl/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/bb/tt;->tt:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/bb/tt;->c:Lcom/byazt/eia/i;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/bb/tt;->ve:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/byazt/bb/tt;->n:Lcom/byazt/cq/c;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/byazt/bb/tt;->a:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/tt;)Lcom/byazt/hl/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/tt;->uj:Lcom/byazt/hl/c;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/bb/tt;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/tt;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/bb/tt;)Lcom/byazt/cq/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/tt;->n:Lcom/byazt/cq/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/bb/tt;->c:Lcom/byazt/eia/i;

    invoke-interface {v0}, Lcom/byazt/eia/i;->n()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/byazt/bb/tt;->a:Ljava/util/Map;

    const-string v1, "saas_status_while_click"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/byazt/bb/tt;->c:Lcom/byazt/eia/i;

    invoke-interface {v0}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/bb/tt;->c:Lcom/byazt/eia/i;

    invoke-interface {v0}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/kk;->tt()Lcom/byazt/ete/yp;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/byazt/bb/tt;->c:Lcom/byazt/eia/i;

    invoke-interface {v0}, Lcom/byazt/eia/i;->my()Lcom/byazt/ete/yp;

    move-result-object v0

    .line 7
    :goto_1
    invoke-static {v0, v3}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/ete/yp;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/byazt/bb/tt;->uj:Lcom/byazt/hl/c;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v3

    .line 9
    :cond_4
    iget-object v1, p0, Lcom/byazt/bb/tt;->c:Lcom/byazt/eia/i;

    iget-object v4, p0, Lcom/byazt/bb/tt;->a:Ljava/util/Map;

    invoke-static {v1, v4}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    iget-object v0, p0, Lcom/byazt/bb/tt;->uj:Lcom/byazt/hl/c;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v3

    .line 11
    :cond_6
    iget-object v1, p0, Lcom/byazt/bb/tt;->c:Lcom/byazt/eia/i;

    iget-object v4, p0, Lcom/byazt/bb/tt;->a:Ljava/util/Map;

    invoke-static {v1, v4}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12
    iget-object v0, p0, Lcom/byazt/bb/tt;->uj:Lcom/byazt/hl/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v3

    .line 13
    :cond_8
    new-instance v1, Lcom/byazt/wdw/ve;

    iget-object v3, p0, Lcom/byazt/bb/tt;->c:Lcom/byazt/eia/i;

    iget-object v4, p0, Lcom/byazt/bb/tt;->tt:Landroid/content/Context;

    iget-object v5, p0, Lcom/byazt/bb/tt;->a:Ljava/util/Map;

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/byazt/wdw/ve;-><init>(Lcom/byazt/eia/i;Lcom/byazt/ete/yp;Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/byazt/bb/tt;->ve:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v0}, Lcom/byazt/wdw/ve;->c(Ljava/lang/String;)Lcom/byazt/wdw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/bb/tt$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/bb/tt$1;-><init>(Lcom/byazt/bb/tt;Ljava/util/Map;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/wdw/ve$c;)I

    return v2
.end method
