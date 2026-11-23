.class public Lcom/byazt/ouz/yv;
.super Lcom/byazt/ol/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ouz/yp;
.implements Lcom/byazt/ouz/z;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x1f3
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pop/ve;",
            ">;"
        }
    .end annotation
.end field

.field public da:Lcom/byazt/rbg/c;

.field public gt:Lcom/byazt/xl/i;

.field public i:Lcom/byazt/ete/ic;

.field public m:Z

.field public my:Lcom/byazt/ouz/sp;

.field public nu:Lcom/byazt/aas/c;

.field public qy:J

.field public rh:Lcom/byazt/zb/x;

.field public rl:Lcom/byazt/ouz/m;

.field public sl:Ljava/lang/String;

.field public sp:Landroid/content/Context;

.field public t:Lcom/byazt/ddx/a;

.field public u:Lcom/byazt/omf/d;

.field public x:Ljava/lang/String;

.field public yp:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;Lcom/byazt/rbg/c;Lcom/byazt/ete/ic;Lcom/byazt/xl/i;Lcom/byazt/ouz/m;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ol/c;-><init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/ouz/yv;->a:Ljava/util/Map;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    iput v0, p0, Lcom/byazt/ouz/yv;->yp:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/byazt/ouz/yv;->z:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/byazt/ouz/yv;->m:Z

    .line 23
    .line 24
    const-wide/16 v0, -0x1

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/byazt/ouz/yv;->qy:J

    .line 27
    .line 28
    iput-object p1, p0, Lcom/byazt/ouz/yv;->sp:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/byazt/xl/u;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p5, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/byazt/ouz/yv;->da:Lcom/byazt/rbg/c;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/byazt/xl/u;->n()Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/byazt/ol/c;->c:Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-static {p5}, Lcom/byazt/ouz/yv;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/byazt/ouz/yv;->sl:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p6, p0, Lcom/byazt/ouz/yv;->gt:Lcom/byazt/xl/i;

    .line 53
    .line 54
    iput-object p7, p0, Lcom/byazt/ouz/yv;->rl:Lcom/byazt/ouz/m;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/byazt/aas/qp;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/byazt/aas/qp;->ve(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/byazt/ol/c;->c(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p0}, Lcom/byazt/xv/ThemeStatusBroadcastReceiver;->c(Lcom/byazt/xv/c;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/byazt/ouz/yv;->t()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/byazt/ouz/yv;->u()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/byazt/ouz/yv;->yp()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ouz/yv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/yv;->my()V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/byazt/ete/pu;->x(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "v3"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/byazt/six/tt;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ouz/yv;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/yv;->a:Ljava/util/Map;

    return-object p0
.end method

.method private c(Lcom/byazt/el/SSWebView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ouz/yv;->sp:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/jwd/tt;->c(Landroid/content/Context;)Lcom/byazt/jwd/tt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->c(Z)Lcom/byazt/jwd/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/jwd/tt;->c(Lcom/byazt/nl/uj;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 17
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->xo()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->clearCache(Z)V

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/qg/BizWebView;->clearHistory()V

    .line 20
    sget v0, Lcom/byazt/omf/p;->uj:I

    iget-object v3, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    invoke-static {v3}, Lcom/byazt/ete/ic;->n(Lcom/byazt/ete/ic;)Z

    move-result v3

    invoke-static {p1, v0, v3}, Lcom/byazt/aas/gt;->c(Lcom/byazt/nl/uj;IZ)V

    .line 21
    invoke-virtual {p1, v1}, Lcom/byazt/qg/BizWebView;->setMixedContentMode(I)V

    .line 22
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->setJavaScriptEnabled(Z)V

    .line 23
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 24
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->setDomStorageEnabled(Z)V

    .line 25
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->setDatabaseEnabled(Z)V

    .line 26
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->setAppCacheEnabled(Z)V

    .line 27
    invoke-virtual {p1, v1}, Lcom/byazt/qg/BizWebView;->setAllowFileAccess(Z)V

    .line 28
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->setSupportZoom(Z)V

    .line 29
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->setBuiltInZoomControls(Z)V

    .line 30
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 31
    invoke-virtual {p1, v2}, Lcom/byazt/qg/BizWebView;->setUseWideViewPort(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "WebViewRender"

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/yv;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/ouz/yv;->ve(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/yv;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/ouz/yv;->uj(Z)V

    return-void
.end method

.method public static c(Ljava/util/Map;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/ete/ic;",
            "Lcom/byazt/ouz/NativeExpressView;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "dynamic_show_type"

    .line 6
    invoke-virtual {p2}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lcom/byazt/ouz/NativeExpressView;->getShowDLFactorsEventParams()B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "biz_type"

    .line 8
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ouz/NativeExpressView;->getRenderEngineCacheType()I

    move-result p2

    .line 10
    invoke-static {p1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/dz;->sl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "engine_version"

    .line 11
    invoke-static {p1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/dz;->sl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "engine_type"

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "rewarded_video"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "fullscreen_interstitial_ad"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/byazt/el/SSWebView;->getInnerIWebView()Lcom/byazt/nl/uj;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/byazt/nl/c;->c(Ljava/lang/String;Lcom/byazt/nl/uj;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method private my()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/ouz/yv;->yp:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-boolean v2, p0, Lcom/byazt/ouz/yv;->z:Z

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/byazt/ouz/yv;->m:Z

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/kp/c;->c(Lcom/byazt/omf/d;ZZZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic n(Lcom/byazt/ouz/yv;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ouz/yv;->yp:I

    return p0
.end method

.method private nu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "splash_ad"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_1
    return v1
.end method

.method private rh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 18
    .line 19
    new-instance v1, Lcom/byazt/ouz/p;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    invoke-direct {v1, v2, v0, v3}, Lcom/byazt/ouz/p;-><init>(Lcom/byazt/el/SSWebView;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView$tt;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/ouz/yv;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/ouz/yv;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/ouz/yv;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/ouz/yv;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/ouz/yv;->uj(I)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ouz/yv;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ouz/yv;->z:Z

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/ouz/yv;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    return-object p0
.end method

.method private uj(I)V
    .locals 8

    .line 20
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 21
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->gk()J

    move-result-wide v0

    .line 22
    iget-wide v2, p0, Lcom/byazt/ouz/yv;->qy:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/byazt/ouz/yv;->qy:J

    sub-long/2addr v2, v6

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/byazt/ouz/yv;->c()Lcom/byazt/el/SSWebView;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/byazt/qg/BizWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    :cond_0
    iput-wide v4, p0, Lcom/byazt/ouz/yv;->qy:J

    return-void

    .line 28
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ouz/yv;->qy:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private uj(Z)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adVisible"

    .line 17
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 18
    iget-object p1, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    const-string v1, "expressAdShow"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/ouz/yv;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ouz/yv;->yp:I

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/ouz/yv;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ouz/yv;->sp:Landroid/content/Context;

    return-object p0
.end method

.method private ve(I)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->tt(Z)Lcom/byazt/zb/x;

    .line 8
    iget-object p1, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    invoke-virtual {p1, v2}, Lcom/byazt/zb/x;->c(Z)Lcom/byazt/zb/x;

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Lcom/byazt/zb/x;->tt(Z)Lcom/byazt/zb/x;

    .line 10
    iget-object p1, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    invoke-virtual {p1, v1}, Lcom/byazt/zb/x;->c(Z)Lcom/byazt/zb/x;

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/ouz/yv;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ouz/yv;->m:Z

    return p1
.end method


# virtual methods
.method public J_()Lcom/byazt/omf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "expressWebviewRecycle"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b_(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v1, "status"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object p1, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 22
    .line 23
    const-string v1, "themeChange"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public c()Lcom/byazt/el/SSWebView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    return-object v0
.end method

.method public c(FF)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/byazt/ouz/yv;->sp:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 40
    invoke-static {v1, p1}, Lcom/byazt/aas/pf;->c(FF)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->tt(FF)I

    move-result p1

    int-to-float p1, p1

    .line 41
    invoke-static {v1, p2}, Lcom/byazt/aas/pf;->c(FF)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0, p2}, Lcom/byazt/aas/pf;->tt(FF)I

    move-result p2

    int-to-float p2, p2

    .line 42
    invoke-super {p0, p1, p2}, Lcom/byazt/ol/c;->c(FF)V

    return-void
.end method

.method public c(ZI)V
    .locals 1

    .line 34
    invoke-super {p0, p1, p2}, Lcom/byazt/ol/c;->c(ZI)V

    .line 35
    iget-object v0, p0, Lcom/byazt/ouz/yv;->da:Lcom/byazt/rbg/c;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1, p2}, Lcom/byazt/rbg/c;->c(ZI)V

    .line 37
    iget-object p1, p0, Lcom/byazt/ouz/yv;->da:Lcom/byazt/rbg/c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/byazt/rbg/c;->tt(Z)V

    :cond_0
    return-void
.end method

.method public da()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/ol/c;->da()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/yv;->nu:Lcom/byazt/aas/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/aas/c;->tt(Lcom/byazt/sr/c;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/ouz/yv;->nu:Lcom/byazt/aas/c;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/byazt/aas/c;->c(Lcom/byazt/sr/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public n()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ouz/yv;->c()Lcom/byazt/el/SSWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/ouz/yv;->c()Lcom/byazt/el/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ouz/yv;->m()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/byazt/omf/d;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/ouz/yv;->sp:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/ete/ic;)Lcom/byazt/omf/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->uj(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->n(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/xl/sl;)Lcom/byazt/omf/d;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/byazt/ol/c;->c:Lorg/json/JSONObject;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->uj(Lorg/json/JSONObject;)Lcom/byazt/omf/d;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/byazt/ouz/yv;->rl:Lcom/byazt/ouz/m;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/ouz/m;)Lcom/byazt/omf/d;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/byazt/ouz/yv;->da:Lcom/byazt/rbg/c;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/rbg/c;)Lcom/byazt/omf/d;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public tt(I)V
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/ouz/yv$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ouz/yv$3;-><init>(Lcom/byazt/ouz/yv;I)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 5
    new-instance v0, Lcom/byazt/ouz/yv$4;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ouz/yv$4;-><init>(Lcom/byazt/ouz/yv;Z)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/byazt/aas/cu;->c(Lcom/byazt/ete/ic;)Lcom/byazt/nzi/c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/el/SSWebView;->setMaterialMeta(Lcom/byazt/nzi/c;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/byazt/qg/BizWebView;->setBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 22
    .line 23
    const v2, 0x106000d

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    nop

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/byazt/ouz/yv;->c(Lcom/byazt/el/SSWebView;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/byazt/ouz/yv;->c()Lcom/byazt/el/SSWebView;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Lcom/byazt/ddx/a;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/byazt/ouz/yv;->c()Lcom/byazt/el/SSWebView;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v1, v2, v3}, Lcom/byazt/ddx/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/nl/uj;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/byazt/ddx/a;->tt(Z)Lcom/byazt/ddx/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/byazt/ouz/yv;->t:Lcom/byazt/ddx/a;

    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->t:Lcom/byazt/ddx/a;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/ouz/yv;->da:Lcom/byazt/rbg/c;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/a;->c(Lcom/byazt/rbg/c;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 67
    .line 68
    new-instance v1, Lcom/byazt/jwd/ve;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/byazt/ouz/yv;->t:Lcom/byazt/ddx/a;

    .line 73
    .line 74
    invoke-direct {v1, v2, v3}, Lcom/byazt/jwd/ve;-><init>(Lcom/byazt/omf/d;Lcom/byazt/ddx/a;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 81
    .line 82
    new-instance v1, Lcom/byazt/ouz/yv$1;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/byazt/ouz/yv$1;-><init>(Lcom/byazt/ouz/yv;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "rewarded_video"

    .line 91
    .line 92
    iget-object v1, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    const-string v0, "fullscreen_interstitial_ad"

    .line 101
    .line 102
    iget-object v1, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    :cond_2
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/byazt/aas/pf;->c(Lcom/byazt/nl/uj;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ol/n;->c(Lcom/byazt/el/SSWebView;Lcom/byazt/ol/tt;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ol/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/yv;->t:Lcom/byazt/ddx/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ddx/a;->a()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/byazt/el/SSWebView;->O_()V

    .line 7
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    invoke-virtual {v0, v1}, Lcom/byazt/el/SSWebView;->setOnShakeListener(Lcom/byazt/el/SSWebView$tt;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/byazt/omf/d;->n()V

    .line 10
    :cond_3
    invoke-super {p0}, Lcom/byazt/ol/c;->uj()V

    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/yv;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 12
    iput-object v1, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 13
    iget-object v0, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    if-nez v0, :cond_4

    return-void

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/byazt/zb/x;->or()V

    return-void
.end method

.method public ve()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    return v0
.end method

.method public ve(Z)V
    .locals 1

    .line 5
    new-instance v0, Lcom/byazt/ouz/yv$5;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ouz/yv$5;-><init>(Lcom/byazt/ouz/yv;Z)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    const-string v0, "expressShow"

    .line 2
    .line 3
    invoke-super {p0}, Lcom/byazt/ol/c;->x()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ouz/yv;->rh()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 24
    .line 25
    invoke-virtual {v2, v0, v1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public yp()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    new-instance v1, Lcom/byazt/vgp/ve;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/byazt/vgp/ve;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v5, Lcom/byazt/vgp/uj;

    .line 17
    .line 18
    invoke-direct {v5}, Lcom/byazt/vgp/uj;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/byazt/vgp/n;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 24
    .line 25
    invoke-direct {v4, v0}, Lcom/byazt/vgp/n;-><init>(Lcom/byazt/omf/d;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    const-string v2, "cid"

    .line 34
    .line 35
    iget-object v3, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v2, "log_extra"

    .line 45
    .line 46
    iget-object v3, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    nop

    .line 57
    :goto_0
    new-instance v6, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "subscribe_app_ad"

    .line 63
    .line 64
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    const-string v2, "adInfo"

    .line 68
    .line 69
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    const-string v2, "webview_time_track"

    .line 73
    .line 74
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    const-string v2, "download_app_ad"

    .line 78
    .line 79
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    const-string v2, "sendReward"

    .line 83
    .line 84
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    const-string v2, "embeded_ad"

    .line 88
    .line 89
    iget-object v3, p0, Lcom/byazt/ouz/yv;->x:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    sget-object v2, Lcom/byazt/zb/x$c;->tt:Lcom/byazt/zb/x$c;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    sget-object v2, Lcom/byazt/zb/x$c;->ve:Lcom/byazt/zb/x$c;

    .line 101
    .line 102
    :goto_1
    move-object v7, v2

    .line 103
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 108
    .line 109
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/vgp/ve;->c(Landroid/content/Context;Lcom/byazt/el/SSWebView;Lcom/byazt/zb/ve;Lcom/byazt/zb/c;Ljava/util/Set;Lcom/byazt/zb/x$c;)Lcom/byazt/zb/x;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/byazt/ouz/yv;->sl:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/byazt/zb/x;->n(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {}, Lcom/byazt/fh/c;->x()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Lcom/byazt/zb/x;->uj(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {}, Lcom/byazt/fh/c;->c()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Lcom/byazt/zb/x;->c(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1, v0}, Lcom/byazt/zb/x;->n(Lorg/json/JSONObject;)Lcom/byazt/zb/x;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v1, "sdkEdition"

    .line 140
    .line 141
    invoke-static {}, Lcom/byazt/fh/c;->ve()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zb/x;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {}, Lcom/byazt/fh/c;->a()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->tt(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {}, Lcom/byazt/fh/c;->n()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->ve(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->ve(Z)Lcom/byazt/zb/x;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    .line 171
    .line 172
    new-instance v0, Lcom/byazt/ouz/sp;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/byazt/ouz/yv;->sp:Landroid/content/Context;

    .line 175
    .line 176
    iget-object v3, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 177
    .line 178
    iget-object v4, p0, Lcom/byazt/ouz/yv;->i:Lcom/byazt/ete/ic;

    .line 179
    .line 180
    iget-object v5, p0, Lcom/byazt/ouz/yv;->t:Lcom/byazt/ddx/a;

    .line 181
    .line 182
    invoke-direct {p0}, Lcom/byazt/ouz/yv;->nu()Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    iget-object v7, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/byazt/ol/c;->sl()Lcom/byazt/xl/u;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    move-object v1, v0

    .line 193
    invoke-direct/range {v1 .. v8}, Lcom/byazt/ouz/sp;-><init>(Landroid/content/Context;Lcom/byazt/omf/d;Lcom/byazt/ete/ic;Lcom/byazt/ddx/a;ZLcom/byazt/zb/x;Lcom/byazt/xl/u;)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lcom/byazt/ouz/yv;->my:Lcom/byazt/ouz/sp;

    .line 197
    .line 198
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/byazt/ouz/yv;->gt:Lcom/byazt/xl/i;

    .line 204
    .line 205
    instance-of v1, v0, Lcom/byazt/ouz/da;

    .line 206
    .line 207
    if-eqz v1, :cond_2

    .line 208
    .line 209
    check-cast v0, Lcom/byazt/ouz/da;

    .line 210
    .line 211
    iget-object v1, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/da;->c(Lcom/byazt/zb/x;)V

    .line 214
    .line 215
    .line 216
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/byazt/zb/x;->da()Ljava/util/Set;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 223
    .line 224
    if-eqz v1, :cond_4

    .line 225
    .line 226
    if-eqz v0, :cond_4

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-gtz v1, :cond_3

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 236
    .line 237
    iget-object v2, p0, Lcom/byazt/ouz/yv;->rh:Lcom/byazt/zb/x;

    .line 238
    .line 239
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_4

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Ljava/lang/String;

    .line 257
    .line 258
    iget-object v3, p0, Lcom/byazt/ouz/yv;->u:Lcom/byazt/omf/d;

    .line 259
    .line 260
    invoke-virtual {v3}, Lcom/byazt/omf/d;->a()Lcom/byazt/pct/nu;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    new-instance v4, Lcom/byazt/ouz/yv$2;

    .line 265
    .line 266
    invoke-direct {v4, p0, v1}, Lcom/byazt/ouz/yv$2;-><init>(Lcom/byazt/ouz/yv;Ljava/lang/ref/WeakReference;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v2, v4}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_4
    :goto_3
    return-void
.end method

.method public z()Lcom/byazt/ouz/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv;->my:Lcom/byazt/ouz/sp;

    .line 2
    .line 3
    return-object v0
.end method
