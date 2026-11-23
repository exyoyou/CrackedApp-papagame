.class Lcom/sigmob/sdk/mraid2/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/mraid2/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/s;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/s;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid2/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 5
    instance-of v0, p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_1

    check-cast p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p0

    const-string p1, "app_package_name"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "store_package_name"

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/mraid2/s$2;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, "MraidActivity failed to load. Finishing the activity"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->e(Lcom/sigmob/sdk/mraid2/s;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    const-string v1, "action.interstitial.fail"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/s;->b(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->f(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2
    const-string p1, "onLoaded() called"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lorg/json/JSONObject;)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "adUnit",
            "args"
        }
    .end annotation

    .line 3
    move-object/from16 v10, p0

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    const/4 v1, -0x1

    if-nez v4, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v5

    :goto_1
    sget-object v6, Lcom/sigmob/sdk/mraid2/s;->f:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "open: deeplinkUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", interactionType = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "event"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v2, "log_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    const-string v2, "default_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "in_app"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v2, "parse_302"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "interaction_type"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v17, ""

    const/4 v9, 0x1

    if-eq v6, v9, :cond_1c

    const/4 v7, 0x2

    if-eq v6, v7, :cond_17

    const/4 v2, 0x3

    const-string v7, "market_url is null"

    if-eq v6, v2, :cond_d

    const/4 v1, 0x7

    const-string v2, "1"

    const-string v5, "0"

    const-string v8, "open_deeplink"

    const-string v9, "open_deeplink_failed"

    if-eq v6, v1, :cond_9

    const/16 v0, 0x8

    if-eq v6, v0, :cond_3

    goto/16 :goto_12

    :cond_3
    invoke-static {v11}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v1, v10, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/s;->n(Lcom/sigmob/sdk/mraid2/s;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/sigmob/sdk/base/utils/g;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, v17

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    :cond_5
    move-object v6, v7

    :goto_3
    if-eqz v4, :cond_8

    :try_start_1
    invoke-static {v6}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v8, v9

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, v5

    :goto_5
    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    invoke-static {v4, v8, v11}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_7
    iget-object v1, v10, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, v16

    goto/16 :goto_11

    :cond_9
    const-string v1, "program"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const-string v1, "wx_app_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "wx_app_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "wx_app_username"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "wx_business_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    const-string v1, "wx_ext_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :try_start_2
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v23}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v6, v17

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_8
    if-eqz v4, :cond_8

    :try_start_3
    invoke-static {v6}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    move-object v8, v9

    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    if-eqz v0, :cond_c

    goto :goto_a

    :cond_c
    move-object v2, v5

    :goto_a
    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    invoke-static {v4, v8, v11}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_d
    const-string v2, "market"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const-string v6, "market_url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "app_package_name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "appstore_package_name"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "type"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_b

    :catchall_2
    nop

    :cond_f
    :goto_b
    invoke-static {v11}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v10, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->k(Lcom/sigmob/sdk/mraid2/s;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_10

    move-object v0, v11

    goto :goto_c

    :cond_10
    move-object v0, v3

    :goto_c
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz v4, :cond_11

    iget-object v0, v10, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->l(Lcom/sigmob/sdk/mraid2/s;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMarketPackageNameList()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    if-ne v5, v9, :cond_12

    new-instance v7, Lcom/sigmob/sdk/base/common/MiMarketManager$DirectMailStatusReceiver;

    invoke-direct {v7}, Lcom/sigmob/sdk/base/common/MiMarketManager$DirectMailStatusReceiver;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v7, v12, v4}, Lcom/sigmob/sdk/base/common/MiMarketManager$DirectMailStatusReceiver;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_12
    :try_start_5
    iget-object v7, v10, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v7}, Lcom/sigmob/sdk/mraid2/s;->m(Lcom/sigmob/sdk/mraid2/s;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v0}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    goto :goto_d

    :cond_13
    move-object/from16 v17, v7

    :goto_d
    if-eqz v4, :cond_1b

    :try_start_6
    invoke-static/range {v17 .. v17}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "open_market"

    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/t;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/o;->a(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/czhj/sdk/common/utils/FileUtil;->writeToCache(Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_14
    const-string v1, "apk_click"

    if-ne v5, v9, :cond_15

    const-string v2, "mimarket"

    :cond_15
    invoke-static {v1, v2, v4, v3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    goto :goto_e

    :cond_16
    const-string v0, "open_market_failed"

    :goto_e
    new-instance v1, Lcom/sigmob/sdk/mraid2/u0;

    invoke-direct {v1, v6, v4, v8, v11}, Lcom/sigmob/sdk/mraid2/u0;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3, v4, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    :cond_17
    if-nez v4, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v14, v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRecord(Z)V

    invoke-static {v14, v11, v2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    iget-object v12, v10, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    move-object/from16 v13, p1

    invoke-static/range {v12 .. v17}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_12

    :cond_19
    :goto_f
    const-string v0, "adUnits is null or empty."

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_12

    :cond_1a
    invoke-virtual {v4, v9}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRecord(Z)V

    invoke-static {v4, v11, v2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    :cond_1b
    :goto_10
    iget-object v1, v10, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    :goto_11
    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    if-eqz v2, :cond_1d

    new-instance v0, Lcom/sigmob/sdk/mraid2/s$2$1;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/sigmob/sdk/mraid2/s$2$1;-><init>(Lcom/sigmob/sdk/mraid2/s$2;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v11, v0}, Lcom/sigmob/sdk/base/common/ao;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/ao$a;)V

    goto :goto_12

    :cond_1d
    iget-object v1, v10, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move-object v5, v11

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v8}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :goto_12
    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing the activity due to a problem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->g(Lcom/sigmob/sdk/mraid2/s;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    const-string v0, "action.interstitial.fail"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/mraid2/s;->c(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->h(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useCustomClose"
        }
    .end annotation

    .line 6
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->o(Lcom/sigmob/sdk/mraid2/s;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->p(Lcom/sigmob/sdk/mraid2/s;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    const-string v1, "action.rewardedvideo.Close"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/s;->d(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/s;->b(Lcom/sigmob/sdk/mraid2/s;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->i(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->j(Lcom/sigmob/sdk/mraid2/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/s;->c(Lcom/sigmob/sdk/mraid2/s;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    const-string v1, "action.rewardedvideo.complete"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/s;->e(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$2;->a:Lcom/sigmob/sdk/mraid2/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/s;->d(Lcom/sigmob/sdk/mraid2/s;Z)Z

    return-void
.end method
