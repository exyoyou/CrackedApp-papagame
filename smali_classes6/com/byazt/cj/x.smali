.class public Lcom/byazt/cj/x;
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
        0x47
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public c:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field

.field public da:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_from_new_click_event"
    .end annotation
.end field

.field public i:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_show_download_dialog"
    .end annotation
.end field

.field public n:Lcom/byazt/ete/uj;
    .annotation runtime Lcom/byazt/ls/c;
        c = "app_manage_model"
    .end annotation
.end field

.field public sl:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "dynamic_download_dialog_type"
    .end annotation
.end field

.field public sp:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_url"
    .end annotation
.end field

.field public t:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_direct_download"
    .end annotation
.end field

.field public tt:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public u:Lcom/byazt/av/c;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_dialog_listener"
    .end annotation
.end field

.field public uj:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_app_market_convert"
    .end annotation
.end field

.field public ve:Lcom/byazt/ete/ic;
    .annotation runtime Lcom/byazt/ls/c;
        c = "material_meta"
    .end annotation
.end field

.field public x:Lcom/byazt/av/tt;
    .annotation runtime Lcom/byazt/ls/c;
        c = "start_download_listener"
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
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/cj/x;->i:Z

    .line 6
    .line 7
    return-void
.end method

.method private c()Lcom/byazt/yzg/c;
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/byazt/cj/x;->uj:Z

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcom/byazt/yzg/n;

    invoke-direct {v0}, Lcom/byazt/yzg/n;-><init>()V

    return-object v0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/cj/x;->c:Z

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/byazt/yzg/uj;

    invoke-direct {v0}, Lcom/byazt/yzg/uj;-><init>()V

    return-object v0

    .line 16
    :cond_1
    new-instance v0, Lcom/byazt/yzg/tt;

    invoke-direct {v0}, Lcom/byazt/yzg/tt;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 5
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
    new-instance p1, Lcom/byazt/yzg/ve;

    iget-object v0, p0, Lcom/byazt/cj/x;->tt:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/cj/x;->ve:Lcom/byazt/ete/ic;

    invoke-direct {p1, v0, v1}, Lcom/byazt/yzg/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 2
    iget-boolean v0, p0, Lcom/byazt/cj/x;->t:Z

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/ve;->ve(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/byazt/cj/x;->i:Z

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/ve;->c(Z)V

    .line 4
    iget v0, p0, Lcom/byazt/cj/x;->sl:I

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/ve;->c(I)V

    .line 5
    iget-boolean v0, p0, Lcom/byazt/cj/x;->da:Z

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/ve;->tt(Z)V

    .line 6
    iget-object v0, p0, Lcom/byazt/cj/x;->u:Lcom/byazt/av/c;

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/av/c;)V

    .line 7
    invoke-direct {p0}, Lcom/byazt/cj/x;->c()Lcom/byazt/yzg/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/c;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/byazt/yzg/ve;->uj(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p3, p2, p1}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/x;->n:Lcom/byazt/ete/uj;

    iget-object v2, p0, Lcom/byazt/cj/x;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/cj/x;->sp:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/cj/x;->x:Lcom/byazt/av/tt;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/uj;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/av/tt;)V

    .line 11
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;)V

    return v1
.end method
