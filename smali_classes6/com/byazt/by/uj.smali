.class public Lcom/byazt/by/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x227,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/by/uj$tt;,
        Lcom/byazt/by/uj$c;
    }
.end annotation


# instance fields
.field public volatile a:Ljava/lang/String;

.field public volatile c:Ljava/lang/String;

.field public volatile da:Ljava/lang/String;

.field public volatile gr:I

.field public volatile gt:Ljava/lang/String;

.field public volatile gu:Ljava/lang/String;

.field public volatile i:Ljava/lang/String;

.field public volatile m:I

.field public volatile my:Ljava/lang/String;

.field public volatile n:Ljava/lang/String;

.field public volatile nu:I

.field public volatile qy:Lorg/json/JSONArray;

.field public volatile rh:Ljava/lang/String;

.field public volatile rl:Ljava/lang/String;

.field public volatile sl:Landroid/content/SharedPreferences;

.field public volatile sp:Ljava/lang/String;

.field public volatile t:I

.field public volatile tt:Ljava/lang/String;

.field public volatile u:I

.field public volatile uj:Ljava/lang/String;

.field public volatile ve:Ljava/lang/String;

.field public volatile x:Ljava/lang/String;

.field public volatile yp:Ljava/lang/String;

.field public volatile z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/by/uj;->t:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/by/uj;->u:I

    .line 8
    .line 9
    iput v0, p0, Lcom/byazt/by/uj;->m:I

    .line 10
    .line 11
    iput v0, p0, Lcom/byazt/by/uj;->nu:I

    .line 12
    .line 13
    iput v0, p0, Lcom/byazt/by/uj;->gr:I

    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v0, v1, v2}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/byazt/by/uj;->sl:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    return-void
.end method

.method public static c()Lcom/byazt/by/uj;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/by/uj$c;->c()Lcom/byazt/by/uj;

    move-result-object v0

    return-object v0
.end method

.method private gt()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/a;->c()Lcom/byazt/omf/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/a;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/by/uj;->gt:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "plugin_version"

    .line 17
    .line 18
    const/16 v2, 0x1dbb

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v1, "log_version"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/by/uj;->gt:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string v1, "logsdk_version"

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/by/uj;->ve:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev04"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/uj;->ve:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->rh:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "extra_data"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/by/uj;->rh:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/by/uj;->rh:Ljava/lang/String;

    return-object p1
.end method

.method public a(I)V
    .locals 1

    const-string v0, "sp_device_app_direction"

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/by/uj;->yp:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev03"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/by/uj;->yp:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/by/uj;->yp:Ljava/lang/String;

    return-object p1
.end method

.method public c(I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/by/uj;->t:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/byazt/by/uj;->t:I

    const-string v0, "live_ad_clk_cnt"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 1

    .line 26
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Ljava/lang/String;J)V
    .locals 1

    .line 21
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 16
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->qy:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/byazt/by/uj;->qy:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 11
    :cond_2
    iput-object p1, p0, Lcom/byazt/by/uj;->qy:Lorg/json/JSONArray;

    const-string v0, "dev12"

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)Z
    .locals 3

    .line 13
    iget v0, p0, Lcom/byazt/by/uj;->u:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v0, "is_use_mediation"

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/by/uj;->u:I

    .line 15
    :cond_1
    iget p1, p0, Lcom/byazt/by/uj;->u:I

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public da()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->sp:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev17"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/uj;->sp:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public da(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->rl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/byazt/by/uj;->rl:Ljava/lang/String;

    const-string v0, "dev10"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/by/uj;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev08"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/uj;->a:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev01"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/by/uj;->c:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/by/uj;->c:Ljava/lang/String;

    return-object p1
.end method

.method public m()I
    .locals 2

    .line 1
    const-string v0, "sp_device_app_direction"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public my()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_exec_getad_config"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/byazt/by/uj;->tt:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev02"

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/uj;->tt:Ljava/lang/String;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public n(I)Ljava/lang/String;
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/byazt/by/uj;->gt:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    const-string p1, "logsdk_version"

    const-string v0, ""

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "plugin_version"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "log_version"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/uj;->gt:Ljava/lang/String;

    const/16 v0, 0x1dbb

    if-ne p1, v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/byazt/by/uj;->gt:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/byazt/by/uj;->gt()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/byazt/by/uj;->gt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/byazt/by/uj;->gt:Ljava/lang/String;

    return-object p1
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->rh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/byazt/by/uj;->rh:Ljava/lang/String;

    const-string v0, "extra_data"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nu()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->gu:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "dev16"

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/by/uj;->gu:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->gu:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public rh()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :catchall_0
    return-void
