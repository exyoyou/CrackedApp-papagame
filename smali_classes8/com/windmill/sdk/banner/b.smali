.class Lcom/windmill/sdk/banner/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/banner/a$a;
.implements Lcom/windmill/sdk/common/j$a;
.implements Lcom/windmill/sdk/common/j$b;
.implements Lcom/windmill/sdk/common/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/banner/b$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field private b:Lcom/windmill/sdk/common/j;

.field private c:Lcom/windmill/sdk/banner/WMBannerAdListener;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lcom/windmill/sdk/common/n;

.field private i:Lcom/windmill/sdk/banner/a;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field private l:I

.field private m:Lcom/windmill/sdk/banner/WMBannerAdRequest;

.field private n:Lcom/windmill/sdk/common/f;

.field private o:Lcom/windmill/sdk/common/e;

.field private p:Lcom/windmill/sdk/common/g;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/windmill/sdk/banner/b;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/banner/b;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/windmill/sdk/banner/b;->e:Z

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/windmill/sdk/banner/b;->f:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/windmill/sdk/banner/b;->g:I

    .line 7
    iput v0, p0, Lcom/windmill/sdk/banner/b;->l:I

    .line 8
    iput-boolean p2, p0, Lcom/windmill/sdk/banner/b;->q:Z

    .line 9
    iput-boolean p3, p0, Lcom/windmill/sdk/banner/b;->r:Z

    .line 10
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/windmill/sdk/banner/b;->d:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Lcom/windmill/sdk/common/n;

    invoke-direct {p1}, Lcom/windmill/sdk/common/n;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/banner/b;->h:Lcom/windmill/sdk/common/n;

    .line 12
    new-instance p1, Lcom/windmill/sdk/common/f;

    invoke-direct {p1}, Lcom/windmill/sdk/common/f;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/banner/b;->n:Lcom/windmill/sdk/common/f;

    .line 13
    new-instance p1, Lcom/windmill/sdk/common/e;

    invoke-direct {p1}, Lcom/windmill/sdk/common/e;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/banner/b;->o:Lcom/windmill/sdk/common/e;

    .line 14
    new-instance p1, Lcom/windmill/sdk/common/g;

    invoke-direct {p1}, Lcom/windmill/sdk/common/g;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/banner/b;->p:Lcom/windmill/sdk/common/g;

    .line 15
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 19
    sget-object p1, Lcom/windmill/sdk/banner/animation/h;->d:Lcom/windmill/sdk/banner/animation/h;

    const-wide/16 p2, 0x1f4

    sget-object v0, Lcom/windmill/sdk/banner/animation/g;->c:Lcom/windmill/sdk/banner/animation/g;

    invoke-static {p1, p2, p3, v0}, Lcom/windmill/sdk/banner/animation/a;->a(Lcom/windmill/sdk/banner/animation/h;JLcom/windmill/sdk/banner/animation/g;)Lcom/windmill/sdk/banner/animation/f;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/windmill/sdk/banner/animation/f;->a()Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/windmill/sdk/banner/b;->j:Landroid/view/animation/Animation;

    .line 21
    invoke-interface {p1}, Lcom/windmill/sdk/banner/animation/f;->b()Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/banner/b;->k:Landroid/view/animation/Animation;

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sdk/banner/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    invoke-virtual {v0, p0}, Lcom/windmill/sdk/banner/a;->a(Lcom/windmill/sdk/banner/a$a;)V

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    invoke-virtual {v0}, Lcom/windmill/sdk/banner/a;->a()V

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/banner/a;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bannerView",
            "isRefreshed"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/windmill/sdk/utils/ViewUtil;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/windmill/sdk/banner/b;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/windmill/sdk/banner/b;->q:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "---------addView----------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/windmill/sdk/banner/b;->q:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 9
    iget-boolean p2, p0, Lcom/windmill/sdk/banner/b;->r:Z

    if-eqz p2, :cond_8

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---------removeView----------"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/windmill/sdk/strategy/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/16 v5, 0x1f

    if-eq v0, v3, :cond_3

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    if-eq v0, v5, :cond_3

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 18
    :cond_3
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    if-eq v0, v5, :cond_5

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p2

    if-ne p2, v4, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 20
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 22
    :cond_6
    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->k:Landroid/view/animation/Animation;

    new-instance v0, Lcom/windmill/sdk/banner/b$a;

    iget-object v3, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    invoke-direct {v0, p0, v3}, Lcom/windmill/sdk/banner/b$a;-><init>(Lcom/windmill/sdk/banner/b;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 23
    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->k:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->j:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    :goto_4
    iget-boolean p2, p0, Lcom/windmill/sdk/banner/b;->q:Z

    if-eqz p2, :cond_9

    .line 27
    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    if-eqz p2, :cond_9

    .line 28
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    invoke-virtual {p2, v2, v0}, Lcom/windmill/sdk/common/j;->a(ZLandroid/view/View;)V

    goto :goto_5

    .line 29
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 31
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    iget-boolean p2, p0, Lcom/windmill/sdk/banner/b;->q:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 34
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {v0, v2, p2}, Lcom/windmill/sdk/common/j;->a(ZLandroid/view/View;)V

    .line 36
    :cond_9
    :goto_5
    iget-boolean p2, p0, Lcom/windmill/sdk/banner/b;->q:Z

    if-eqz p2, :cond_a

    .line 37
    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    if-eqz p2, :cond_a

    .line 38
    invoke-virtual {p2, v1, p1}, Lcom/windmill/sdk/common/j;->a(ZLandroid/view/View;)V

    .line 39
    :cond_a
    iput-object p1, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/windmill/sdk/utils/ViewUtil;->isVisible(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/b;->isViewAttached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/b;->visible()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/b;->inVisible()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/windmill/sdk/banner/a;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/banner/a;->a(Lcom/windmill/sdk/banner/a$a;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/banner/a;->a(Z)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public checkValidAdCaches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/AdInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/j;->e()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public checkVisibleStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/b;->setAutoScroll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2}, Lcom/windmill/sdk/common/j;->a(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iput-object v1, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->h:Lcom/windmill/sdk/common/n;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iput-object v1, p0, Lcom/windmill/sdk/banner/b;->h:Lcom/windmill/sdk/common/n;

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/windmill/sdk/utils/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public disableAutoScroll()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/banner/b;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    .line 6
    .line 7
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getLoadFailMessages()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->o()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public inVisible()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/banner/b;->q:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/j;->a(ZLandroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-boolean v1, p0, Lcom/windmill/sdk/banner/b;->q:Z

    .line 18
    .line 19
    return-void
.end method

.method public isCanRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/banner/b;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/common/j;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isViewAttached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/banner/b;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/windmill/sdk/banner/b;->g:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/windmill/sdk/banner/b;->l:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/windmill/sdk/banner/b;->f:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public loadAd(Lcom/windmill/sdk/banner/WMBannerAdRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    const-string v1, "ad_key_height"

    .line 4
    .line 5
    const-string v2, "ad_key_width"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    :try_start_0
    iput-object p1, p0, Lcom/windmill/sdk/banner/b;->m:Lcom/windmill/sdk/banner/WMBannerAdRequest;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p1, v4}, Lcom/windmill/sdk/WindMillAdRequest;->setRefreshRequest(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lcom/windmill/sdk/banner/b;->m:Lcom/windmill/sdk/banner/WMBannerAdRequest;

    .line 20
    .line 21
    iput-boolean v4, v5, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    :cond_1
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/windmill/sdk/utils/UIUtils;->getScreenWidthDp(Landroid/content/Context;)F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    float-to-int v4, v4

    .line 82
    invoke-static {v0}, Lcom/windmill/sdk/utils/UIUtils;->getScreenHeightDp(Landroid/content/Context;)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    float-to-int v0, v0

    .line 87
    if-ge v0, v4, :cond_2

    .line 88
    .line 89
    move v4, v0

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    mul-int/lit8 v4, v4, 0x32

    .line 106
    .line 107
    div-int/lit16 v4, v4, 0x140

    .line 108
    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 117
    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    new-instance v0, Lcom/windmill/sdk/common/j;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/b;->getActivity()Landroid/app/Activity;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, v1, p1, p0, p0}, Lcom/windmill/sdk/common/j;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/j$b;Lcom/windmill/sdk/common/j$a;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 130
    .line 131
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/windmill/sdk/banner/b;->p:Lcom/windmill/sdk/common/g;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 139
    .line 140
    iget-object v1, p0, Lcom/windmill/sdk/banner/b;->o:Lcom/windmill/sdk/common/e;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/d;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/windmill/sdk/banner/b;->h:Lcom/windmill/sdk/common/n;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/m;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/windmill/sdk/banner/b;->n:Lcom/windmill/sdk/common/f;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/common/u;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/j;->a(Lcom/windmill/sdk/WindMillAdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-exception p1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v1, "loadAd error:"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v1, "WMAdViewImpl"

    .line 188
    .line 189
    invoke-static {v1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string v2, "error"

    .line 203
    .line 204
    const-string v4, "load"

    .line 205
    .line 206
    invoke-static {v2, v4, v1, p1}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const/4 v1, 0x7

    .line 211
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p1, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v3}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 225
    .line 226
    if-eqz p1, :cond_5

    .line 227
    .line 228
    invoke-interface {p1, v0, v3}, Lcom/windmill/sdk/banner/WMBannerAdListener;->onAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_5
    :goto_0
    return-void
.end method

.method public onAdAutoRefreshFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/banner/WMBannerAdListener;->onAdAutoRefreshFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdAutoRefreshed(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "bannerView"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ":"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "-------onAdAutoRefreshed------"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p2, v0}, Lcom/windmill/sdk/banner/b;->a(Landroid/view/View;Z)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 73
    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/windmill/sdk/banner/WMBannerAdListener;->onAdAutoRefreshed(Lcom/windmill/sdk/models/AdInfo;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    if-eqz p1, :cond_1

    .line 81
    .line 82
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 83
    .line 84
    const-string v0, "onAdAutoRefreshed but bannerView is null"

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/windmill/sdk/models/AdInfo;->getPlacementId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/banner/b;->onAdAutoRefreshFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method public onAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/banner/WMBannerAdListener;->onAdClicked(Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdClosed(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/banner/WMBannerAdListener;->onAdClosed(Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/banner/WMBannerAdListener;->onAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdLoadSuccess(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bannerView",
            "placementId"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/windmill/sdk/banner/b;->a(Landroid/view/View;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1, p2}, Lcom/windmill/sdk/banner/WMBannerAdListener;->onAdLoadSuccess(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 16
    .line 17
    const-string v0, "onAdLoadSuccess but bannerView is null"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/banner/b;->onAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public onAdShown(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/banner/WMBannerAdListener;->onAdShown(Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/banner/b;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/windmill/sdk/banner/b;->f:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/windmill/sdk/banner/b;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/banner/b;->e:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/windmill/sdk/banner/b;->b()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/windmill/sdk/banner/b;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/high16 v1, 0x40000000    # 2.0f

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/windmill/sdk/banner/b;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changedView",
            "visibility"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/windmill/sdk/banner/b;->l:I

    .line 5
    .line 6
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasWindowFocus"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/windmill/sdk/banner/b;->f:Z

    .line 5
    .line 6
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/windmill/sdk/banner/b;->g:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/windmill/sdk/banner/b;->a()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/windmill/sdk/banner/b;->b()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setActivityChannelFilterList(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->o:Lcom/windmill/sdk/common/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/e;->a(Ljava/util/Set;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/windmill/sdk/banner/WMBannerAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/banner/b;->c:Lcom/windmill/sdk/banner/WMBannerAdListener;

    .line 2
    .line 3
    return-void
.end method

.method public setAdSourceStatusListener(Lcom/windmill/sdk/WMAdSourceStatusListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->p:Lcom/windmill/sdk/common/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/g;->a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAutoAnimation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anima"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/banner/b;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAutoScroll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/banner/b;->disableAutoScroll()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/windmill/sdk/banner/a;

    .line 9
    .line 10
    const-wide/16 v1, 0x3e8

    .line 11
    .line 12
    invoke-direct {v0, p0, p0, v1, v2}, Lcom/windmill/sdk/banner/a;-><init>(Landroid/view/View;Lcom/windmill/sdk/banner/a$a;J)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/windmill/sdk/banner/b;->i:Lcom/windmill/sdk/banner/a;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/windmill/sdk/banner/b;->a()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setCustomGroup(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->h:Lcom/windmill/sdk/common/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/n;->a(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/windmill/sdk/WMAdFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->n:Lcom/windmill/sdk/common/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/f;->a(Lcom/windmill/sdk/models/WMFilter;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public visible()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/banner/b;->q:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/banner/b;->b:Lcom/windmill/sdk/common/j;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/windmill/sdk/banner/b;->a:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/j;->a(ZLandroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-boolean v1, p0, Lcom/windmill/sdk/banner/b;->q:Z

    .line 18
    .line 19
    return-void
.end method
