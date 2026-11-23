.class public Lcom/byazt/ux/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/rh;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x22
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ete/ic;

.field public c:Landroid/content/Context;

.field public da:Lcom/byazt/ouz/sl;

.field public i:Lcom/byazt/ux/x;

.field public n:Lcom/byazt/ux/ve;

.field public sl:Lcom/byazt/omf/d;

.field public sp:Lcom/byazt/xj/ve;

.field public t:Ljava/lang/String;

.field public tt:Lcom/byazt/ddx/sp;

.field public u:I

.field public uj:Lcom/byazt/ux/uj;

.field public ve:Lcom/byazt/xj/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/byazt/ux/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ux/a;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/ux/a;->tt:Lcom/byazt/ddx/sp;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/ux/a;->a:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/ux/a;->t:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/byazt/ux/a;->u:I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ux/a;->uj:Lcom/byazt/ux/uj;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ux/a;Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ux/a;->tt(Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ux/a;)Lcom/byazt/xj/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/a;->sp:Lcom/byazt/xj/ve;

    return-object p0
.end method

.method private tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "type"

    .line 41
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nodeId"

    .line 42
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "onDismiss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "onShow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/byazt/ux/a;->n:Lcom/byazt/ux/ve;

    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/ux/ve;->ve(Lcom/byazt/xj/ve;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/byazt/ux/a;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->tt(I)V

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/byazt/ux/a;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 49
    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->tt(I)V

    :cond_4
    :goto_0
    const-string v0, "reportType"

    .line 50
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 52
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/ux/a$5;

    invoke-direct {v1, p0, p3}, Lcom/byazt/ux/a$5;-><init>(Lcom/byazt/ux/a;Ljava/lang/String;)V

    const-string p3, "agg_click"

    invoke-virtual {v0, v1, p3}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 53
    invoke-virtual {p1}, Lcom/byazt/sz/m;->uj()Lcom/byazt/sz/m;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 54
    invoke-virtual {p1}, Lcom/byazt/sz/m;->uj()Lcom/byazt/sz/m;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/byazt/sz/rh$tt;->c(Lcom/byazt/sz/m;)V

    :cond_6
    return-void
.end method

.method private tt(Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;",
            "Lcom/byazt/ux/sp;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/sz/z;

    iget-object v1, p0, Lcom/byazt/ux/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/byazt/sz/yp;

    invoke-direct {v1}, Lcom/byazt/sz/yp;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/byazt/ux/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/byazt/sz/yp;->c(Landroid/content/Context;)V

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "key_material"

    .line 6
    iget-object v4, p0, Lcom/byazt/ux/a;->a:Lcom/byazt/ete/ic;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 9
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/pj/ve;

    invoke-virtual {v6}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v5, Lcom/byazt/omf/d;

    iget-object v6, p0, Lcom/byazt/ux/a;->c:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/byazt/ux/a;->sl:Lcom/byazt/omf/d;

    .line 11
    iget-object v6, p0, Lcom/byazt/ux/a;->da:Lcom/byazt/ouz/sl;

    invoke-virtual {v5, v6}, Lcom/byazt/omf/d;->c(Lcom/byazt/ouz/sl;)Lcom/byazt/omf/d;

    .line 12
    iget-object v5, p0, Lcom/byazt/ux/a;->sl:Lcom/byazt/omf/d;

    iget-object v6, p0, Lcom/byazt/ux/a;->x:Lcom/byazt/ux/tt;

    invoke-virtual {v5, v6}, Lcom/byazt/omf/d;->c(Lcom/byazt/ux/tt;)Lcom/byazt/omf/d;

    .line 13
    iget-object v5, p0, Lcom/byazt/ux/a;->sl:Lcom/byazt/omf/d;

    iget-object v6, p0, Lcom/byazt/ux/a;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 14
    iget-object v5, p0, Lcom/byazt/ux/a;->sl:Lcom/byazt/omf/d;

    iget v6, p0, Lcom/byazt/ux/a;->u:I

    invoke-virtual {v5, v6}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    const-string v5, "key_data_list"

    .line 15
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "key_js_object"

    .line 16
    iget-object v5, p0, Lcom/byazt/ux/a;->sl:Lcom/byazt/omf/d;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v1, v2}, Lcom/byazt/sz/yp;->c(Ljava/util/Map;)V

    const-string v2, "aggPage"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/byazt/sz/z;->c(Ljava/lang/String;Lcom/byazt/sz/yp;)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ux/a;->ve:Lcom/byazt/xj/ve;

    if-eqz p1, :cond_5

    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_2

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/byazt/ux/a;->ve:Lcom/byazt/xj/ve;

    const-string v1, "recycler_layout"

    invoke-virtual {p1, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ux/a;->sp:Lcom/byazt/xj/ve;

    .line 22
    instance-of v1, p1, Lcom/byazt/pj/a;

    if-eqz v1, :cond_2

    .line 23
    check-cast p1, Lcom/byazt/pj/a;

    invoke-virtual {p1, p2}, Lcom/byazt/pj/a;->c(Ljava/util/List;)V

    .line 24
    iget-object p1, p0, Lcom/byazt/ux/a;->sp:Lcom/byazt/xj/ve;

    check-cast p1, Lcom/byazt/pj/a;

    new-instance v1, Lcom/byazt/ux/a$2;

    invoke-direct {v1, p0}, Lcom/byazt/ux/a$2;-><init>(Lcom/byazt/ux/a;)V

    invoke-virtual {p1, v1}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a$tt;)V

    .line 25
    iget-object p1, p0, Lcom/byazt/ux/a;->sp:Lcom/byazt/xj/ve;

    check-cast p1, Lcom/byazt/pj/a;

    new-instance v1, Lcom/byazt/ux/a$3;

    invoke-direct {v1, p0}, Lcom/byazt/ux/a$3;-><init>(Lcom/byazt/ux/a;)V

    invoke-virtual {p1, v1}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/uj;)V

    .line 26
    :cond_2
    new-instance p1, Lcom/byazt/ux/a$4;

    invoke-direct {p1, p0}, Lcom/byazt/ux/a$4;-><init>(Lcom/byazt/ux/a;)V

    invoke-virtual {v0, p1}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/da;)V

    .line 27
    invoke-virtual {v0, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 28
    iget-object p1, p0, Lcom/byazt/ux/a;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object p1

    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 30
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/pj/ve;

    :try_start_0
    const-string v1, "ugen_sub_meta"

    .line 31
    invoke-virtual {p2}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 32
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 33
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lcom/byazt/sz/z;->tt(Lorg/json/JSONObject;)V

    .line 34
    iget-object p1, p0, Lcom/byazt/ux/a;->tt:Lcom/byazt/ddx/sp;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ddx/sp;->c(J)V

    if-eqz p3, :cond_4

    .line 35
    iget-object p1, p0, Lcom/byazt/ux/a;->ve:Lcom/byazt/xj/ve;

    invoke-interface {p3, p1}, Lcom/byazt/ux/sp;->c(Lcom/byazt/xj/ve;)V

    :cond_4
    return-void

    .line 36
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/byazt/ux/a;->tt:Lcom/byazt/ddx/sp;

    const/4 p2, -0x1

    if-eqz p1, :cond_6

    const-string v0, "ugeno render fail"

    .line 37
    invoke-virtual {p1, p2, v0}, Lcom/byazt/ddx/sp;->c(ILjava/lang/String;)V

    :cond_6
    if-eqz p3, :cond_7

    const-string p1, ""

    .line 38
    invoke-interface {p3, p2, p1}, Lcom/byazt/ux/sp;->c(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/ux/a;)Lcom/byazt/ux/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/a;->n:Lcom/byazt/ux/ve;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Lcom/byazt/xj/ve;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/ux/a;->sp:Lcom/byazt/xj/ve;

    return-object v0
.end method

.method public c(Lcom/byazt/ouz/sl;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/ux/a;->da:Lcom/byazt/ouz/sl;

    return-void
.end method

.method public c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    .line 14
    invoke-direct {p0, p1, v0, v0}, Lcom/byazt/ux/a;->tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result p2

    const/16 p3, 0xa

    if-ne p2, p3, :cond_2

    .line 16
    iget-object p2, p0, Lcom/byazt/ux/a;->i:Lcom/byazt/ux/x;

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/byazt/ux/x;->tt(Lcom/byazt/xj/ve;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/ux/a;->sl:Lcom/byazt/omf/d;

    if-eqz p1, :cond_2

    const-string p2, "webviewVisible"

    .line 19
    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/ux/tt;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/ux/a;->x:Lcom/byazt/ux/tt;

    return-void
.end method

.method public c(Lcom/byazt/ux/uj;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ux/a;->uj:Lcom/byazt/ux/uj;

    return-void
.end method

.method public c(Lcom/byazt/ux/ve;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/ux/a;->n:Lcom/byazt/ux/ve;

    return-void
.end method

.method public c(Lcom/byazt/ux/x;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/ux/a;->i:Lcom/byazt/ux/x;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;",
            "Lcom/byazt/ux/sp;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ux/a;->tt(Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/ux/a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/ux/a$1;-><init>(Lcom/byazt/ux/a;Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
