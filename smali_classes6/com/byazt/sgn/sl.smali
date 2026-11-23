.class public Lcom/byazt/sgn/sl;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x9e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sgn/sl$c;
    }
.end annotation


# static fields
.field public static volatile c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Lcom/byazt/sgn/sl$c;

.field public da:Landroid/widget/ImageView;

.field public i:Landroid/widget/RelativeLayout;

.field public n:Ljava/lang/String;

.field public sl:Landroid/widget/ImageView;

.field public sp:Ljava/lang/String;

.field public tt:Lcom/byazt/el/SSWebView;

.field public uj:Landroid/widget/TextView;

.field public ve:Landroid/content/Context;

.field public x:Landroid/widget/RelativeLayout;


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
    sput-object v0, Lcom/byazt/sgn/sl;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/sgn/sl;->sp:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/sgn/sl;->ve:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sgn/sl;)Lcom/byazt/sgn/sl$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sgn/sl;->a:Lcom/byazt/sgn/sl$c;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/sgn/sl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sgn/sl;->ve:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/sgn/sl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/sgn/sl$c;)Lcom/byazt/sgn/sl;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/sgn/sl;->a:Lcom/byazt/sgn/sl$c;

    return-object p0
.end method

.method public c()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->fk()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://www.pangle.cn/privacy/partner"

    .line 4
    iput-object v0, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/byazt/sgn/sl;->sp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ad_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/sgn/sl;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?ad_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/sgn/sl;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/sgn/sl;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/sl;->a:Lcom/byazt/sgn/sl$c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/byazt/sgn/sl$c;->c(Landroid/app/Dialog;)V

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
    iget-object p1, p0, Lcom/byazt/sgn/sl;->ve:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/vfu/a;->sv(Landroid/content/Context;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/byazt/sgn/sl;->tt()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/byazt/sgn/sl;->c()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public tt()V
    .locals 5

    const v0, 0x7e06ff33

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/el/SSWebView;

    iput-object v0, p0, Lcom/byazt/sgn/sl;->tt:Lcom/byazt/el/SSWebView;

    const v0, 0x7e06fec4

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/sgn/sl;->uj:Landroid/widget/TextView;

    .line 4
    new-instance v1, Lcom/byazt/sgn/sl$1;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/sl$1;-><init>(Lcom/byazt/sgn/sl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    iget-object v1, p0, Lcom/byazt/sgn/sl;->tt:Lcom/byazt/el/SSWebView;

    new-instance v2, Lcom/byazt/sgn/sl$2;

    iget-object v3, p0, Lcom/byazt/sgn/sl;->ve:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v4}, Lcom/byazt/sgn/sl$2;-><init>(Lcom/byazt/sgn/sl;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/sgn/sl;->tt:Lcom/byazt/el/SSWebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/byazt/qg/BizWebView;->setJavaScriptEnabled(Z)V

    .line 8
    iget-object v1, p0, Lcom/byazt/sgn/sl;->tt:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1, v0}, Lcom/byazt/qg/BizWebView;->setDisplayZoomControls(Z)V

    .line 9
    iget-object v1, p0, Lcom/byazt/sgn/sl;->tt:Lcom/byazt/el/SSWebView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/byazt/qg/BizWebView;->setCacheMode(I)V

    .line 10
    iget-object v1, p0, Lcom/byazt/sgn/sl;->tt:Lcom/byazt/el/SSWebView;

    iget-object v2, p0, Lcom/byazt/sgn/sl;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    const v1, 0x7e06ffab

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/byazt/sgn/sl;->x:Landroid/widget/RelativeLayout;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7e06ffb6

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/sgn/sl;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/byazt/sgn/sl;->uj:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7e06ff65

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/sgn/sl;->da:Landroid/widget/ImageView;

    const v0, 0x7e06ff7c

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/sgn/sl;->sl:Landroid/widget/ImageView;

    .line 18
    iget-object v0, p0, Lcom/byazt/sgn/sl;->da:Landroid/widget/ImageView;

    new-instance v1, Lcom/byazt/sgn/sl$3;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/sl$3;-><init>(Lcom/byazt/sgn/sl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/byazt/sgn/sl;->sl:Landroid/widget/ImageView;

    new-instance v1, Lcom/byazt/sgn/sl$4;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/sl$4;-><init>(Lcom/byazt/sgn/sl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
