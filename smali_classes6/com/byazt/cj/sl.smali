.class public Lcom/byazt/cj/sl;
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
        0x9e
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;
    .annotation runtime Lcom/byazt/ls/c;
        c = "view"
    .end annotation
.end field

.field public c:Lcom/byazt/ete/ic;
    .annotation runtime Lcom/byazt/ls/c;
        c = "material_meta"
    .end annotation
.end field

.field public n:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "live_saas_interaction_type"
    .end annotation
.end field

.field public sp:Ljava/util/Map;
    .annotation runtime Lcom/byazt/ls/c;
        c = "handle_chain_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public uj:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "dpa_tag"
    .end annotation
.end field

.field public ve:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
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
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/cj/sl;->n:I

    .line 6
    .line 7
    return-void
.end method

.method private c()Z
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/byazt/cj/sl;->c:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/sl;->tt:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
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
    invoke-direct {p0}, Lcom/byazt/cj/sl;->c()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p3, p2, v0}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/cj/sl;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->mu()I

    move-result p1

    const/16 v1, -0x3e9

    if-eq p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/byazt/cj/sl;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->mu()I

    move-result p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/apd/tt;->ve()I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/byazt/cj/sl;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1, p1}, Lcom/byazt/ete/ic;->iu(I)V

    :goto_0
    const-string v1, "saas_status_while_click"

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p1, Lcom/byazt/bb/a;

    iget-object v3, p0, Lcom/byazt/cj/sl;->c:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/cj/sl;->tt:Landroid/content/Context;

    iget-object v5, p0, Lcom/byazt/cj/sl;->ve:Ljava/lang/String;

    iget-object v6, p0, Lcom/byazt/cj/sl;->uj:Ljava/lang/String;

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/byazt/bb/a;-><init>(Lcom/byazt/eia/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    iget v1, p0, Lcom/byazt/cj/sl;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 10
    invoke-virtual {p1, v1}, Lcom/byazt/bb/a;->tt(I)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/byazt/cj/sl;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/byazt/bb/a;->c(Landroid/view/View;)V

    .line 12
    iget-object v1, p0, Lcom/byazt/cj/sl;->sp:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/byazt/bb/a;->tt(Ljava/util/Map;)V

    .line 13
    new-instance v1, Lcom/byazt/bb/n;

    iget-object v4, p0, Lcom/byazt/cj/sl;->c:Lcom/byazt/ete/ic;

    iget-object v7, p0, Lcom/byazt/cj/sl;->ve:Ljava/lang/String;

    move-object v2, v1

    move-object v3, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/byazt/bb/n;-><init>(Lcom/byazt/hl/c;Lcom/byazt/eia/i;Lcom/byazt/cq/c;Ljava/util/Map;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/byazt/bb/tt;

    iget-object v4, p0, Lcom/byazt/cj/sl;->tt:Landroid/content/Context;

    iget-object v5, p0, Lcom/byazt/cj/sl;->c:Lcom/byazt/ete/ic;

    iget-object v6, p0, Lcom/byazt/cj/sl;->ve:Ljava/lang/String;

    move-object v2, p1

    move-object v3, v1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/byazt/bb/tt;-><init>(Lcom/byazt/hl/c;Landroid/content/Context;Lcom/byazt/eia/i;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/cq/c;)V

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v1}, Lcom/byazt/bb/tt;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p3, p2, v0}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
