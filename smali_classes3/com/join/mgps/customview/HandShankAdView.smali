.class public Lcom/join/mgps/customview/HandShankAdView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/LoadingLayout$b;


# instance fields
.field protected b:Lcom/join/mgps/customview/LoadingLayout;

.field private c:Landroid/widget/LinearLayout;

.field private final d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/join/mgps/customview/HandShankAdView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HandShankAdView$b;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView;->d:Landroid/view/View$OnClickListener;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/join/mgps/customview/HandShankAdView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HandShankAdView$b;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView;->d:Landroid/view/View$OnClickListener;

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/join/mgps/customview/HandShankAdView$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/HandShankAdView$b;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/HandShankAdView;->d:Landroid/view/View$OnClickListener;

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/HandShankAdView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HandShankAdView;->d:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/HandShankAdView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/HandShankAdView;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/HandShankAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/join/mgps/customview/HandShankAdView;Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/HandShankAdView;->e(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private e(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$e;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/HandShankAdView$e;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d00de

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0a0f65

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/mgps/customview/LoadingLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/customview/HandShankAdView;->b:Lcom/join/mgps/customview/LoadingLayout;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/LoadingLayout;->setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0ef1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/customview/HandShankAdView;->c:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public callBack()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/HandShankAdView;->k()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/app/Activity;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/join/mgps/activity/HandShankYesActivity;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/join/mgps/activity/HandShankYesActivity;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/activity/HandShankYesActivity;->loadAdData()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v1, v0, Lcom/join/mgps/activity/HandShankNoActivity;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lcom/join/mgps/activity/HandShankNoActivity;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/activity/HandShankNoActivity;->loadAdData()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method protected f()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$f;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/HandShankAdView$f;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected j()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$d;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/HandShankAdView$d;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected k()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$c;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/HandShankAdView$c;-><init>(Lcom/join/mgps/customview/HandShankAdView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public l()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/HandShankAdView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public m(Lcom/join/mgps/dto/HandShankAdBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/customview/HandShankAdView$a;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/customview/HandShankAdView$a;-><init>(Lcom/join/mgps/customview/HandShankAdView;Lcom/join/mgps/dto/HandShankAdBean;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
