.class public Lcom/byazt/sgn/i;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sgn/i$c;
    }
.end annotation


# static fields
.field public static volatile uj:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public c:Lcom/byazt/el/SSWebView;

.field public da:Lcom/byazt/dyf/tt;

.field public i:Landroid/widget/TextView;

.field public m:Landroid/widget/FrameLayout;

.field public n:Landroid/widget/LinearLayout;

.field public nu:I

.field public sl:Landroid/content/Intent;

.field public sp:Landroid/widget/ImageView;

.field public t:Ljava/lang/String;

.field public tt:Landroid/content/Context;

.field public u:Lcom/byazt/vo/tt;

.field public ve:Lcom/byazt/sgn/i$c;

.field public x:Landroid/widget/TextView;

.field public yp:Lcom/byazt/lbn/TTViewStub;

.field public z:Lcom/byazt/lbn/TTViewStub;


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
    sput-object v0, Lcom/byazt/sgn/i;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/sgn/i;->nu:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/sgn/i;->sl:Landroid/content/Intent;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sgn/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/sgn/i;->nu:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/sgn/i;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/sgn/i;->nu:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/byazt/sgn/i;->nu:I

    return v0
.end method

.method public static synthetic ve(Lcom/byazt/sgn/i;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/sgn/i;->nu:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/byazt/sgn/i;->nu:I

    return v0
.end method

.method private ve()V
    .locals 4

    const v0, 0x7e06feb2

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byazt/sgn/i;->m:Landroid/widget/FrameLayout;

    const v0, 0x7e06ff3a

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/lbn/TTViewStub;

    iput-object v0, p0, Lcom/byazt/sgn/i;->yp:Lcom/byazt/lbn/TTViewStub;

    const v0, 0x7e06ff50

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/lbn/TTViewStub;

    iput-object v0, p0, Lcom/byazt/sgn/i;->z:Lcom/byazt/lbn/TTViewStub;

    .line 5
    iget-object v0, p0, Lcom/byazt/sgn/i;->m:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/byazt/sgn/i;->c:Lcom/byazt/el/SSWebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->md()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/i;->z:Lcom/byazt/lbn/TTViewStub;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/lbn/TTViewStub;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/sgn/i;->yp:Lcom/byazt/lbn/TTViewStub;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/lbn/TTViewStub;->setVisibility(I)V

    :cond_2
    :goto_0
    const v0, 0x7e06fef9

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/sgn/i;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 12
    new-instance v1, Lcom/byazt/sgn/i$1;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/i$1;-><init>(Lcom/byazt/sgn/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7e06fef8

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/sgn/i;->sp:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 14
    new-instance v1, Lcom/byazt/sgn/i$2;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/i$2;-><init>(Lcom/byazt/sgn/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7e06fff0

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/sgn/i;->x:Landroid/widget/TextView;

    const v0, 0x7e06feab

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/sgn/i;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 17
    new-instance v1, Lcom/byazt/sgn/i$3;

    invoke-direct {v1, p0}, Lcom/byazt/sgn/i$3;-><init>(Lcom/byazt/sgn/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sgn/i$c;)Lcom/byazt/sgn/i;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/sgn/i;->ve:Lcom/byazt/sgn/i$c;

    return-object p0
.end method

.method public c()V
    .locals 7

    .line 2
    iget-object v1, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/byazt/sgn/i;->u:Lcom/byazt/vo/tt;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/i;->da:Lcom/byazt/dyf/tt;

    if-nez v0, :cond_1

    .line 4
    new-instance v6, Lcom/byazt/dyf/tt;

    iget-object v3, p0, Lcom/byazt/sgn/i;->t:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {}, Lcom/byazt/xky/tt;->c()Lcom/byazt/dyf/c;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    iput-object v6, p0, Lcom/byazt/sgn/i;->da:Lcom/byazt/dyf/tt;

    .line 5
    iget-object v0, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c:Lcom/byazt/ete/ic;

    invoke-static {v0, v1, v6}, Lcom/byazt/tl/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dyf/tt;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/sgn/i;->da:Lcom/byazt/dyf/tt;

    invoke-virtual {v0}, Lcom/byazt/dyf/tt;->showDislikeDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/sgn/i;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/i;->ve:Lcom/byazt/sgn/i$c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/byazt/sgn/i$c;->c(Landroid/app/Dialog;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

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
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/high16 v1, 0x20000

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {p1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/byazt/sgn/i;->n:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/byazt/sgn/i;->n:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/byazt/sgn/i;->n:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/byazt/el/SSWebView;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lcom/byazt/el/SSWebView;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/byazt/sgn/i;->c:Lcom/byazt/el/SSWebView;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/byazt/sgn/i;->sl:Landroid/content/Intent;

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c:Lcom/byazt/ete/ic;

    .line 74
    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/byazt/sgn/i;->u:Lcom/byazt/vo/tt;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/byazt/sgn/i;->sl:Landroid/content/Intent;

    .line 84
    .line 85
    const-string v0, "event_tag"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/byazt/sgn/i;->t:Ljava/lang/String;

    .line 92
    .line 93
    :cond_0
    iget-object p1, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/byazt/vfu/a;->nb(Landroid/content/Context;)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/byazt/sgn/i;->tt()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    .line 19
    .line 20
    const/high16 v2, 0x42480000    # 50.0f

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-int/2addr v0, v1

    .line 27
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 28
    .line 29
    return-void
.end method

.method public tt()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/byazt/sgn/i;->ve()V

    .line 3
    iget-object v0, p0, Lcom/byazt/sgn/i;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/sgn/i;->x:Landroid/widget/TextView;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/jwd/tt;->c(Landroid/content/Context;)Lcom/byazt/jwd/tt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->c(Z)Lcom/byazt/jwd/tt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/byazt/jwd/tt;->tt(Z)Lcom/byazt/jwd/tt;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/sgn/i;->c:Lcom/byazt/el/SSWebView;

    invoke-virtual {v0, v2}, Lcom/byazt/jwd/tt;->c(Lcom/byazt/nl/uj;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/sgn/i;->c:Lcom/byazt/el/SSWebView;

    new-instance v2, Lcom/byazt/sgn/i$4;

    iget-object v3, p0, Lcom/byazt/sgn/i;->tt:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v4}, Lcom/byazt/sgn/i$4;-><init>(Lcom/byazt/sgn/i;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/sgn/i;->c:Lcom/byazt/el/SSWebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/byazt/qg/BizWebView;->setJavaScriptEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/byazt/sgn/i;->c:Lcom/byazt/el/SSWebView;

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setDisplayZoomControls(Z)V

    .line 9
    iget-object v0, p0, Lcom/byazt/sgn/i;->c:Lcom/byazt/el/SSWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setCacheMode(I)V

    .line 10
    iget-object v0, p0, Lcom/byazt/sgn/i;->c:Lcom/byazt/el/SSWebView;

    const-string v1, "https://phoniex.toutiao.com"

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
