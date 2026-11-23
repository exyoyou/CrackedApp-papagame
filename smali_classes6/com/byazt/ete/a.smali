.class public Lcom/byazt/ete/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x22
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public da:Ljava/lang/String;

.field public i:Lorg/json/JSONArray;

.field public n:Ljava/lang/String;

.field public sl:Ljava/lang/String;

.field public sp:Ljava/lang/String;

.field public t:F

.field public tt:Ljava/lang/String;

.field public u:Lorg/json/JSONArray;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public yp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/byazt/ete/a;->yp:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/byazt/ete/a;->yp:Ljava/util/HashMap;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "developer_name"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->uj(Ljava/lang/String;)V

    const-string v0, "app_version"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->tt(Ljava/lang/String;)V

    const-string v0, "permissions"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->tt(Lorg/json/JSONArray;)V

    const-string v0, "privacy_policy_url"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->n(Ljava/lang/String;)V

    const-string v0, "package_name"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->i(Ljava/lang/String;)V

    const-string v0, "app_name"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->da(Ljava/lang/String;)V

    const-string v0, "score"

    const-wide/16 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->c(F)V

    const-string v0, "creative_tags"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->c(Lorg/json/JSONArray;)V

    const-string v0, "permissions_url"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->c(Ljava/lang/String;)V

    const-string v0, "desc_url"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->a(Ljava/lang/String;)V

    const-string v0, "reg_number"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/a;->sp(Ljava/lang/String;)V

    const-string v0, "reg_url"

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/ete/a;->x(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/ete/a;->yp:Ljava/util/HashMap;

    return-object v0
.end method

.method public c(F)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/ete/a;->t:F

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ete/a;->n:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/ete/a;->yp:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/ete/a;->u:Lorg/json/JSONArray;

    return-void
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public da(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->sl:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->da:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->uj:Ljava/lang/String;

    return-void
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public sp(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->sp:Ljava/lang/String;

    return-void
.end method

.method public t()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->i:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->c:Ljava/lang/String;

    return-void
.end method

.method public tt(Lorg/json/JSONArray;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ete/a;->i:Lorg/json/JSONArray;

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->da:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->u:Lorg/json/JSONArray;

    return-object v0
.end method

.method public uj(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->ve:Ljava/lang/String;

    return-void
.end method

.method public ve()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/a;->t:F

    return v0
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->tt:Ljava/lang/String;

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->uj:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/a;->x:Ljava/lang/String;

    return-void
.end method

.method public yp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/a;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
