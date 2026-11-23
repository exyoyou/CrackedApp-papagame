.class public Lcom/byazt/sgn/uj;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sgn/uj$c;
    }
.end annotation


# static fields
.field public static volatile a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public c:Lcom/byazt/el/SSWebView;

.field public n:Lcom/byazt/sgn/uj$c;

.field public sp:Ljava/lang/String;

.field public tt:Landroid/content/Context;

.field public uj:Ljava/lang/String;

.field public ve:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/sgn/uj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/sgn/uj;->tt:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/sgn/uj;->sp:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/byazt/sgn/uj;->uj:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sgn/uj$c;)Lcom/byazt/sgn/uj;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byazt/sgn/uj;->n:Lcom/byazt/sgn/uj$c;

    return-object p0
.end method

.method public c()V
    .locals 5

    const v0, 0x7e06ff7f

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    iput-object v0, p0, Lcom/byazt/sgn/uj;->c:Lcom/byazt/el/SSWebView;

    const v0, 0x7e06ffc8

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/sgn/uj;->ve:Landroid/widget/TextView;

    const v0, 0x7e06fef0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Lcom/byazt/sgn/uj;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/sgn/uj;->ve:Landroid/widget/TextView;

    new-instance v1, Lcom/byazt/sgn/uj$1;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/uj$1;-><init>(Lcom/byazt/sgn/uj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object v1, p0, Lcom/byazt/sgn/uj;->c:Lcom/byazt/el/SSWebView;

    new-instance v2, Lcom/byazt/sgn/uj$2;

    iget-object v3, p0, Lcom/byazt/sgn/uj;->tt:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v4}, Lcom/byazt/sgn/uj$2;-><init>(Lcom/byazt/sgn/uj;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    iget-object v1, p0, Lcom/byazt/sgn/uj;->c:Lcom/byazt/el/SSWebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/byazt/qg/BizWebView;->setJavaScriptEnabled(Z)V

    .line 9
    iget-object v1, p0, Lcom/byazt/sgn/uj;->c:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1, v0}, Lcom/byazt/qg/BizWebView;->setDisplayZoomControls(Z)V

    .line 10
    iget-object v0, p0, Lcom/byazt/sgn/uj;->c:Lcom/byazt/el/SSWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setCacheMode(I)V

    .line 11
    iget-object v0, p0, Lcom/byazt/sgn/uj;->c:Lcom/byazt/el/SSWebView;

    iget-object v1, p0, Lcom/byazt/sgn/uj;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/sgn/uj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/uj;->n:Lcom/byazt/sgn/uj$c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/byazt/sgn/uj$c;->c(Landroid/app/Dialog;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/byazt/vfu/sp;->tt(Landroid/app/AlertDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/byazt/vfu/a;->to(Landroid/content/Context;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/byazt/sgn/uj;->c()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
