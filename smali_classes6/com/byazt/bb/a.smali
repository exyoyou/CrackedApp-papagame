.class public Lcom/byazt/bb/a;
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
        0x22
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public c:Lcom/byazt/hl/c;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public sp:Ljava/util/Map;
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

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Lcom/byazt/eia/i;


# direct methods
.method public constructor <init>(Lcom/byazt/eia/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/i;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/bb/a;->x:Lcom/byazt/eia/i;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/bb/a;->tt:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/bb/a;->ve:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/bb/a;->uj:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/bb/a;->i:Ljava/util/Map;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/bb/a;->tt()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private c()Z
    .locals 6

    .line 13
    iget v0, p0, Lcom/byazt/bb/a;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 14
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 15
    iget v2, p0, Lcom/byazt/bb/a;->n:I

    invoke-static {v2}, Lcom/byazt/bb/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    iget v2, p0, Lcom/byazt/bb/a;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "live_saas_param_interaction_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/byazt/bb/a;->i:Ljava/util/Map;

    const-string v3, "saas_status_while_click"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, p0, Lcom/byazt/bb/a;->i:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v2, "event_tag"

    .line 19
    iget-object v3, p0, Lcom/byazt/bb/a;->ve:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v2, p0, Lcom/byazt/bb/a;->uj:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "dpa_tag"

    .line 21
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "material_meta"

    .line 22
    invoke-direct {p0}, Lcom/byazt/bb/a;->ve()Lcom/byazt/ete/ic;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v2, p0, Lcom/byazt/bb/a;->sp:Ljava/util/Map;

    if-nez v2, :cond_4

    .line 24
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/byazt/bb/a;->sp:Ljava/util/Map;

    .line 25
    :cond_4
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/bb/a;->a:Landroid/view/View;

    iget-object v4, p0, Lcom/byazt/bb/a;->x:Lcom/byazt/eia/i;

    invoke-interface {v4}, Lcom/byazt/eia/i;->sl()Lcom/byazt/ete/sv;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/bb/a;->sp:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/byazt/apd/tt;->c(Landroid/view/View;Lcom/byazt/ete/sv;Ljava/util/Map;Ljava/util/Map;)V

    .line 26
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/bb/a;->tt:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/bb/a;->x:Lcom/byazt/eia/i;

    invoke-virtual {v2, v3, v4, v0}, Lcom/byazt/apd/tt;->c(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_5

    .line 27
    iget-object v3, p0, Lcom/byazt/bb/a;->sp:Ljava/util/Map;

    const-string v4, "click_saas_action"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v2, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static c(I)Z
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private tt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/bb/a;->x:Lcom/byazt/eia/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/eia/i;->n()I

    move-result v0

    iput v0, p0, Lcom/byazt/bb/a;->n:I

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/byazt/bb/a;->n:I

    return-void
.end method

.method private ve()Lcom/byazt/ete/ic;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/a;->x:Lcom/byazt/eia/i;

    iget-object v1, p0, Lcom/byazt/bb/a;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    return-object v0
.end method

.method private ve(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/byazt/cr/uj;->uj:Lcom/byazt/cr/uj;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/byazt/cr/uj;->a:Lcom/byazt/cr/uj;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/byazt/cr/uj;->sp:Lcom/byazt/cr/uj;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/byazt/cr/uj;->n:Lcom/byazt/cr/uj;

    goto :goto_0

    .line 6
    :cond_3
    sget-object p1, Lcom/byazt/cr/uj;->ve:Lcom/byazt/cr/uj;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/byazt/bb/a;->i:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/byazt/bb/a;->a:Landroid/view/View;

    return-void
.end method

.method public c(Ljava/util/Map;)Z
    .locals 5
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
    invoke-direct {p0}, Lcom/byazt/bb/a;->c()Z

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/byazt/bb/a;->tt()V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "event_tag"

    .line 5
    iget-object v3, p0, Lcom/byazt/bb/a;->ve:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/byazt/bb/a;->uj:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dpa_tag"

    .line 7
    iget-object v3, p0, Lcom/byazt/bb/a;->uj:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "material_meta"

    .line 8
    invoke-direct {p0}, Lcom/byazt/bb/a;->ve()Lcom/byazt/ete/ic;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/byazt/bb/a;->tt:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/bb/a;->x:Lcom/byazt/eia/i;

    invoke-virtual {v2, v3, v4, v0}, Lcom/byazt/apd/tt;->c(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 11
    invoke-direct {p0, v0}, Lcom/byazt/bb/a;->ve(I)V

    if-nez v0, :cond_2

    return v1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/byazt/bb/a;->c:Lcom/byazt/hl/c;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public tt(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/bb/a;->n:I

    return-void
.end method

.method public tt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/a;->sp:Ljava/util/Map;

    return-void
.end method
