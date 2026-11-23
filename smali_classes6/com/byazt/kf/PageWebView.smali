.class public Lcom/byazt/kf/PageWebView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nt/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x498,
        0x773
    }
.end annotation


# static fields
.field public static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/DownloadListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/byazt/sz/yp;

.field public n:Lcom/byazt/omf/d;

.field public tt:Lcom/byazt/el/SSWebView;

.field public uj:Lcom/byazt/ete/ic;

.field public ve:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/kf/PageWebView;->c:Landroid/util/SparseArray;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/kf/PageWebView;->ve:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/byazt/el/SSWebView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/byazt/el/SSWebView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/byazt/aas/cu;->c(Lcom/byazt/ete/ic;)Lcom/byazt/nzi/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/byazt/el/SSWebView;->setMaterialMeta(Lcom/byazt/nzi/c;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic c(Lcom/byazt/kf/PageWebView;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/kf/PageWebView;->ve(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    sget-object v0, Lcom/byazt/kf/PageWebView;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Landroid/webkit/DownloadListener;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/byazt/kf/PageWebView;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private ve(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->ve:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jwd/tt;->c(Landroid/content/Context;)Lcom/byazt/jwd/tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->c(Z)Lcom/byazt/jwd/tt;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->tt(Z)Lcom/byazt/jwd/tt;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/byazt/jwd/tt;->c(Lcom/byazt/nl/uj;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget v2, Lcom/byazt/omf/p;->uj:I

    .line 26
    .line 27
    iget-object v3, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/byazt/ete/ic;->n(Lcom/byazt/ete/ic;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v0, v2, v3}, Lcom/byazt/aas/gt;->c(Lcom/byazt/nl/uj;IZ)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setMixedContentMode(I)V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/byazt/kf/PageWebView;->c:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/webkit/DownloadListener;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/byazt/qg/BizWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/byazt/omf/d;

    iget-object v2, p0, Lcom/byazt/kf/PageWebView;->ve:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/kf/PageWebView;->n:Lcom/byazt/omf/d;

    .line 9
    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->a:Lcom/byazt/sz/yp;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/byazt/sz/yp;->tt()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "key_reward_page"

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/byazt/kf/PageWebView;->n:Lcom/byazt/omf/d;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/byazt/omf/d;->c(Ljava/util/Map;)Lcom/byazt/omf/d;

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->n:Lcom/byazt/omf/d;

    iget-object v2, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->tt(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 16
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->c(Lcom/byazt/ete/ic;)Lcom/byazt/omf/d;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/byazt/omf/d;->ve(Ljava/util/List;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 18
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 19
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->uj(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v0

    const/4 v1, 0x7

    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 21
    invoke-static {v1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 22
    invoke-static {v1}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->n(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->c(Z)Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 25
    invoke-static {v1}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->tt(I)Lcom/byazt/omf/d;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/nt/n;)Lcom/byazt/omf/d;

    .line 27
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    new-instance v7, Lcom/byazt/jwd/uj;

    iget-object v2, p0, Lcom/byazt/kf/PageWebView;->ve:Landroid/content/Context;

    iget-object v3, p0, Lcom/byazt/kf/PageWebView;->n:Lcom/byazt/omf/d;

    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/byazt/ddx/a;

    iget-object v1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    iget-object v6, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    invoke-direct {v5, v1, v6}, Lcom/byazt/ddx/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/nl/uj;)V

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/byazt/jwd/uj;-><init>(Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;Lcom/byazt/tjs/uj;)V

    invoke-virtual {v0, v7}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 28
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    new-instance v1, Lcom/byazt/jwd/ve;

    iget-object v2, p0, Lcom/byazt/kf/PageWebView;->n:Lcom/byazt/omf/d;

    invoke-direct {v1, v2}, Lcom/byazt/jwd/ve;-><init>(Lcom/byazt/omf/d;)V

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(ZLorg/json/JSONArray;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setMeta(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/kf/PageWebView;->uj:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kf/PageWebView;->tt:Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/byazt/aas/cu;->c(Lcom/byazt/ete/ic;)Lcom/byazt/nzi/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/el/SSWebView;->setMaterialMeta(Lcom/byazt/nzi/c;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setUGenContext(Lcom/byazt/sz/yp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kf/PageWebView;->a:Lcom/byazt/sz/yp;

    .line 2
    .line 3
    return-void
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/kf/PageWebView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/byazt/kf/PageWebView$1;-><init>(Lcom/byazt/kf/PageWebView;Lorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