.end method

.method public sl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev18"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/uj;->x:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->x:Ljava/lang/String;

    return-object v0
.end method

.method public sl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/by/uj;->gu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/byazt/by/uj;->gu:Ljava/lang/String;

    const-string v0, "dev16"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sp()Ljava/lang/String;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/by/uj;->uj:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev05"

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/uj;->uj:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->uj:Ljava/lang/String;

    return-object v0
.end method

.method public sp(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/by/uj;->my:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/byazt/by/uj;->my:Ljava/lang/String;

    const-string v0, "extra_internal_data"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sp(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->i:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "dev09"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/byazt/by/uj;->i:Ljava/lang/String;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->i:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public tt(Ljava/lang/String;I)I
    .locals 1

    .line 16
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public tt(Ljava/lang/String;J)J
    .locals 1

    .line 13
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    return-wide p2
.end method

.method public tt()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->sl:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 19
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object p2
.end method

.method public tt(I)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/byazt/by/uj;->m:I

    if-ne p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput p1, p0, Lcom/byazt/by/uj;->m:I

    const-string v0, "age_group"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/byazt/by/uj;->yp:Ljava/lang/String;

    const-string v0, "dev03"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tt(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 7
    :goto_0
    iget v0, p0, Lcom/byazt/by/uj;->u:I

    if-eq v0, p1, :cond_1

    .line 8
    iput p1, p0, Lcom/byazt/by/uj;->u:I

    const-string v0, "is_use_mediation"

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public tt(Ljava/lang/String;Z)Z
    .locals 1

    .line 10
    :try_start_0
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/byazt/by/uj;->my()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/byazt/ti/tt;->c(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/by/uj;->tt()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return p2
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->rl:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "dev10"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/byazt/by/uj;->rl:Ljava/lang/String;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->rl:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public uj()I
    .locals 2

    .line 4
    iget v0, p0, Lcom/byazt/by/uj;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "age_group"

    const/high16 v1, -0x80000000

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/uj;->m:I

    .line 6
    :cond_0
    iget v0, p0, Lcom/byazt/by/uj;->m:I

    return v0
.end method

.method public uj(I)I
    .locals 2

    .line 7
    iget v0, p0, Lcom/byazt/by/uj;->nu:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "sdk_theme_status"

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/by/uj;->nu:I

    .line 9
    :cond_0
    iget p1, p0, Lcom/byazt/by/uj;->nu:I

    return p1
.end method

.method public uj(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "keywords"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/by/uj;->z:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/by/uj;->z:Ljava/lang/String;

    return-object p1
.end method

.method public ve()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/by/uj;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "live_ad_clk_cnt"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/by/uj;->t:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/byazt/by/uj;->t:I

    return v0
.end method

.method public ve(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, ""

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 13
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "time"

    .line 14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long p1, v4, p2

    if-gtz p1, :cond_2

    const-string p1, "value"

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object v1
.end method

.method public ve(I)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/byazt/by/uj;->nu:I

    if-ne p1, v0, :cond_0

    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/byazt/by/uj;->nu:I

    const-string v0, "sdk_theme_status"

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/by/uj;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/byazt/by/uj;->z:Ljava/lang/String;

    const-string v0, "keywords"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "value"

    .line 19
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "time"

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "p_version"

    const/16 v1, 0x1dbb

    .line 21
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/by/uj;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "dev07"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/by/uj;->n:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->n:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->my:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "extra_internal_data"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/by/uj;->my:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/by/uj;->my:Ljava/lang/String;

    return-object p1
.end method

.method public x(I)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/byazt/by/uj;->gr:I

    if-ne v0, p1, :cond_0

    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/byazt/by/uj;->gr:I

    const-string v0, "dev_level"

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public yp()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->da:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "dev11"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/byazt/by/uj;->da:Ljava/lang/String;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/by/uj;->da:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public z()Lorg/json/JSONArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/by/uj;->qy:Lorg/json/JSONArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "dev12"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/byazt/by/uj;->qy:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/byazt/by/uj;->qy:Lorg/json/JSONArray;

    .line 27
    .line 28
    return-object v0
.end method
