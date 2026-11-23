.class public Lcom/byazt/cj/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kkb/ve;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0x42
    }
.end annotation


# instance fields
.field public a:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "landing_page_source"
    .end annotation
.end field

.field public c:Lcom/byazt/ete/ic;
    .annotation runtime Lcom/byazt/ls/c;
        c = "material_meta"
    .end annotation
.end field

.field public n:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "wc_miniapp_info"
    .end annotation
.end field

.field public tt:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public uj:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public ve:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()Z
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/cj/t;->c:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/t;->tt:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/cj/t;->n:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 11
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
    invoke-direct {p0}, Lcom/byazt/cj/t;->c()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p3, p2, v1}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return v0

    .line 3
    :cond_0
    new-instance p1, Lcom/byazt/bb/x;

    iget-object v3, p0, Lcom/byazt/cj/t;->c:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/cj/t;->tt:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/byazt/cj/t;->ve:Z

    iget-object v6, p0, Lcom/byazt/cj/t;->uj:Ljava/lang/String;

    iget v9, p0, Lcom/byazt/cj/t;->a:I

    const/4 v10, 0x0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v10}, Lcom/byazt/bb/x;-><init>(Lcom/byazt/eia/da;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/byazt/cq/c;IZ)V

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v2}, Lcom/byazt/bb/x;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p3, p2, v1}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    :goto_0
    return v0
.end method
