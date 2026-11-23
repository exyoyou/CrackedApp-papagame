.class public Lcom/byazt/eia/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eia/c;
.implements Lcom/byazt/eia/i;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x418,
        0x2e
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "toast"
        tt = "DSL"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ec_schema"
        tt = "DSL"
    .end annotation
.end field

.field public cu:Lcom/byazt/ete/q;

.field public d:Lcom/byazt/ete/sv;

.field public da:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public eo:Lorg/json/JSONObject;

.field public gr:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ext"
    .end annotation
.end field

.field public gt:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "union_session_key"
    .end annotation
.end field

.field public gu:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "reward_live"
    .end annotation
.end field

.field public h:Lcom/byazt/ete/yp;

.field public i:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "live_params"
        tt = "DSL"
    .end annotation
.end field

.field public m:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "live_info"
    .end annotation
.end field

.field public md:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "live_sdk_status_while_first_click"
    .end annotation
.end field

.field public my:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "saas_info"
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "link_url"
        tt = "DSL"
    .end annotation
.end field

.field public nu:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "sub_convert_link"
    .end annotation
.end field

.field public or:Lcom/byazt/ete/nu;

.field public p:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "saas_on_click_material"
    .end annotation
.end field

.field public qp:Lcom/byazt/ete/kk;

.field public qy:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ad_id"
    .end annotation
.end field

.field public rh:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "deep_link"
    .end annotation
.end field

.field public rl:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "dynamic_configs"
    .end annotation
.end field

.field public sl:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public sp:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "live_type"
        tt = "DSL"
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "dpa_tag"
    .end annotation
.end field

.field public tt:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "coupon_scene"
        tt = "DSL"
    .end annotation
.end field

.field public u:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "live_saas_interaction_type"
    .end annotation
.end field

.field public uj:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "amount"
        tt = "DSL"
    .end annotation
.end field

.field public ve:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "has_coupon"
        tt = "DSL"
    .end annotation
.end field

.field public x:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "room_id"
        tt = "DSL"
    .end annotation
.end field

.field public yp:Landroid/view/View;
    .annotation runtime Lcom/byazt/ls/c;
        c = "view"
    .end annotation
.end field

.field public yv:Lorg/json/JSONObject;
    .annotation runtime Lcom/byazt/ls/c;
        c = "coupon"
    .end annotation
.end field

.field public z:Ljava/util/Map;
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

.field public zb:Lcom/byazt/ete/qy;

.field public zm:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "req_id"
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
    iput v0, p0, Lcom/byazt/eia/n;->u:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public C_()Lcom/byazt/ete/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->cu:Lcom/byazt/ete/q;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/eia/n;->my:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/q;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/eia/n;->cu:Lcom/byazt/ete/q;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/n;->cu:Lcom/byazt/ete/q;

    .line 16
    .line 17
    return-object v0
.end method

.method public D_()Lcom/byazt/ete/kk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->p:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/eia/n;->qp:Lcom/byazt/ete/kk;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/kk;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/kk;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/eia/n;->qp:Lcom/byazt/ete/kk;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/n;->qp:Lcom/byazt/ete/kk;

    .line 16
    .line 17
    return-object v0
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

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/eia/n;->md:I

    return-void
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->da:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public gu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/n;->md:I

    .line 2
    .line 3
    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->z:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->rl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public my()Lcom/byazt/ete/yp;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->yv:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/eia/n;->h:Lcom/byazt/ete/yp;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/yp;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/yp;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/eia/n;->h:Lcom/byazt/ete/yp;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/eia/n;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/ete/yp;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/eia/n;->h:Lcom/byazt/ete/yp;

    .line 21
    .line 22
    iget v1, p0, Lcom/byazt/eia/n;->tt:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/ete/yp;->c(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/eia/n;->h:Lcom/byazt/ete/yp;

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/byazt/eia/n;->ve:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/ete/yp;->c(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/eia/n;->h:Lcom/byazt/ete/yp;

    .line 35
    .line 36
    iget v1, p0, Lcom/byazt/eia/n;->uj:I

    .line 37
    .line 38
    int-to-long v1, v1

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ete/yp;->c(J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/n;->h:Lcom/byazt/ete/yp;

    .line 43
    .line 44
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/n;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public q_()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->gr:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/eia/n;->eo:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/eia/n;->gr:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/eia/n;->eo:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/n;->eo:Lorg/json/JSONObject;

    .line 19
    .line 20
    return-object v0
.end method

.method public qy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->zm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->gt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Lcom/byazt/ete/sv;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->m:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/eia/n;->d:Lcom/byazt/ete/sv;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/sv;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/sv;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/eia/n;->d:Lcom/byazt/ete/sv;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/n;->d:Lcom/byazt/ete/sv;

    .line 16
    .line 17
    return-object v0
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/n;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t_()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lcom/byazt/ete/qy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->zb:Lcom/byazt/ete/qy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/eia/n;->nu:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/byazt/ete/qy;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v0, v2}, Lcom/byazt/ete/qy;-><init>(Lorg/json/JSONObject;Z)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/byazt/eia/n;->zb:Lcom/byazt/ete/qy;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/n;->zb:Lcom/byazt/ete/qy;

    .line 18
    .line 19
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->qy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w_()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->gr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->yp:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public y_()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->gu:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public yp()Lcom/byazt/ete/nu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/n;->or:Lcom/byazt/ete/nu;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ete/nu;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/eia/n;->rh:Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/byazt/ete/nu;-><init>(Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/eia/n;->or:Lcom/byazt/ete/nu;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/eia/n;->n:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/eia/n;->or:Lcom/byazt/ete/nu;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/eia/n;->n:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/ete/nu;->tt(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/n;->or:Lcom/byazt/ete/nu;

    .line 30
    .line 31
    return-object v0
.end method
