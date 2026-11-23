.class public Lcom/join/mgps/activity/e6;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d019c
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/ObservableWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Landroid/widget/LinearLayout$LayoutParams;

.field private h:Lcom/join/mgps/dto/DetailResultBean;

.field i:F

.field j:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/join/mgps/activity/e6;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/e6;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private M(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tipBeans",
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 19
    .line 20
    new-instance v1, Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/e6;->f:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/e6;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x11

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/e6;->f:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const v3, 0x7f070e72

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    int-to-float v2, v2

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    .line 68
    .line 69
    const/high16 v2, 0x41200000    # 10.0f

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/e6;->f:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getColor()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Lcom/join/mgps/Util/z2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/e6;->f:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v1, -0x2

    .line 10
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/e6;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f070111

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "simpleInfoData"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/join/mgps/dto/DetailResultBean;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/e6;->h:Lcom/join/mgps/dto/DetailResultBean;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/e6;->d:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/e6;->M(Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/e6;->e:Lcom/join/mgps/customview/ObservableWebView;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "utf-8"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/e6;->e:Lcom/join/mgps/customview/ObservableWebView;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/e6;->h:Lcom/join/mgps/dto/DetailResultBean;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getDescribe()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "text/html;charset=UTF-8"

    .line 81
    .line 82
    invoke-virtual {v0, v2, v3, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/e6;->e:Lcom/join/mgps/customview/ObservableWebView;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/e6;->e:Lcom/join/mgps/customview/ObservableWebView;

    .line 96
    .line 97
    new-instance v2, Landroid/webkit/WebChromeClient;

    .line 98
    .line 99
    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/e6;->e:Lcom/join/mgps/customview/ObservableWebView;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 112
    .line 113
    .line 114
    return-void
.end method
