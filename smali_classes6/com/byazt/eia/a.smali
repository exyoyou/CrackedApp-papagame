.class public Lcom/byazt/eia/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eia/c;
.implements Lcom/byazt/eia/sl;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x418,
        0x22
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "deep_link"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "url"
        tt = "DSL"
    .end annotation
.end field

.field public da:Lcom/byazt/pop/ve;
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_adapter"
    .end annotation
.end field

.field public gr:Lcom/byazt/ete/pf;

.field public volatile gt:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_click_button"
    .end annotation
.end field

.field public gu:Lcom/byazt/ete/n;

.field public i:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_downloader"
    .end annotation
.end field

.field public m:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "reward_live"
    .end annotation
.end field

.field public my:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_web_meta"
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public nu:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "req_id"
    .end annotation
.end field

.field public qy:Lcom/byazt/ete/nu;

.field public rh:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "live_interaction_type"
    .end annotation
.end field

.field public rl:Lcom/byazt/ete/qy;

.field public sl:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_tag"
    .end annotation
.end field

.field public sp:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "app"
    .end annotation
.end field

.field public t:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "sub_convert_link"
    .end annotation
.end field

.field public tt:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "type"
        tt = "DSL"
    .end annotation
.end field

.field public u:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "if_double_deeplink"
    .end annotation
.end field

.field public uj:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public ve:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "download_conf.download_type"
    .end annotation
.end field

.field public x:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field

.field public yp:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ad_id"
    .end annotation
.end field

.field public z:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "reward_live_deep_link_params"
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
    iput v0, p0, Lcom/byazt/eia/a;->ve:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/a;->ve:I

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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/a;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->uj:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public gt()Lcom/byazt/ete/pf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->gr:Lcom/byazt/ete/pf;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/byazt/eia/a;->tt()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/ete/pf;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/eia/a;->tt()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/byazt/ete/pf;-><init>(Lorg/json/JSONObject;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/eia/a;->gr:Lcom/byazt/ete/pf;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/a;->gr:Lcom/byazt/ete/pf;

    .line 23
    .line 24
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/a;->rh:I

    .line 2
    .line 3
    return v0
.end method

.method public nu()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/eia/a;->u:I

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

.method public qy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public rh()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->m:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public s_()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/a;->my:Z

    .line 2
    .line 3
    return v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/a;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/a;->gt:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()Lcom/byazt/pop/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->da:Lcom/byazt/pop/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->z:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lcom/byazt/ete/qy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->rl:Lcom/byazt/ete/qy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ete/qy;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/eia/a;->t:Lorg/json/JSONObject;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/byazt/ete/qy;-><init>(Lorg/json/JSONObject;Z)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/eia/a;->rl:Lcom/byazt/ete/qy;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/a;->rl:Lcom/byazt/ete/qy;

    .line 16
    .line 17
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->yp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/a;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public yp()Lcom/byazt/ete/nu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->qy:Lcom/byazt/ete/nu;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ete/nu;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/eia/a;->a:Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/byazt/ete/nu;-><init>(Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/eia/a;->qy:Lcom/byazt/ete/nu;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/a;->qy:Lcom/byazt/ete/nu;

    .line 15
    .line 16
    return-object v0
.end method

.method public z()Lcom/byazt/ete/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/a;->gu:Lcom/byazt/ete/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/eia/a;->sp:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/omf/c;->tt(Lorg/json/JSONObject;)Lcom/byazt/ete/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/byazt/eia/a;->gu:Lcom/byazt/ete/n;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/a;->gu:Lcom/byazt/ete/n;

    .line 14
    .line 15
    return-object v0
.end method

.method public z_()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/eia/a;->rh()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/eia/a;->rh()Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "isValid"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    return v1
.end method
