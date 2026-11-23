.class public Lcom/byazt/yzg/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x308,
        0x36
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Lcom/byazt/ete/ic;

.field public i:I

.field public n:Lcom/byazt/av/c;

.field public sp:I

.field public tt:Landroid/content/Context;

.field public uj:Z

.field public ve:Lcom/byazt/yzg/c;

.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/yzg/ve;->uj:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/byazt/yzg/ve;->a:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/byazt/yzg/ve;->sp:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/byazt/yzg/ve;->x:Z

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/byazt/yzg/ve;->i:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/yzg/ve;->tt:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/byazt/yzg/ve;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/gt;->z(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ugen_url"

    .line 48
    iget-object v2, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/ete/gt;->nu(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ugen_md5"

    .line 49
    iget-object v2, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/ete/gt;->rh(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "download_num"

    .line 50
    iget-object v2, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->ru()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/byazt/yzg/ve;->tt(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object v1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "app_size"

    .line 53
    invoke-virtual {v1}, Lcom/byazt/ete/n;->sp()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/byazt/yzg/ve;->ve(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "comment_num"

    .line 54
    invoke-virtual {v1}, Lcom/byazt/ete/n;->a()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/byazt/yzg/ve;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hand_icon_url"

    const-string v2, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/ugeno-source/download_hand_tap.json"

    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-object p1
.end method

.method private c()Lorg/json/JSONObject;
    .locals 3

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/byazt/yzg/ve;->ve:Lcom/byazt/yzg/c;

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/byazt/yzg/c;->tt()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    const-string v2, "download_type"

    .line 85
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 86
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/byazt/yzg/ve;->c()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x6

    if-ne v1, p3, :cond_0

    :try_start_0
    const-string v1, "easy_dl_render_fail_code"

    .line 75
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->po()Lcom/byazt/ete/zm;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/byazt/ete/zm;->ve()Ljava/lang/String;

    move-result-object p1

    const-string p4, "easy_dl_render_fail_msg"

    .line 78
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "easy_dl_render_fail_dsl"

    .line 79
    invoke-direct {p0, p1}, Lcom/byazt/yzg/ve;->uj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "show_easy_dl_dialog_code"

    .line 80
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    iget-object p1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    const-string p3, "pop_up"

    invoke-static {p1, p2, p3, v0}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Lcom/byazt/ete/uj;Ljava/lang/String;Lcom/byazt/av/tt;)V
    .locals 11

    .line 19
    invoke-direct {p0, p2, p3}, Lcom/byazt/yzg/ve;->tt(Ljava/lang/String;Lcom/byazt/av/tt;)Lcom/byazt/aas/n$c;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 20
    :try_start_0
    iget-object p3, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p3}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 21
    invoke-virtual {p3}, Lcom/byazt/ete/a;->uj()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/uj;->c(Lorg/json/JSONArray;)V

    .line 22
    invoke-virtual {p3}, Lcom/byazt/ete/a;->ve()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/byazt/ete/uj;->c(F)V

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/uj;->x()Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-virtual {p1}, Lcom/byazt/ete/uj;->c()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/byazt/ete/uj;->uj()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->fv()Ljava/lang/String;

    move-result-object p3

    .line 27
    iget-object p1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/wz/x;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object p1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 30
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/xs/da;->i(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    iget-object v1, p0, Lcom/byazt/yzg/ve;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {v1, v2, v0}, Lcom/byazt/xs/da;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 32
    iget-object v6, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/yzg/ve;->tt:Landroid/content/Context;

    invoke-static {v1, v6, v0}, Lcom/byazt/xs/da;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const-string v10, ""

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    const-string v2, "pop_up"

    invoke-direct {p0}, Lcom/byazt/yzg/ve;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v1, p2, v2, v3}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 34
    :cond_4
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "dialog_title"

    .line 35
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dialog_icon_url"

    .line 36
    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dialog_app_description"

    .line 37
    iget-object v2, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-direct {p0, p3}, Lcom/byazt/yzg/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-direct {p0, p2}, Lcom/byazt/yzg/ve;->tt(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/byazt/yzg/ve;->n:Lcom/byazt/av/c;

    if-eqz v1, :cond_5

    .line 41
    invoke-interface {v1}, Lcom/byazt/av/c;->c()V

    .line 42
    :cond_5
    iget-object v1, p0, Lcom/byazt/yzg/ve;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {v1, v2, v0}, Lcom/byazt/xs/da;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v1, p2

    move-object v2, v4

    move-object v3, p3

    move-object v4, p1

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/byazt/yzg/ve;->c(Ljava/lang/String;Lcom/byazt/aas/n$c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/byazt/yzg/ve;->tt:Landroid/content/Context;

    iget-object p1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;Lcom/byazt/ete/ic;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/yzg/ve;Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/yzg/ve;Lcom/byazt/ete/uj;Ljava/lang/String;Lcom/byazt/av/tt;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/uj;Ljava/lang/String;Lcom/byazt/av/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/yzg/ve;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/yzg/ve;->c(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/byazt/yzg/ve;->c()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "ugen_dl_render_fail_msg"

    .line 60
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ugen_dl_render_fail"

    .line 61
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    iget-object p2, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    const-string p3, "pop_up"

    invoke-static {p2, p1, p3, v0}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/aas/n$c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "is_easy_dl_dialog_pop_up_style"

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    iget-object v0, p0, Lcom/byazt/yzg/ve;->tt:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {v0, p3, v1, p4}, Lcom/byazt/xs/da;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    iget-object v2, p0, Lcom/byazt/yzg/ve;->tt:Landroid/content/Context;

    iget-object p3, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p3}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-direct {p0, p1}, Lcom/byazt/yzg/ve;->ve(Ljava/lang/String;)Lcom/byazt/ux/sp;

    move-result-object v7

    iget-object v8, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    move-object v6, p2

    .line 73
    invoke-static/range {v2 .. v8}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;Lcom/byazt/ux/sp;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method private tt(Ljava/lang/String;Lcom/byazt/av/tt;)Lcom/byazt/aas/n$c;
    .locals 1

    .line 11
    new-instance v0, Lcom/byazt/yzg/ve$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/byazt/yzg/ve$4;-><init>(Lcom/byazt/yzg/ve;Lcom/byazt/av/tt;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/yzg/ve;)Lcom/byazt/av/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yzg/ve;->n:Lcom/byazt/av/c;

    return-object p0
.end method

.method private tt(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/gt;->z(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/yzg/ve$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/yzg/ve$2;-><init>(Lcom/byazt/yzg/ve;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Lcom/byazt/ux/sp;)V

    return-void
.end method

.method private uj(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 10
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, ""

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ve(Ljava/lang/String;)Lcom/byazt/ux/sp;
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/yzg/ve$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/yzg/ve$3;-><init>(Lcom/byazt/yzg/ve;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic ve(Lcom/byazt/yzg/ve;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/yzg/ve;->c()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/32 v2, 0x5f5e100

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    .line 63
    div-long/2addr p1, v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%d\u4ebf+"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    .line 65
    div-long/2addr p1, v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%d\u4e07+"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 67
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "-"

    return-object p1
.end method

.method public c(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/byazt/yzg/ve;->sp:I

    return-void
.end method

.method public c(Lcom/byazt/av/c;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/yzg/ve;->n:Lcom/byazt/av/c;

    return-void
.end method

.method public c(Lcom/byazt/ete/uj;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/av/tt;)V
    .locals 7

    .line 15
    iget-object v0, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->st()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/byazt/yzg/ve;->ve:Lcom/byazt/yzg/c;

    instance-of v0, v0, Lcom/byazt/yzg/n;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Lcom/byazt/yzg/ve$1;

    const-string v3, "tt_download_check"

    move-object v1, p1

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/byazt/yzg/ve$1;-><init>(Lcom/byazt/yzg/ve;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/av/tt;)V

    invoke-static {p1}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void

    .line 18
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/uj;Ljava/lang/String;Lcom/byazt/av/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/yzg/c;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0, p1, v0}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/c;Lcom/byazt/eia/sp;)V

    return-void
.end method

.method public c(Lcom/byazt/yzg/c;Lcom/byazt/eia/sp;)V
    .locals 1

    .line 6
    iput-object p1, p0, Lcom/byazt/yzg/ve;->ve:Lcom/byazt/yzg/c;

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/yzg/ve;->tt:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/c;->c(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/byazt/yzg/c;->c(Lcom/byazt/eia/sp;)V

    .line 9
    iget-boolean p2, p0, Lcom/byazt/yzg/ve;->uj:Z

    invoke-virtual {p1, p2}, Lcom/byazt/yzg/c;->c(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/av/tt;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/yzg/ve;->c:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, p1, p2}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/ete/uj;Ljava/lang/String;Lcom/byazt/av/tt;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/byazt/yzg/ve;->uj:Z

    return-void
.end method

.method public tt(J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0x5f5e100

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    long-to-double p1, p1

    const-wide v0, 0x4197d78400000000L    # 1.0E8

    div-double/2addr p1, v0

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%d\u4ebf+"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x2710

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    long-to-double p1, p1

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr p1, v0

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%d\u4e07+"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 10
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "-"

    return-object p1
.end method

.method public tt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/yzg/ve;->i:I

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/yzg/ve;->a:Z

    return-void
.end method

.method public uj(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/yzg/ve;->ve:Lcom/byazt/yzg/c;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 2
    iget-boolean p1, p0, Lcom/byazt/yzg/ve;->x:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/byazt/yzg/c;->tt(Z)V

    .line 3
    iget-object p1, p0, Lcom/byazt/yzg/ve;->ve:Lcom/byazt/yzg/c;

    instance-of v0, p1, Lcom/byazt/yzg/tt;

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Lcom/byazt/yzg/tt;

    .line 5
    iget-boolean v0, p0, Lcom/byazt/yzg/ve;->a:Z

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/tt;->ve(Z)V

    .line 6
    iget v0, p0, Lcom/byazt/yzg/ve;->sp:I

    invoke-virtual {p1, v0}, Lcom/byazt/yzg/tt;->c(I)V

    .line 7
    :cond_3
    iget p1, p0, Lcom/byazt/yzg/ve;->i:I

    if-ne p1, v1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/byazt/yzg/ve;->ve:Lcom/byazt/yzg/c;

    const/4 v0, 0x4

    iput v0, p1, Lcom/byazt/yzg/c;->uj:I

    return v1

    :cond_4
    if-nez p1, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/byazt/yzg/ve;->ve:Lcom/byazt/yzg/c;

    invoke-virtual {p1}, Lcom/byazt/yzg/c;->c()Z

    move-result p1

    return p1
.end method

.method public ve(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-string p1, "-"

    return-object p1

    :cond_0
    long-to-double p1, p1

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    div-double/2addr p1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%.1fMB"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ve(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/yzg/ve;->x:Z

    return-void
.end method
