.class public Lcom/byazt/apd/EcMallWebView;
.super Lcom/byazt/el/SSWebView;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x62c,
        0x961
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/ete/ic;

.field public n:Lcom/byazt/omf/d;

.field public sp:Lcom/byazt/at/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/el/SSWebView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    new-instance p2, Lcom/byazt/apd/EcMallWebView$1;

    .line 7
    .line 8
    invoke-direct {p2, p0, p1, p3}, Lcom/byazt/apd/EcMallWebView$1;-><init>(Lcom/byazt/apd/EcMallWebView;Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/apd/EcMallWebView;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private c(Landroid/content/Context;I)V
    .locals 5

    .line 3
    new-instance v0, Lcom/byazt/omf/d;

    invoke-direct {v0, p1}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/apd/EcMallWebView;->n:Lcom/byazt/omf/d;

    .line 4
    invoke-static {p2}, Lcom/byazt/aas/nb;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/apd/EcMallWebView$2;

    invoke-direct {v1, p0, v0}, Lcom/byazt/apd/EcMallWebView$2;-><init>(Lcom/byazt/apd/EcMallWebView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/byazt/apd/EcMallWebView;->sp:Lcom/byazt/at/n;

    .line 6
    iget-object v1, p0, Lcom/byazt/apd/EcMallWebView;->n:Lcom/byazt/omf/d;

    invoke-virtual {v1, p0}, Lcom/byazt/omf/d;->tt(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->c(Lcom/byazt/ete/ic;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    .line 7
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->uj(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    move-result-object p2

    iget-object v1, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    .line 8
    invoke-static {v1}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/byazt/omf/d;->n(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object p2

    .line 9
    invoke-virtual {p2, v0}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/apd/EcMallWebView;->sp:Lcom/byazt/at/n;

    .line 10
    invoke-virtual {p2, v0}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/n;)Lcom/byazt/omf/d;

    move-result-object p2

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0}, Lcom/byazt/omf/d;->c(Z)Lcom/byazt/omf/d;

    .line 12
    new-instance p2, Lcom/byazt/jwd/uj;

    iget-object v1, p0, Lcom/byazt/apd/EcMallWebView;->n:Lcom/byazt/omf/d;

    iget-object v2, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/byazt/ddx/a;

    iget-object v4, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    invoke-direct {v3, v4, p0}, Lcom/byazt/ddx/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/nl/uj;)V

    .line 13
    invoke-virtual {v3, v0}, Lcom/byazt/ddx/a;->tt(Z)Lcom/byazt/ddx/a;

    move-result-object v0

    invoke-direct {p2, p1, v1, v2, v0}, Lcom/byazt/jwd/uj;-><init>(Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 15
    new-instance p1, Lcom/byazt/jwd/ve;

    iget-object p2, p0, Lcom/byazt/apd/EcMallWebView;->n:Lcom/byazt/omf/d;

    invoke-direct {p1, p2}, Lcom/byazt/jwd/ve;-><init>(Lcom/byazt/omf/d;)V

    invoke-virtual {p0, p1}, Lcom/byazt/qg/BizWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 16
    iget-object p1, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/my;->x(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 18
    iget-object p1, p0, Lcom/byazt/apd/EcMallWebView;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/apd/EcMallWebView;Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/apd/EcMallWebView;->c(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/qg/BizWebView;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/byazt/apd/EcMallWebView;->n:Lcom/byazt/omf/d;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->sl(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method
