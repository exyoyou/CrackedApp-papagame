.class public Lcom/windmill/sdk/common/s;
.super Lcom/windmill/sdk/common/l;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/base/WMAdConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/common/s$b;,
        Lcom/windmill/sdk/common/s$a;
    }
.end annotation


# static fields
.field private static M:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:I

.field private C:J

.field private D:Lcom/windmill/sdk/common/s$a;

.field private E:Z

.field private F:Landroid/view/ViewGroup;

.field private G:Z

.field private H:Landroid/os/Handler;

.field private I:Z

.field private J:J

.field private K:Lcom/windmill/sdk/strategy/s$b;

.field private L:Lcom/windmill/sdk/strategy/l$a;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/common/s$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "request",
            "splashListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/common/l;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/windmill/sdk/common/s;->v:Z

    .line 10
    .line 11
    const-wide/16 v0, 0xbb8

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/windmill/sdk/common/s;->C:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/windmill/sdk/common/s;->G:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/windmill/sdk/common/s;->I:Z

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/windmill/sdk/splash/WMSplashAdRequest;->isDisableAutoHideAd()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, Lcom/windmill/sdk/common/s;->E:Z

    .line 32
    .line 33
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAd;->getTobidHandlerLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/s;->a(Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 50
    .line 51
    new-instance p1, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 57
    .line 58
    new-instance p1, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    .line 64
    .line 65
    const-wide/16 p1, 0x0

    .line 66
    .line 67
    iput-wide p1, p0, Lcom/windmill/sdk/common/s;->J:J

    .line 68
    .line 69
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/windmill/sdk/common/s;->J:J

    return-wide p1
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/l$a;)Lcom/windmill/sdk/strategy/l$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/windmill/sdk/common/s;->L:Lcom/windmill/sdk/strategy/l$a;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/s$b;)Lcom/windmill/sdk/strategy/s$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/common/s;->K:Lcom/windmill/sdk/strategy/s$b;

    return-object p1
.end method

