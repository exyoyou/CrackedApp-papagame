.class public Lcom/byazt/lr/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/lr/tt$c;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/lr/tt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/lr/tt;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/lr/tt;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/lr/tt$c;->c()Lcom/byazt/lr/tt;

    move-result-object v0

    return-object v0
.end method

.method private c(JJLjava/lang/String;)Z
    .locals 9

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 34
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p5, "package"

    .line 35
    invoke-virtual {v2, p5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 36
    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 37
    :cond_0
    new-instance v2, Lcom/byazt/nn/tt;

    invoke-direct {v2}, Lcom/byazt/nn/tt;-><init>()V

    .line 38
    iput-wide p1, v2, Lcom/byazt/nn/tt;->c:J

    .line 39
    iput-wide p3, v2, Lcom/byazt/nn/tt;->tt:J

    const-string p1, "icon_url"

    .line 40
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/byazt/nn/tt;->uj:Ljava/lang/String;

    const-string p1, "app_name"

    .line 41
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/byazt/nn/tt;->n:Ljava/lang/String;

    const-string p1, "package_name"

    .line 42
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/byazt/nn/tt;->ve:Ljava/lang/String;

    const-string p1, "version_name"

    .line 43
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/byazt/nn/tt;->a:Ljava/lang/String;

    const-string p1, "developer_name"

    .line 44
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/byazt/nn/tt;->sp:Ljava/lang/String;

    const-string p1, "policy_url"

    .line 45
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/byazt/nn/tt;->i:Ljava/lang/String;

    const-string p1, "permissions"

    .line 46
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    if-ge p2, p5, :cond_1

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    .line 49
    iget-object v3, v2, Lcom/byazt/nn/tt;->x:Ljava/util/List;

    new-instance v4, Landroid/util/Pair;

    const-string v5, "permission_name"

    .line 50
    invoke-virtual {p5, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "permission_desc"

    .line 51
    invoke-virtual {p5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {v4, v5, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/byazt/lr/ve;->c()Lcom/byazt/lr/ve;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/lr/ve;->c(Lcom/byazt/nn/tt;)V

    .line 54
    invoke-static {}, Lcom/byazt/lr/uj;->c()Lcom/byazt/lr/uj;

    move-result-object v3

    invoke-virtual {v2}, Lcom/byazt/nn/tt;->c()J

    move-result-wide v4

    iget-object v8, v2, Lcom/byazt/nn/tt;->uj:Ljava/lang/String;

    move-wide v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/byazt/lr/uj;->c(JJLjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 55
    :cond_2
    :goto_1
    invoke-static {v0, p3, p4}, Lcom/byazt/lr/sp;->c(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 56
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p2

    const-string p5, "AdLpComplianceManager parseResponse"

    invoke-virtual {p2, p1, p5}, Lcom/byazt/dm/ve;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 57
    invoke-static {v0, p3, p4}, Lcom/byazt/lr/sp;->c(IJ)V

    return v1
.end method

.method public static synthetic c(Lcom/byazt/lr/tt;JJLjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/byazt/lr/tt;->c(JJLjava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public c(J)V
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(J)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/lr/tt;->c:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public c(Lcom/byazt/nn/n;)Z
    .locals 16
    .param p1    # Lcom/byazt/nn/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p1

    .line 10
    iget-object v0, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 11
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v4}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "convert_id"

    .line 12
    invoke-static {v0, v4}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    move-wide v4, v2

    :goto_0
    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x3

    .line 14
    invoke-static {v0, v1}, Lcom/byazt/lr/sp;->c(ILcom/byazt/nn/n;)V

    :cond_0
    move-wide v11, v4

    goto :goto_1

    :cond_1
    const/16 v0, 0x9

    .line 15
    invoke-static {v0, v1}, Lcom/byazt/lr/sp;->c(ILcom/byazt/nn/n;)V

    .line 16
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object v0

    const-string v4, "requestAppInfo getLogExtra null"

    invoke-virtual {v0, v4}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    move-wide v11, v2

    .line 17
    :goto_1
    iget-wide v13, v1, Lcom/byazt/nn/n;->c:J

    .line 18
    invoke-static {}, Lcom/byazt/lr/ve;->c()Lcom/byazt/lr/ve;

    move-result-object v0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/byazt/lr/ve;->c(JJ)Lcom/byazt/nn/tt;

    move-result-object v0

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    .line 19
    invoke-static {}, Lcom/byazt/lr/uj;->c()Lcom/byazt/lr/uj;

    move-result-object v4

    invoke-virtual {v0}, Lcom/byazt/nn/tt;->c()J

    move-result-wide v5

    iget-object v9, v0, Lcom/byazt/nn/tt;->uj:Ljava/lang/String;

    move-wide v7, v13

    invoke-virtual/range {v4 .. v9}, Lcom/byazt/lr/uj;->c(JJLjava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/byazt/nn/tt;->c()J

    move-result-wide v2

    move-object/from16 v4, p0

    invoke-virtual {v4, v2, v3}, Lcom/byazt/lr/tt;->c(J)V

    const-string v0, "lp_app_dialog_try_show"

    .line 21
    invoke-static {v0, v1}, Lcom/byazt/lr/sp;->c(Ljava/lang/String;Lcom/byazt/nn/n;)V

    return v15

    :cond_2
    move-object/from16 v4, p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v5, v11, v2

    if-lez v5, :cond_3

    const-string v2, "convert_id="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    :cond_3
    iget-object v2, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v2}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "&"

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "package_name="

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v2}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_6

    const/4 v0, 0x6

    .line 29
    invoke-static {v0, v1}, Lcom/byazt/lr/sp;->c(ILcom/byazt/nn/n;)V

    const/4 v0, 0x0

    return v0

    .line 30
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://apps.oceanengine.com/customer/api/app/pkg_info?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/byazt/lr/tt$2;

    move-object v5, v1

    move-object/from16 v6, p0

    move-wide v7, v11

    move-wide v9, v13

    invoke-direct/range {v5 .. v10}, Lcom/byazt/lr/tt$2;-><init>(Lcom/byazt/lr/tt;JJ)V

    invoke-static {v1, v0}, Lcom/byazt/hu/ve;->c(Lcom/byazt/hu/ve$c;Ljava/lang/Object;)Lcom/byazt/hu/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/lr/tt$1;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/byazt/lr/tt$1;-><init>(Lcom/byazt/lr/tt;JJ)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/hu/ve;->c(Lcom/byazt/hu/ve$c;)Lcom/byazt/hu/ve;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/byazt/hu/ve;->c()V

    return v15
.end method

.method public c(Lcom/byazt/su/DownloadModel;)Z
    .locals 4

    .line 4
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ad_lp_show_app_dialog"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/e/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ad_allow_web_url_regex"

    const-string v3, ".+(www.chengzijianzhan.com|www.toutiaopage.com/tetris/page|ad.toutiao.com/tetris/page).+"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public tt(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lcom/byazt/di/x;->c(Ljava/lang/String;)Lcom/byazt/gq/n;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {v0, p1, p1}, Lcom/byazt/gq/n;->c(ZZ)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/16 v0, 0xb

    .line 31
    .line 32
    invoke-static {v0, p1, p2}, Lcom/byazt/lr/sp;->c(IJ)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "startDownload handler null"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->tt(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
