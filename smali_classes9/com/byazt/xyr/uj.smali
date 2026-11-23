.class public Lcom/byazt/xyr/uj;
.super Lcom/byazt/ji/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/qy;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x219,
        0xf
    }
.end annotation


# instance fields
.field public sl:Lcom/byazt/nr/zm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ji/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nr/zm;

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/byazt/omf/x;->uj()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, p1, v2, v1}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lcom/byazt/xyr/uj;)Lcom/byazt/pm/sl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/xyr/uj;)Lcom/byazt/pm/sl;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/xyr/uj;)Lcom/byazt/pm/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    return-object p0
.end method

.method private sl()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "meta_hashcode"

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->qp()Lcom/byazt/sz/yp;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/sz/yp;->c()Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :cond_2
    return v1
.end method

.method public static synthetic tt(Lcom/byazt/xyr/uj;)Lcom/byazt/xj/ve;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/xyr/uj;)Lcom/byazt/pm/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/xyr/uj;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/sz/rl;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/byazt/xyr/uj;->sl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/nr/zm;->c(I)Z

    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/byazt/xyr/uj;->sl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/nr/zm;->tt(I)V

    :cond_1
    return-void
.end method

.method public varargs c([Ljava/lang/Object;)Z
    .locals 3

    .line 5
    iget-object p1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-virtual {p1, p0}, Lcom/byazt/xj/ve;->c(Lcom/byazt/sz/qy;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/byazt/nr/zm;

    iget-object v0, p0, Lcom/byazt/ji/tt;->da:Landroid/content/Context;

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->uj()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->qp()Lcom/byazt/sz/yp;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/byazt/sz/yp;->tt()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "shake_value"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->c(F)V

    :cond_1
    const-string v0, "calculation_method"

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->n(I)V

    :cond_2
    const-string v0, "shake_interact_conf"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->ve(Lorg/json/JSONObject;)V

    :cond_3
    const-string v0, "rotation_angle"

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 21
    iget-object v1, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->tt(F)V

    :cond_4
    const-string v0, "twist_config"

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 24
    iget-object v1, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->c(Lorg/json/JSONObject;)V

    :cond_5
    const-string v0, "twist_interact_conf"

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    .line 27
    iget-object v1, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/byazt/nr/zm;->tt(Lorg/json/JSONObject;)V

    :cond_6
    const-string v0, "calculation_method_twist"

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 30
    iget-object v0, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/nr/zm;->a(I)V

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public n()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/byazt/xyr/uj;->sl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 0

    .line 1
    return-void
.end method

.method public uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    new-instance v1, Lcom/byazt/xyr/uj$1;

    invoke-direct {v1, p0}, Lcom/byazt/xyr/uj$1;-><init>(Lcom/byazt/xyr/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$c;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/xyr/uj;->sl:Lcom/byazt/nr/zm;

    invoke-direct {p0}, Lcom/byazt/xyr/uj;->sl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(I)Z

    :cond_0
    return-void
.end method

.method public ve()V
    .locals 0

    .line 1
    return-void
.end method
