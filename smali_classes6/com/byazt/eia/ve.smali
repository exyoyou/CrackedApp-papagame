.class public Lcom/byazt/eia/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eia/c;
.implements Lcom/byazt/eia/x;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x418,
        0x36
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/zd/tt;
    .annotation runtime Lcom/byazt/ls/c;
        c = "pip_controller"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "url"
        tt = "DSL"
    .end annotation
.end field

.field public da:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "open_video_detail_page_direct"
    .end annotation
.end field

.field public gt:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "icon.url"
    .end annotation
.end field

.field public i:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "landing_page_source"
    .end annotation
.end field

.field public m:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "live_interaction_type"
    .end annotation
.end field

.field public my:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ad_id"
    .end annotation
.end field

.field public n:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field

.field public nu:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "req_id"
    .end annotation
.end field

.field public rh:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "gecko_id"
    .end annotation
.end field

.field public rl:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "union_session_key"
    .end annotation
.end field

.field public sl:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_from_video_layout"
    .end annotation
.end field

.field public sp:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "target_url"
    .end annotation
.end field

.field public tt:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "title"
        tt = "DSL"
    .end annotation
.end field

.field public u:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "interaction_type"
    .end annotation
.end field

.field public uj:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_open_web_page"
    .end annotation
.end field

.field public ve:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public x:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "landing_page_url"
    .end annotation
.end field

.field public yp:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "get_phone_num_status"
    .end annotation
.end field

.field public z:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "ext"
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
    iput v0, p0, Lcom/byazt/eia/ve;->i:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map;
    .locals 2
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
    const-string v1, "title"

    .line 7
    .line 8
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v1, "button_text"

    .line 12
    .line 13
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v1, "block_auto_open"

    .line 17
    .line 18
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string v1, "disable_top_bar"

    .line 22
    .line 23
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v1, "disable_safe_area"

    .line 27
    .line 28
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v1, "disable_rtn_button"

    .line 32
    .line 33
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->ve:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/ve;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/ve;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/ve;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public nu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/ve;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public qy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->rl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/ve;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eia/ve;->yp:I

    .line 2
    .line 3
    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/eia/ve;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->gt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lcom/byazt/zd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->a:Lcom/byazt/zd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->my:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v_()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->rh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w_()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public yp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eia/ve;->x:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/eia/ve;->x:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/eia/ve;->c:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method