.method private a(Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/windmill/sdk/common/s$1;

    invoke-direct {v0, p0, p1}, Lcom/windmill/sdk/common/s$1;-><init>(Lcom/windmill/sdk/common/s;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "linearLayout",
            "title"
        }
    .end annotation

    .line 109
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 112
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    const-string v0, "#535353"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    const/4 v0, 0x2

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 116
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 117
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 118
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 120
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 121
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "relativeLayout",
            "desc",
            "margin"
        }
    .end annotation

    .line 123
    new-instance v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/s;->y:Landroid/widget/TextView;

    .line 124
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->y:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->y:Landroid/widget/TextView;

    const-string v0, "#aaaaaa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->y:Landroid/widget/TextView;

    const/4 v0, 0x2

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->y:Landroid/widget/TextView;

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 129
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->y:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 130
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->y:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 131
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->z:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 p3, 0xd

    .line 134
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    iget-object p3, p0, Lcom/windmill/sdk/common/s;->y:Landroid/widget/TextView;

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "relativeLayout",
            "width"
        }
    .end annotation

    .line 101
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/s;->A:Landroid/widget/ImageView;

    .line 102
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 103
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->A:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/windmill/sdk/common/s;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->A:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/windmill/sdk/common/s;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/windmill/sdk/common/s;->f()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    invoke-direct {v0, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xf

    .line 107
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    iget-object p2, p0, Lcom/windmill/sdk/common/s;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplashError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " :placementId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 180
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    .line 182
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/windmill/sdk/common/s$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/common/s$7;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p1

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 185
    :cond_2
    iput-boolean p2, p0, Lcom/windmill/sdk/common/l;->k:Z

    goto :goto_0

    .line 186
    :cond_3
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 187
    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/common/s;->a(ZLcom/windmill/sdk/strategy/a;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId",
            "strategy",
            "timerStage"
        }
    .end annotation

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->l()Lcom/windmill/sdk/models/Waterfall;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 176
    iget-object v4, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    iget-object v5, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    move-object v1, p0

    move-object v2, p3

    move-object v6, p1

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/Waterfall;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;ILcom/windmill/sdk/strategy/a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->b(ILcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->b(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    return-void
.end method

.method private a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "category",
            "strategy",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    const-string v0, "offer_id"

    .line 46
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v3, p4

    .line 47
    iget-object p4, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v6, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v7, Lcom/windmill/sdk/common/s$12;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/windmill/sdk/common/s$12;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    invoke-static {p2, p4, p3, v6, v7}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method

.method private a(Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/windmill/sdk/common/s;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->z()Lcom/windmill/sdk/base/WMAdapterError;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    const-string v2, "getPreloadAdapterError is null"

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/windmill/sdk/common/s;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------checkLoadStatus------------isLoading------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "strategy",
            "event_type",
            "error_code",
            "externalErrorCode",
            "error_msg"
        }
    .end annotation

    const-string v0, "error"

    .line 160
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v4, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v8, Lcom/windmill/sdk/common/s$2;

    invoke-direct {v8, p0}, Lcom/windmill/sdk/common/s$2;-><init>(Lcom/windmill/sdk/common/s;)V

    move-object v1, p2

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v8}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method

.method private a(ZLcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isLoadAdPrice",
            "adStrategy",
            "error"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->K:Lcom/windmill/sdk/strategy/s$b;

    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p1, p2, p3}, Lcom/windmill/sdk/strategy/s$b;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->L:Lcom/windmill/sdk/strategy/l$a;

    if-eqz p1, :cond_1

    const-string v0, "ready"

    .line 76
    invoke-interface {p1, p2, p3, v0}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/a;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/s;->h(Lcom/windmill/sdk/strategy/a;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/windmill/sdk/common/s;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    return-object p0
.end method

.method private b(ILcom/windmill/sdk/strategy/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "strategy"
        }
    .end annotation

    .line 22
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/common/s;->M:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/windmill/sdk/common/s;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const-string v1, "tobid_splash"

    invoke-virtual {p0, v1}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/windmill/sdk/common/s;->M:Ljava/lang/ref/WeakReference;

    .line 24
    :cond_1
    sget-object v0, Lcom/windmill/sdk/common/s;->M:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/windmill/sdk/common/l;->a(Ljava/util/concurrent/ExecutorService;ILcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplashShowError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " :placementId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    .line 28
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/windmill/sdk/common/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/common/x;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method private b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "adapter"
        }
    .end annotation

    .line 16
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------showInnerAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/sdk/common/s;->w:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    :goto_1
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcom/windmill/sdk/common/s;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2, v1, v0, p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->showInnerAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    if-eqz p1, :cond_2

    .line 21
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/windmill/sdk/common/s;)Lcom/windmill/sdk/common/s$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewGroup"
        }
    .end annotation

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/windmill/sdk/common/s;->G:Z

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    .line 43
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    iget-object v4, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 48
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/windmill/sdk/common/s;->w:Landroid/widget/RelativeLayout;

    .line 49
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 50
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    .line 51
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x2

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    check-cast v4, Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 55
    invoke-virtual {v4}, Lcom/windmill/sdk/splash/WMSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    iput v0, p0, Lcom/windmill/sdk/common/s;->B:I

    const/high16 v5, 0x42700000    # 60.0f

    goto :goto_0

    :cond_0
    const/high16 v5, 0x42a00000    # 80.0f

    .line 57
    :goto_0
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, v6, v5}, Lcom/windmill/sdk/common/s;->a(Landroid/widget/RelativeLayout;F)V

    .line 59
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    invoke-virtual {v4}, Lcom/windmill/sdk/splash/WMSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/windmill/sdk/common/s;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const/high16 v8, 0x41200000    # 10.0f

    .line 62
    invoke-static {v8, v1}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v8

    .line 63
    iget v9, p0, Lcom/windmill/sdk/common/s;->B:I

    if-eq v9, v0, :cond_1

    .line 64
    invoke-virtual {v4}, Lcom/windmill/sdk/splash/WMSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4, v8}, Lcom/windmill/sdk/common/s;->a(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 65
    :cond_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 67
    iget-object v8, p0, Lcom/windmill/sdk/common/s;->A:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v4, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v8, 0xf

    invoke-virtual {v4, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    invoke-virtual {v6, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v5, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    invoke-direct {v0, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 71
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    invoke-virtual {p1, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/windmill/sdk/common/s;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic c(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/common/s$a;->onSplashAdFailToPresent(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "adAdapter"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->ab()I

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->ab()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/windmill/sdk/common/s;->C:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 24
    :goto_0
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/windmill/sdk/utils/a;->a(Lcom/windmill/sdk/utils/a$a;)V

    .line 25
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/strategy/a;->l(Z)V

    if-eqz v0, :cond_2

    .line 27
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v1, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 28
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 29
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 31
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 32
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V

    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 34
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----Adapter--loadInnerAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/windmill/sdk/common/l;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 35
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    if-nez v0, :cond_4

    .line 36
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->d(Lcom/windmill/sdk/strategy/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Lcom/windmill/sdk/common/s$17;

    invoke-direct {v0, p0, p2, p1}, Lcom/windmill/sdk/common/s$17;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 38
    :cond_3
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->a(I)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadInnerAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Z)V

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic d(Lcom/windmill/sdk/common/s;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/common/s;->v:Z

    return p0
.end method

.method static synthetic e(Lcom/windmill/sdk/common/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/common/s;->q()V

    return-void
.end method

.method static synthetic f(Lcom/windmill/sdk/common/s;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic g(Lcom/windmill/sdk/common/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/common/s;->t()V

    return-void
.end method

.method private g(Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v2, Lcom/windmill/sdk/common/s$16;

    invoke-direct {v2, p0}, Lcom/windmill/sdk/common/s$16;-><init>(Lcom/windmill/sdk/common/s;)V

    const-string v3, "load"

    invoke-static {v3, v0, p1, v1, v2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method

.method static synthetic h(Lcom/windmill/sdk/common/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/common/s;->s()V

    return-void
.end method

.method private h(Lcom/windmill/sdk/strategy/a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    const-string v0, " "

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----adapterInitAndLoad--name--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isFailToOut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/windmill/sdk/common/l;->k:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isC2C: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v0}, Lcom/windmill/sdk/common/s;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return v1

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, v4, p1, v3, p0}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {p0, v3, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/base/WMAdapterError;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {p0, v3, p1, v4}, Lcom/windmill/sdk/common/s;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return v1

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v5, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/windmill/sdk/WindMillAdRequest;->setLoadId(Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/s;->g(Lcom/windmill/sdk/strategy/a;)V

    .line 12
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v5, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {p0, v4, p1, v5}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ":"

    if-nez v4, :cond_2

    .line 15
    :try_start_1
    iget-boolean v4, p0, Lcom/windmill/sdk/common/l;->k:Z

    if-nez v4, :cond_5

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----Load\u590d\u7528\u5df2\u7ecfLoad\u6210\u529f\u7684\u7684adapter:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/strategy/a;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/strategy/a;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    invoke-direct {p0, p1, v3}, Lcom/windmill/sdk/common/s;->c(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    goto :goto_0

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load\u590d\u7528\u5df2\u7ecfLoad\u6210\u529f\u7684\u7684adapter:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v3, p1}, Lcom/windmill/sdk/common/s;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    const/4 p1, 0x1

    return p1

    .line 21
    :cond_3
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    if-nez v0, :cond_5

    .line 22
    invoke-direct {p0, p1, v3}, Lcom/windmill/sdk/common/s;->c(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    goto :goto_0

    .line 23
    :cond_4
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v0}, Lcom/windmill/sdk/common/s;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 24
    new-instance v3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v3}, Lcom/windmill/sdk/common/s;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_5
    :goto_0
    return v1
.end method

.method static synthetic i(Lcom/windmill/sdk/common/s;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/windmill/sdk/common/s;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/s;->w:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/windmill/sdk/common/s;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/common/s;->I:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/windmill/sdk/common/s;)Lcom/windmill/sdk/strategy/s$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/s;->K:Lcom/windmill/sdk/strategy/s$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private p()V
    .locals 2

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/ClientMetadata;->setUserId(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/windmill/sdk/common/s;->J:J

    .line 8
    invoke-direct {p0}, Lcom/windmill/sdk/common/s;->r()V

    return-void
.end method

.method public static synthetic p(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->c(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/windmill/sdk/common/s;->G:Z

    .line 3
    .line 4
    new-instance v0, Lcom/windmill/sdk/common/s$11;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/windmill/sdk/common/s$11;-><init>(Lcom/windmill/sdk/common/s;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "-------WMSplashAdController e "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/WindMillAdRequest;->setLoadId(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/windmill/sdk/common/s;->L:Lcom/windmill/sdk/strategy/l$a;

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->j:Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/windmill/sdk/strategy/s;

    .line 29
    .line 30
    new-instance v1, Lcom/windmill/sdk/common/s$13;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/windmill/sdk/common/s$13;-><init>(Lcom/windmill/sdk/common/s;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/windmill/sdk/strategy/s;-><init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/strategy/s$d;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {v0, v1, p0, v2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/l;Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private s()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/windmill/sdk/common/s;->f()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 6
    .line 7
    instance-of v2, v1, Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    check-cast v1, Lcom/windmill/sdk/splash/WMSplashAdRequest;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/windmill/sdk/splash/WMSplashAdRequest;->getAppTitle()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/windmill/sdk/common/s;->c(Landroid/view/ViewGroup;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/windmill/sdk/common/s;->G:Z

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    const/4 v1, 0x4

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    .line 85
    .line 86
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .line 95
    const/4 v1, -0x1

    .line 96
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    .line 102
    .line 103
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->copy()Lcom/windmill/sdk/WindMillError;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v2, "can\'t find Activity or ad Container"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    .line 125
    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 129
    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-boolean v3, p0, Lcom/windmill/sdk/common/s;->I:Z

    .line 137
    .line 138
    invoke-interface {v1, v0, v2, v3}, Lcom/windmill/sdk/common/s$a;->onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catch_0
    nop

    .line 143
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    .line 144
    .line 145
    if-eqz v0, :cond_4

    .line 146
    .line 147
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 148
    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-boolean v3, p0, Lcom/windmill/sdk/common/s;->I:Z

    .line 158
    .line 159
    invoke-interface {v0, v2, v1, v3}, Lcom/windmill/sdk/common/s$a;->onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    :cond_4
    :goto_1
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/common/s;->f()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x802

    .line 16
    .line 17
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x400

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(ILcom/windmill/sdk/strategy/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "strategy"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/strategy/a;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 49
    invoke-virtual {p0, p2, v0}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/strategy/a;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 50
    invoke-direct {p0, p2}, Lcom/windmill/sdk/common/s;->h(Lcom/windmill/sdk/strategy/a;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/windmill/sdk/common/s$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "splashListener"
        }
    .end annotation

    .line 210
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/app/Activity;)V

    if-eqz p2, :cond_0

    .line 211
    iput-object p2, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adContainer"
        }
    .end annotation

    .line 43
    iget-boolean v0, p0, Lcom/windmill/sdk/common/s;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 44
    iput-object p1, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/windmill/sdk/common/s;->q()V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adContainer",
            "isAutoLoad"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    .line 13
    iput-boolean p2, p0, Lcom/windmill/sdk/common/s;->I:Z

    .line 14
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->s:Z

    .line 15
    invoke-virtual {p0}, Lcom/windmill/sdk/common/s;->b()Z

    move-result v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----loadAdAndShow isReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/windmill/sdk/common/s;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 17
    iput-object p1, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    :cond_0
    if-eqz v1, :cond_5

    .line 18
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getReadyExpired()J

    move-result-wide v1

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/windmill/sdk/common/s;->J:J

    sub-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_5

    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 21
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->isMainUI()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    if-eqz p1, :cond_2

    .line 23
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/windmill/sdk/common/s$a;->onSplashAdSuccessLoad(Ljava/lang/String;)V

    .line 24
    :cond_2
    iget-boolean p1, p0, Lcom/windmill/sdk/common/s;->v:Z

    if-eqz p1, :cond_4

    .line 25
    invoke-direct {p0}, Lcom/windmill/sdk/common/s;->q()V

    goto :goto_0

    .line 26
    :cond_3
    new-instance p1, Lcom/windmill/sdk/common/s$10;

    invoke-direct {p1, p0}, Lcom/windmill/sdk/common/s$10;-><init>(Lcom/windmill/sdk/common/s;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(ZLcom/windmill/sdk/WindMillAdRequest;)Lcom/windmill/sdk/common/l$b;

    move-result-object p1

    .line 28
    sget-object p2, Lcom/windmill/sdk/common/s$9;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 29
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WindFilterLoadInterval "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 30
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/windmill/sdk/WindMillError;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WindFilterLoadingBreak "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 32
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/windmill/sdk/WindMillError;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string p1, "WindFilterGdpr"

    .line 33
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 34
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_GDPR_DENIED:Lcom/windmill/sdk/WindMillError;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string p1, "WindFilterParameter"

    .line 35
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string p1, "WindFilterInit"

    .line 37
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/windmill/sdk/WindMillAd;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 39
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_INIT:Lcom/windmill/sdk/WindMillError;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_6
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_EXCEPTION:Lcom/windmill/sdk/WindMillError;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const-string p1, "WindFilterKeepGoing"

    .line 41
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/windmill/sdk/common/s;->p()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/windmill/sdk/common/s$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splashListener"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    return-void
.end method

.method public a(Lcom/windmill/sdk/common/s$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readyAdapterLister"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adStatus not ready  is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 138
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NOT_READY:Lcom/windmill/sdk/WindMillError;

    invoke-interface {p1, v0}, Lcom/windmill/sdk/common/s$b;->a(Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "strategies is empty"

    .line 140
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 141
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_NULL_STRATEGY:Lcom/windmill/sdk/WindMillError;

    invoke-interface {p1, v0}, Lcom/windmill/sdk/common/s$b;->a(Lcom/windmill/sdk/WindMillError;)V

    :cond_2
    return-void

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "readyList is empty"

    .line 143
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 144
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NOT_READY:Lcom/windmill/sdk/WindMillError;

    invoke-interface {p1, v0}, Lcom/windmill/sdk/common/s$b;->a(Lcom/windmill/sdk/WindMillError;)V

    :cond_4
    return-void

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 146
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->m()Lcom/windmill/sdk/common/u;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 147
    invoke-interface {v2}, Lcom/windmill/sdk/common/u;->a()Lcom/windmill/sdk/models/WMFilter;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v2, v1

    .line 148
    :goto_1
    invoke-static {v4, v2}, Lcom/windmill/sdk/strategy/r;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 150
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aG()Z

    move-result v3

    if-nez v3, :cond_a

    if-nez v2, :cond_a

    .line 151
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 152
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady(Lcom/windmill/sdk/strategy/a;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 153
    sget-object v5, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getReadyStrategy isReady true "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " load Id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 154
    invoke-interface {p1, v3, v4}, Lcom/windmill/sdk/common/s$b;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    const-string v5, "play"

    .line 155
    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY_NETWORK_NOT_READY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v6

    const-string v7, ""

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    if-nez v2, :cond_6

    .line 156
    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY_NETWORK_EXPIRED:Lcom/windmill/sdk/WindMillError;

    const-string v5, "play"

    .line 157
    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v6

    const-string v7, ""

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    if-eqz p1, :cond_d

    if-eqz v2, :cond_c

    .line 158
    invoke-interface {p1, v2}, Lcom/windmill/sdk/common/s$b;->a(Lcom/windmill/sdk/WindMillError;)V

    goto :goto_2

    .line 159
    :cond_c
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NOT_READY:Lcom/windmill/sdk/WindMillError;

    invoke-interface {p1, v0}, Lcom/windmill/sdk/common/s$b;->a(Lcom/windmill/sdk/WindMillError;)V

    :cond_d
    :goto_2
    return-void
.end method

.method public a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->j()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_4

    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v2, :cond_2

    const-string p1, "not do splashAd load ad"

    .line 166
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 167
    :cond_2
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 168
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/windmill/sdk/common/s;->J:J

    .line 170
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 171
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    if-eqz p1, :cond_3

    .line 172
    new-instance p1, Lcom/windmill/sdk/common/s$5;

    invoke-direct {p1, p0}, Lcom/windmill/sdk/common/s$5;-><init>(Lcom/windmill/sdk/common/s;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p1, "has send notify splashAd load success,F don\'t do again"

    .line 173
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "error"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------notifyPreloadTimeOut------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/windmill/sdk/common/s;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "adStrategy",
            "biddingListener"
        }
    .end annotation

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------adapterLoadBidToken------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, v1, p1, v0, p0}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v1, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAdRequest;->setLoadId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->l(Z)V

    .line 66
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v0

    .line 68
    new-instance v3, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v3, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 69
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v3, v1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0, v3}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/windmill/sdk/common/l;->a(I)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    new-instance v7, Lcom/windmill/sdk/common/s$14;

    invoke-direct {v7, p0, p2, v0}, Lcom/windmill/sdk/common/s$14;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/s$a;Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadBidding(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "isLoadAdPrice"
        }
    .end annotation

    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----adapterLoadBidPrice--name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "name null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/windmill/sdk/common/s;->a(ZLcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, v1, p1, v0, p0}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 82
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/s;->g(Lcom/windmill/sdk/strategy/a;)V

    .line 83
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v2, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/WindMillAdRequest;->setLoadId(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/strategy/a;->l(Z)V

    .line 86
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 88
    new-instance v2, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v2, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 89
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v2, v3}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    if-eqz p2, :cond_2

    .line 90
    invoke-interface {v1, v2}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 91
    :cond_2
    invoke-interface {v1, v2}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 92
    :cond_3
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/utils/a;->a(Lcom/windmill/sdk/utils/a$a;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----adapterLoadBidPrice  isNeedUILoadAd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->d(Lcom/windmill/sdk/strategy/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->d(Lcom/windmill/sdk/strategy/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    new-instance v1, Lcom/windmill/sdk/common/s$15;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/windmill/sdk/common/s$15;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V

    invoke-virtual {p0, v1}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/windmill/sdk/common/l;->a(I)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    move-object v2, v0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadInnerAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Z)V

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    goto :goto_1

    .line 98
    :cond_5
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/windmill/sdk/common/s;->a(ZLcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 99
    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, p1, v1}, Lcom/windmill/sdk/common/s;->a(ZLcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLoadAndShow"
        }
    .end annotation

    .line 212
    iput-boolean p1, p0, Lcom/windmill/sdk/common/s;->v:Z

    return-void
.end method

.method public a(ZLcom/windmill/sdk/strategy/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isOut",
            "strategy"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 188
    iput-wide v0, p0, Lcom/windmill/sdk/common/s;->J:J

    .line 189
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    .line 191
    iput-boolean v1, p0, Lcom/windmill/sdk/common/s;->v:Z

    .line 192
    iget-boolean v1, p0, Lcom/windmill/sdk/common/s;->E:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/windmill/sdk/common/s;->G:Z

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 196
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    if-eqz v2, :cond_2

    .line 197
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aF()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 199
    sget-object v3, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controller destroy adAdapter destroy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/windmill/sdk/utils/a;->b(Lcom/windmill/sdk/utils/a$a;)V

    .line 201
    invoke-virtual {v2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->destroy()V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v1, :cond_4

    .line 203
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/s;->m()V

    .line 204
    :cond_4
    iput-object v0, p0, Lcom/windmill/sdk/common/s;->w:Landroid/widget/RelativeLayout;

    .line 205
    iput-object v0, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    .line 206
    iput-object v0, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 207
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/windmill/sdk/common/l;->a(ZLjava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    .line 208
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->h()V

    return-void
.end method

.method public adapterDidAdClick(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 9
    .line 10
    new-instance v1, Lcom/windmill/sdk/common/s$3;

    .line 11
    .line 12
    invoke-direct {v1, p0, p2, p1}, Lcom/windmill/sdk/common/s$3;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "click"

    .line 16
    .line 17
    invoke-static {p1, p3, p2, v0, v1}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 25
    .line 26
    invoke-interface {p1, p2}, Lcom/windmill/sdk/common/s$a;->onSplashAdClicked(Lcom/windmill/sdk/models/AdInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public adapterDidAdClickDownload(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    return-void
.end method

.method public adapterDidCloseAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/windmill/sdk/common/s;->E:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/windmill/sdk/common/s;->G:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->x:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getSplashEyeAd()Lcom/windmill/sdk/splash/IWMSplashEyeAd;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/common/s$a;->onSplashClosed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/splash/IWMSplashEyeAd;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 39
    .line 40
    new-instance v2, Lcom/windmill/sdk/common/s$6;

    .line 41
    .line 42
    invoke-direct {v2, p0, p1}, Lcom/windmill/sdk/common/s$6;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "close"

    .line 46
    .line 47
    invoke-static {p1, v0, p2, v1, v2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(ZLcom/windmill/sdk/strategy/a;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy",
            "error"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "adapterDidFailToLoadAd: strategy = ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "], error = ["

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "]"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/utils/a;->b(Lcom/windmill/sdk/utils/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    nop

    .line 47
    :goto_0
    iget-boolean p1, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->F()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->K:Lcom/windmill/sdk/strategy/s$b;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-interface {p1, p2, p3}, Lcom/windmill/sdk/strategy/s$b;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->L:Lcom/windmill/sdk/strategy/l$a;

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    const-string v1, "ready"

    .line 77
    .line 78
    invoke-interface {p1, p2, p3, v1}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->U()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->n()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eq v1, v2, :cond_2

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Lcom/windmill/sdk/strategy/a;->d(Z)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    .line 115
    .line 116
    invoke-direct {v0, p2}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 120
    .line 121
    invoke-virtual {v0, p2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v0, p3}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    return-void

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->U()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_4

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->n()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_4

    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eq v1, v2, :cond_4

    .line 157
    .line 158
    invoke-virtual {p2, v0}, Lcom/windmill/sdk/strategy/a;->d(Z)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    .line 162
    .line 163
    invoke-direct {v1, p2}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, v1, p3}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 172
    .line 173
    .line 174
    :cond_4
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->w()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_5

    .line 179
    .line 180
    const-string v3, "ready"

    .line 181
    .line 182
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getExternalErrorCode()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    move-object v1, p0

    .line 195
    move-object v2, p2

    .line 196
    invoke-direct/range {v1 .. v6}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_5
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 200
    .line 201
    if-eqz p1, :cond_6

    .line 202
    .line 203
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_6

    .line 208
    .line 209
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 210
    .line 211
    const-string p2, "adapterDidFailToLoadAd but is not current stage"

    .line 212
    .line 213
    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_6
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    .line 218
    .line 219
    const/16 v1, 0x7d0

    .line 220
    .line 221
    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 225
    .line 226
    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    .line 227
    .line 228
    if-eq p1, v2, :cond_f

    .line 229
    .line 230
    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    .line 231
    .line 232
    if-ne p1, v2, :cond_7

    .line 233
    .line 234
    goto/16 :goto_3

    .line 235
    .line 236
    :cond_7
    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    .line 237
    .line 238
    if-eq p1, v2, :cond_8

    .line 239
    .line 240
    const-string p1, "not do splashAd load ad"

    .line 241
    .line 242
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_8
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 247
    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v3, "-"

    .line 261
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-interface {p1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2, v0, p3}, Lcom/windmill/sdk/strategy/a;->a(ZLcom/windmill/sdk/base/WMAdapterError;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->D()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    const/4 p3, 0x0

    .line 287
    if-eqz p1, :cond_9

    .line 288
    .line 289
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->A()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_b

    .line 294
    .line 295
    invoke-virtual {p2, p3}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_9
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-eqz p1, :cond_b

    .line 304
    .line 305
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->L:Lcom/windmill/sdk/strategy/l$a;

    .line 306
    .line 307
    if-eqz p1, :cond_a

    .line 308
    .line 309
    invoke-interface {p1, p2}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 310
    .line 311
    .line 312
    :cond_a
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->B()Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_b

    .line 317
    .line 318
    invoke-virtual {p2, p3}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_b
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 323
    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/strategy/a;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    if-eqz p1, :cond_c

    .line 329
    .line 330
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/common/s;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_c
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 339
    .line 340
    new-instance p3, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v0, "loadErrorADStrategy: "

    .line 346
    .line 347
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 351
    .line 352
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p3

    .line 363
    invoke-static {p1, p3}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 367
    .line 368
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    iget-object p3, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 373
    .line 374
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 375
    .line 376
    .line 377
    move-result p3

    .line 378
    if-ge p1, p3, :cond_d

    .line 379
    .line 380
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 381
    .line 382
    if-eqz p1, :cond_e

    .line 383
    .line 384
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/a;)V

    .line 385
    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_d
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    .line 389
    .line 390
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    .line 392
    .line 393
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    .line 394
    .line 395
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 396
    .line 397
    .line 398
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NO_FILL:Lcom/windmill/sdk/WindMillError;

    .line 399
    .line 400
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->copy()Lcom/windmill/sdk/WindMillError;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    iget-object p3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 405
    .line 406
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p3

    .line 410
    const/4 v0, 0x0

    .line 411
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :cond_e
    :goto_2
    return-void

    .line 415
    :cond_f
    :goto_3
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 416
    .line 417
    const-string p2, "splash ad has ready or closed"

    .line 418
    .line 419
    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    return-void
.end method

.method public adapterDidFailToPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "error"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const-string v1, "{error_code: %s, message: %s}"

    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "play"

    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getExternalErrorCode()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    move-object v1, p0

    .line 48
    move-object v2, p2

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/s;->b(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public adapterDidLoadAdReady(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "adapterDidLoadAdReady() called with: strategy = ["

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "] "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->U()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->n()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->d(Z)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    .line 62
    .line 63
    invoke-direct {v1, p2}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadSuccess(Lcom/windmill/sdk/models/AdInfo;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    const-string v0, "ready"

    .line 75
    .line 76
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 79
    .line 80
    new-instance v3, Lcom/windmill/sdk/common/s$4;

    .line 81
    .line 82
    invoke-direct {v3, p0, p1}, Lcom/windmill/sdk/common/s$4;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1, p2, v2, v3}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v2, v1, p2, p1}, Lcom/windmill/sdk/strategy/d;->a(ILjava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void
.end method

.method public adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "---adapterDidLoadAdSuccessAd() called with: strategy = ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->L:Lcom/windmill/sdk/strategy/l$a;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v0, p2, p1}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string p2, "adapterDidLoadAdSuccessAd but is not current stage"

    .line 60
    .line 61
    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->H:Landroid/os/Handler;

    .line 66
    .line 67
    const/16 v1, 0x7d0

    .line 68
    .line 69
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p2, v0}, Lcom/windmill/sdk/strategy/a;->g(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->D()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->A()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->L:Lcom/windmill/sdk/strategy/l$a;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-interface {v0, p2}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->B()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getAdapterReadyTime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    invoke-virtual {p2, v0, v1}, Lcom/windmill/sdk/strategy/a;->a(J)V

    .line 123
    .line 124
    .line 125
    :cond_6
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->i()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelObject()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v1, Lcom/windmill/sdk/strategy/a;->o:Ljava/util/Set;

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p2, v0, v1}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Object;Z)V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_8
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 168
    .line 169
    invoke-virtual {p0, v0, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    return-void

    .line 176
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public adapterDidLoadBiddingPriceSuccess(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "price"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "--Splash--PriceSuccess strategy "

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " P:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " "

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->K:Lcom/windmill/sdk/strategy/s$b;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->K:Lcom/windmill/sdk/strategy/s$b;

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    invoke-interface {p1, p2, p3}, Lcom/windmill/sdk/strategy/s$b;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public adapterDidPlayEndAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    return-void
.end method

.method public adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "isReward"
        }
    .end annotation

    return-void
.end method

.method public adapterDidShowLangPageAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "extra"
        }
    .end annotation

    return-void
.end method

.method public adapterDidSkipAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 4
    .line 5
    new-instance v2, Lcom/windmill/sdk/common/s$8;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1}, Lcom/windmill/sdk/common/s$8;-><init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "skip"

    .line 11
    .line 12
    invoke-static {p1, v0, p2, v1, v2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/windmill/sdk/models/FreEntity;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-direct {v1, v2, v3, v4}, Lcom/windmill/sdk/models/FreEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/i;->a(Lcom/windmill/sdk/models/FreEntity;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 33
    .line 34
    const-string v1, "start"

    .line 35
    .line 36
    invoke-virtual {p0, v1, p2, v0}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-virtual {p3, v1, v0, p2, p1}, Lcom/windmill/sdk/strategy/d;->a(ILjava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/windmill/sdk/common/s;->D:Lcom/windmill/sdk/common/s$a;

    .line 61
    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 65
    .line 66
    invoke-interface {p1, p2}, Lcom/windmill/sdk/common/s$a;->onSplashAdSuccessPresent(Lcom/windmill/sdk/models/AdInfo;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewGroup"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    .line 31
    invoke-direct {p0}, Lcom/windmill/sdk/common/s;->s()V

    return-void
.end method

.method public b()Z
    .locals 8

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v1, v2, :cond_0

    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->m()Lcom/windmill/sdk/common/u;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v3}, Lcom/windmill/sdk/common/u;->a()Lcom/windmill/sdk/models/WMFilter;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-static {v2, v3}, Lcom/windmill/sdk/strategy/r;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aG()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 11
    invoke-virtual {p0, v2}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v3, v2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady(Lcom/windmill/sdk/strategy/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/windmill/sdk/common/l;->s:Z

    return v1

    :cond_3
    const/4 v3, 0x0

    const-string v4, "ready"

    .line 14
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_ALLAD_NOT_READY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v5

    const-string v6, ""

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY_NETWORK_NOT_READY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public c()Lcom/windmill/sdk/models/AdInfo;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getAdInfo: adStatus is not ready, current status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    return-object v2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 6
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->m()Lcom/windmill/sdk/common/u;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v3}, Lcom/windmill/sdk/common/u;->a()Lcom/windmill/sdk/models/WMFilter;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 8
    :goto_1
    invoke-static {v1, v3}, Lcom/windmill/sdk/strategy/r;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_2

    .line 9
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aG()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady(Lcom/windmill/sdk/strategy/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v0, v1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 13
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v0, v3}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getAdInfo: found ready ad - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, " getAdInfo: no valid ready adapter found"

    .line 15
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getAdInfo error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v2

    :cond_6
    :goto_3
    const-string v0, " getAdInfo: readyList is empty"

    .line 18
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    return-object v2
.end method

.method public d()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/windmill/sdk/strategy/e;->a()Lcom/windmill/sdk/strategy/e;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    check-cast v1, Lcom/windmill/sdk/splash/WMSplashAdRequest;

    invoke-virtual {v0, v1, p0}, Lcom/windmill/sdk/strategy/e;->a(Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/common/l;)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/AdInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    .line 7
    new-instance v4, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v4, v3}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 8
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v4, v3}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/windmill/sdk/common/l;->f()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/common/s;->F:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->getActivityFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    :cond_0
    return-object v0
.end method
