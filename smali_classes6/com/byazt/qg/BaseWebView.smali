.class public Lcom/byazt/qg/BaseWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11b,
        0x168
    }
.end annotation


# instance fields
.field public a:Landroid/view/View$OnScrollChangeListener;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/qg/c;",
            ">;"
        }
    .end annotation
.end field

.field public da:Ljava/lang/Boolean;

.field public gr:Ljava/lang/Boolean;

.field public gt:Ljava/lang/Boolean;

.field public gu:Ljava/lang/Boolean;

.field public h:Lcom/byazt/nl/ve$c;

.field public i:Ljava/lang/Boolean;

.field public m:Ljava/lang/String;

.field public md:Ljava/lang/Boolean;

.field public my:Ljava/lang/Boolean;

.field public n:Ljava/lang/Integer;

.field public nu:Ljava/lang/Boolean;

.field public p:Ljava/lang/Boolean;

.field public qy:Ljava/lang/Boolean;

.field public rh:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public rl:Ljava/lang/Boolean;

.field public sl:Ljava/lang/Boolean;

.field public sp:Ljava/lang/Boolean;

.field public t:Ljava/lang/Boolean;

.field public tt:Lcom/byazt/el/tt;

.field public u:Ljava/lang/Boolean;

.field public uj:Landroid/webkit/DownloadListener;

.field public ve:Landroid/webkit/WebChromeClient;

.field public x:Ljava/lang/Boolean;

.field public yp:Ljava/lang/Integer;

.field public yv:Ljava/lang/Boolean;

.field public z:Ljava/lang/Integer;

.field public zm:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/byazt/qg/BaseWebView;->a:Landroid/view/View$OnScrollChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/byazt/qg/BaseWebView;->a:Landroid/view/View$OnScrollChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/byazt/qg/BaseWebView;->a:Landroid/view/View$OnScrollChangeListener;

    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "._handleMessageFromToutiao("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/qg/BaseWebView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__msg_type"

    const-string v2, "callback"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "__callback_id"

    .line 7
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "__params"

    .line 8
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/byazt/qg/BaseWebView;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/qg/BaseWebView;->tt()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getAllowFileAccess()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->t:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllowFileAccessFromFileURLs()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->da:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppCacheEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->gr:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->n:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBlockNetworkImage()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->sl:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBuiltInZoomControls()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->my:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->zm:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->ve:Landroid/webkit/WebChromeClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClient()Lcom/byazt/el/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->tt:Lcom/byazt/el/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDatabaseEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->u:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultFontSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->z:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayZoomControls()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->yv:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDomStorageEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->gt:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadListener()Landroid/webkit/DownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->uj:Landroid/webkit/DownloadListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->rl:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJavaScriptEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->p:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJavascriptInterfaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/qg/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->rh:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadWithOverviewMod()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->nu:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->sp:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMixedContentMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->yp:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->md:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnScrollChangeListener()Landroid/view/View$OnScrollChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->a:Landroid/view/View$OnScrollChangeListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnTouchEventListener()Lcom/byazt/nl/ve$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->h:Lcom/byazt/nl/ve$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSavePassword()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->x:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSupportZoom()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->qy:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseWideViewPort()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qg/BaseWebView;->gu:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->c:Ljava/util/Map;

    .line 2
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->tt:Lcom/byazt/el/tt;

    .line 3
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->ve:Landroid/webkit/WebChromeClient;

    .line 4
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->uj:Landroid/webkit/DownloadListener;

    .line 5
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->a:Landroid/view/View$OnScrollChangeListener;

    .line 6
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->n:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->sp:Ljava/lang/Boolean;

    .line 8
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->x:Ljava/lang/Boolean;

    .line 9
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->i:Ljava/lang/Boolean;

    .line 10
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->da:Ljava/lang/Boolean;

    .line 11
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->sl:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->t:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->u:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->yp:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->z:Ljava/lang/Integer;

    .line 16
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->m:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->nu:Ljava/lang/Boolean;

    .line 18
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->rh:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 19
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->my:Ljava/lang/Boolean;

    .line 20
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->gt:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->rl:Ljava/lang/Boolean;

    .line 22
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->qy:Ljava/lang/Boolean;

    .line 23
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->gu:Ljava/lang/Boolean;

    .line 24
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->gr:Ljava/lang/Boolean;

    .line 25
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->zm:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->yv:Ljava/lang/Boolean;

    .line 27
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->p:Ljava/lang/Boolean;

    .line 28
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->md:Ljava/lang/Boolean;

    .line 29
    iput-object v0, p0, Lcom/byazt/qg/BaseWebView;->h:Lcom/byazt/nl/ve$c;

    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__msg_type"

    const-string v2, "event"

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "__event_id"

    .line 32
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "__params"

    .line 33
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/byazt/qg/BaseWebView;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
