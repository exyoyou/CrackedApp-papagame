.class public Lcom/byazt/cj/sp;
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
        0x5b
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/yzg/ve;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_popup_manager"
    .end annotation
.end field

.field public c:Lcom/byazt/ete/ic;
    .annotation runtime Lcom/byazt/ls/c;
        c = "material_meta"
    .end annotation
.end field

.field public da:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_url"
    .end annotation
.end field

.field public volatile i:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_click_button"
    .end annotation
.end field

.field public n:Lcom/byazt/su/DownloadStatusChangeListener;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_status_listener"
    .end annotation
.end field

.field public sl:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_conf"
    .end annotation
.end field

.field public sp:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "need_check_compliance"
    .end annotation
.end field

.field public t:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "app"
    .end annotation
.end field

.field public tt:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public u:Lcom/byazt/hl/c;
    .annotation runtime Lcom/byazt/ls/c;
        c = "dialog_to_landing_page_convert"
    .end annotation
.end field

.field public uj:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public volatile ve:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field

.field public volatile x:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_open_market_intercept_for_dsp"
    .end annotation
.end field

.field public yp:Lcom/byazt/zd/tt;
    .annotation runtime Lcom/byazt/ls/c;
        c = "pip_controller"
    .end annotation
.end field

.field public z:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "enable_update_download_model"
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
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/cj/sp;->ve:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/cj/sp;->sp:I

    .line 8
    .line 9
    return-void
.end method

.method private c()Z
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/byazt/cj/sp;->c:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/cj/sp;->tt:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/cj/sp;->da:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/byazt/cj/sp;->t:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/byazt/omf/c;->tt(Lorg/json/JSONObject;)Lcom/byazt/ete/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cj/sp;->da:Ljava/lang/String;

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/byazt/cj/sp;->da:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/byazt/cj/sp;->uj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/byazt/cj/sp;->a:Lcom/byazt/yzg/ve;

    if-nez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 12
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
    invoke-direct {p0}, Lcom/byazt/cj/sp;->c()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p3, p2, v1}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return v0

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/byazt/bb/c;->uj(Ljava/util/Map;)I

    move-result p1

    .line 4
    new-instance v11, Lcom/byazt/bb/uj;

    iget-object v3, p0, Lcom/byazt/cj/sp;->c:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/cj/sp;->tt:Landroid/content/Context;

    iget-object v5, p0, Lcom/byazt/cj/sp;->uj:Ljava/lang/String;

    iget-object v6, p0, Lcom/byazt/cj/sp;->a:Lcom/byazt/yzg/ve;

    iget-object v7, p0, Lcom/byazt/cj/sp;->da:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/byazt/cj/sp;->z:Z

    const/4 v10, 0x0

    move-object v2, v11

    move-object v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/byazt/bb/uj;-><init>(Lcom/byazt/eia/sp;Landroid/content/Context;Ljava/lang/String;Lcom/byazt/yzg/ve;Ljava/lang/String;ZLjava/util/Map;Z)V

    .line 5
    iget-boolean v2, p0, Lcom/byazt/cj/sp;->i:Z

    invoke-virtual {v11, v2}, Lcom/byazt/bb/c;->tt(Z)V

    .line 6
    iget-boolean v2, p0, Lcom/byazt/cj/sp;->x:Z

    invoke-virtual {v11, v2, p1}, Lcom/byazt/bb/c;->c(ZI)V

    .line 7
    iget-object p1, p0, Lcom/byazt/cj/sp;->n:Lcom/byazt/su/DownloadStatusChangeListener;

    invoke-virtual {v11, p1}, Lcom/byazt/bb/c;->c(Lcom/byazt/su/DownloadStatusChangeListener;)V

    .line 8
    iget-boolean p1, p0, Lcom/byazt/cj/sp;->ve:Z

    invoke-virtual {v11, p1}, Lcom/byazt/bb/c;->c(Z)V

    .line 9
    iget p1, p0, Lcom/byazt/cj/sp;->sp:I

    invoke-virtual {v11, p1}, Lcom/byazt/bb/c;->c(I)V

    .line 10
    iget-object p1, p0, Lcom/byazt/cj/sp;->u:Lcom/byazt/hl/c;

    invoke-virtual {v11, p1}, Lcom/byazt/bb/c;->c(Lcom/byazt/hl/c;)V

    .line 11
    new-instance p1, Lcom/byazt/ete/gt;

    iget-object v2, p0, Lcom/byazt/cj/sp;->sl:Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lcom/byazt/ete/gt;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v11, p1}, Lcom/byazt/bb/c;->c(Lcom/byazt/ete/gt;)V

    .line 12
    new-instance p1, Lcom/byazt/szt/tt;

    iget-object v2, p0, Lcom/byazt/cj/sp;->yp:Lcom/byazt/zd/tt;

    invoke-direct {p1, v11, v2}, Lcom/byazt/szt/tt;-><init>(Lcom/byazt/hl/c;Lcom/byazt/zd/tt;)V

    .line 13
    invoke-virtual {p1, p2}, Lcom/byazt/szt/tt;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p3, p2, v1}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    :goto_0
    return v0
.end method
