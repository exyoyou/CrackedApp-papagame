.class Lcom/sigmob/sdk/base/common/w$1;
.super Lcom/sigmob/sdk/base/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/w;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/sigmob/sdk/base/common/w;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/l;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/w$1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "errorCode",
            "description",
            "failingUrl"
        }
    .end annotation

    .line 1
    const-string v0, "h5_error"

    const-string v1, "landpage"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " error:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v6

    const/4 v7, 0x0

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "request",
            "error"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const-string v1, "h5_error"

    const-string v2, "landpage"

    const/4 v3, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lm0/b;->a(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "request",
            "errorResponse"
        }
    .end annotation

    const-string v0, "h5_error"

    const-string v1, "landpage"

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "hapjs.org"

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/czhj/volley/toolbox/StringUtil;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "track"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "active"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const-string v0, "data"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "event"

    invoke-virtual {v4, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    new-instance v5, Lcom/sigmob/sdk/base/common/q2;

    invoke-direct {v5, v4}, Lcom/sigmob/sdk/base/common/q2;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v3, v0, v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_1
    return v2

    :cond_2
    invoke-static {v5}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load Url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v7, p2

    iget-object v9, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v9}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdLinkActions()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/sigmob/sdk/videoplayer/c;->a(Ljava/util/List;Landroid/net/Uri;)Lcom/sigmob/sdk/base/models/rtb/LinkAction;

    move-result-object v9

    if-nez v9, :cond_4

    iget-object v9, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v9}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSlotAdLinkActions()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/sigmob/sdk/videoplayer/c;->a(Ljava/util/List;Landroid/net/Uri;)Lcom/sigmob/sdk/base/models/rtb/LinkAction;

    move-result-object v9

    :cond_4
    iget-object v10, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v10}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->hasReachedMaxRedirectCount()Z

    move-result v10

    iget-object v11, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v11}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getQuickAppMaxRedirectCount()I

    move-result v11

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/sigmob/sdk/base/common/w;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "reach max redirect count(%d)."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v3, v4}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_5
    iget-object v10, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v10}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRedirectCount(Landroid/net/Uri;)I

    move-result v15

    const/4 v14, 0x2

    if-eqz v9, :cond_6

    iget-object v9, v9, Lcom/sigmob/sdk/base/models/rtb/LinkAction;->redirect_count:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, v15, :cond_6

    invoke-static {}, Lcom/sigmob/sdk/base/common/w;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "%s reach redirect count(%d)."

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v5, v4, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_6
    invoke-static {v6, v0}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "http"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "https"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/w;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "%s(302) not reach redirect count(%d)."

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v5, v4, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object v9, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v9}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->addRedirectCount(Landroid/net/Uri;)V

    iget-object v9, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v9}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->incrementRedirectCount()V

    invoke-static {v6, v0}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/sigmob/sdk/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    iget-object v0, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMarketPackageNameList()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/sigmob/sdk/base/utils/g;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    sget-object v9, Lcom/sigmob/sdk/base/a;->g:Lcom/sigmob/sdk/base/a;

    const-string v10, "click"

    iget-object v0, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/w;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v11

    const-string v12, "1"

    iget-object v0, v1, Lcom/sigmob/sdk/base/common/w$1;->c:Lcom/sigmob/sdk/base/common/w;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/w;->b(Lcom/sigmob/sdk/base/common/w;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p2

    const/4 v6, 0x2

    move-object v14, v0

    move v0, v15

    move-wide v15, v3

    invoke-static/range {v9 .. v17}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/w;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s(quick) not reach redirect count(%d)."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v3, v4, v6}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1
    return v2
.end method
