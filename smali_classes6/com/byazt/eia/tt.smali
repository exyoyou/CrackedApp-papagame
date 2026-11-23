.class public Lcom/byazt/eia/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eia/c;
.implements Lcom/byazt/eia/sp;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x418,
        0xd
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "id"
        tt = "DSL"
    .end annotation
.end field

.field public volatile da:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_click_button"
    .end annotation
.end field

.field public gr:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "market_url"
    .end annotation
.end field

.field public gt:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "app_manage"
    .end annotation
.end field

.field public gu:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "req_id"
    .end annotation
.end field

.field public volatile i:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_open_market_intercept_for_dsp"
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ext"
    .end annotation
.end field

.field public my:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "not_valid_download_url"
    .end annotation
.end field

.field public n:Lcom/byazt/yzg/ve;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_popup_manager"
    .end annotation
.end field

.field public nu:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ad_id"
    .end annotation
.end field

.field public p:Lcom/byazt/ete/n;

.field public qy:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "union_session_key"
    .end annotation
.end field

.field public rh:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "if_both_open"
    .end annotation
.end field

.field public rl:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "enable_update_download_model"
    .end annotation
.end field

.field public sl:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_url"
    .end annotation
.end field

.field public volatile sp:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field

.field public t:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_conf"
    .end annotation
.end field

.field public tt:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "url"
        tt = "DSL"
    .end annotation
.end field

.field public u:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "app"
    .end annotation
.end field

.field public uj:Lcom/byazt/su/DownloadStatusChangeListener;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_status_listener"
    .end annotation
.end field

.field public ve:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public x:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "need_check_compliance"
    .end annotation
.end field

.field public yp:Lcom/byazt/hl/c;
    .annotation runtime Lcom/byazt/ls/c;
        c = "dialog_to_landing_page_convert"
    .end annotation
.end field

.field public yv:Lcom/byazt/ete/gt;

.field public z:Lcom/byazt/zd/tt;
    .annotation runtime Lcom/byazt/ls/c;
        c = "pip_controller"
    .end annotation
.end field

.field public zm:Lcom/byazt/ete/a;


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
    iput-boolean v0, p0, Lcom/byazt/eia/tt;->sp:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/eia/tt;->x:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public B_()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/tt;->my:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eia/tt;->sl:Ljava/lang/String;

    return-void
.end method

.method public da()Lcom/byazt/yzg/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->n:Lcom/byazt/yzg/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->gr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public gt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/tt;->rl:Z

    .line 2
    .line 3
    return v0
.end method

.method public gu()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/eia/tt;->q_()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/eia/tt;->q_()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "ad_id"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v0, ""

    .line 19
    .line 20
    return-object v0
.end method

.method public i()Lcom/byazt/su/DownloadStatusChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->uj:Lcom/byazt/su/DownloadStatusChangeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lcom/byazt/hl/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->yp:Lcom/byazt/hl/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu()Lcom/byazt/zd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->z:Lcom/byazt/zd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public q_()Lorg/json/JSONObject;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/byazt/eia/tt;->n()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public qy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->gu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public rh()Lcom/byazt/ete/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->zm:Lcom/byazt/ete/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/eia/tt;->gt:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/byazt/ete/a;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/byazt/ete/a;-><init>(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/byazt/eia/tt;->zm:Lcom/byazt/ete/a;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/tt;->zm:Lcom/byazt/ete/a;

    .line 17
    .line 18
    return-object v0
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->qy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/tt;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/tt;->sp:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/tt;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/tt;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public u_()Lcom/byazt/ete/gt;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->yv:Lcom/byazt/ete/gt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/eia/tt;->t:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/byazt/ete/gt;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/byazt/ete/gt;-><init>(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/byazt/eia/tt;->yv:Lcom/byazt/ete/gt;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/tt;->yv:Lcom/byazt/ete/gt;

    .line 17
    .line 18
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x_()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/eia/tt;->rh:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public yp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lcom/byazt/ete/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/tt;->p:Lcom/byazt/ete/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/eia/tt;->u:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/omf/c;->tt(Lorg/json/JSONObject;)Lcom/byazt/ete/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/eia/tt;->p:Lcom/byazt/ete/n;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/eia/tt;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/ete/n;->uj(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/eia/tt;->p:Lcom/byazt/ete/n;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/byazt/eia/tt;->tt:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/ete/n;->tt(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/tt;->p:Lcom/byazt/ete/n;

    .line 28
    .line 29
    return-object v0
.end method
