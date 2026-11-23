.class public abstract Lcom/sigmob/sdk/mraid2/x;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid2/x$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/mraid/n;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "WebAdContainer"


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/sigmob/sdk/base/views/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->c:Ljava/util/Map;

    invoke-static {}, Lcom/sigmob/sdk/base/views/am;->a()Lcom/sigmob/sdk/base/views/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/am;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/views/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/views/f;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    new-instance v0, Lcom/sigmob/sdk/mraid2/x$a;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/x$a;-><init>(Lcom/sigmob/sdk/mraid2/x;)V

    const-string v1, "sigandroidapk"

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/views/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid2/x;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/x;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vid"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/x;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/e;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/Ad;->vid:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/sigmob/sdk/base/utils/t;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/x;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/x;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.notifyApkDownloadStateEvent(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/mraid2/x;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnit"
        }
    .end annotation

    .line 3
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

    new-instance v1, Lcom/sigmob/sdk/mraid2/x$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid2/x$1;-><init>(Lcom/sigmob/sdk/mraid2/x;)V

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;-><init>(Lcom/sigmob/sdk/base/common/b;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/x;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "name"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/base/views/f;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "javascript",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseUrl",
            "data",
            "mimeType",
            "encoding",
            "historyUrl"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/f;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/e;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

    invoke-virtual {v1, v1}, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    sget-object v0, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/e;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid/n;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/n;->b()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sigmob/sdk/base/views/am;->a()Lcom/sigmob/sdk/base/views/am;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/am;->a(Lcom/sigmob/sdk/base/views/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "javascript",
            "callback"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/f;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    const-string v0, "download_start"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/x;->d(Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sigmob/sdk/mraid2/v0;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/mraid2/v0;-><init>(Lcom/sigmob/sdk/mraid2/x;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method e()V
    .locals 1

    const-string v0, "download_fail"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/x;->d(Ljava/lang/String;)V

    return-void
.end method

.method f()V
    .locals 1

    const-string v0, "download_pause"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/x;->d(Ljava/lang/String;)V

    return-void
.end method

.method g()V
    .locals 1

    const-string v0, "download_end"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/x;->d(Ljava/lang/String;)V

    return-void
.end method

.method abstract getAdUnitList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end method

.method getSettings()Landroid/webkit/WebSettings;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 1

    const-string v0, "install_start"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/x;->d(Ljava/lang/String;)V

    return-void
.end method

.method i()V
    .locals 1

    const-string v0, "install_end"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/x;->d(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webChromeClient"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webViewClient"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x;->d:Lcom/sigmob/sdk/base/views/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
