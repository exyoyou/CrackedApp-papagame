.class public Lcom/join/mgps/fragment/i5;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02da
.end annotation


# instance fields
.field c:Lcom/join/mgps/customview/LJWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const v3, 0x7f0716b4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setBarHeight(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setUseWideViewPort(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setSupportZoom(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setBuiltInZoomControls(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setJavaScriptEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 52
    .line 53
    const/4 v1, -0x1

    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setCacheMode(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 58
    .line 59
    new-instance v1, Lcom/join/mgps/fragment/i5$a;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/i5$a;-><init>(Lcom/join/mgps/fragment/i5;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/fragment/i5;->c:Lcom/join/mgps/customview/LJWebView;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/fragment/i5;->d:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method
