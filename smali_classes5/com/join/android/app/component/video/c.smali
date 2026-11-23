.class public Lcom/join/android/app/component/video/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/c$l;
    }
.end annotation


# static fields
.field public static final v:I = 0x1

.field public static final w:I = 0x2


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field c:Ljava/lang/String;

.field d:Lcom/join/android/app/component/video/StandardVideoView;

.field e:Z

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/join/android/app/component/video/c$l;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/widget/AbsListView;

.field public l:Lit/sephiroth/android/library/widget/AbsHListView;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Lcom/join/mgps/recycler/c;

.field o:I

.field p:J

.field q:Lcom/facebook/drawee/view/SimpleDraweeView;

.field r:Lcom/facebook/drawee/view/SimpleDraweeView;

.field s:Landroid/widget/FrameLayout;

.field t:Landroid/view/animation/AlphaAnimation;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/android/app/component/video/c;->b:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 6
    iput v0, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 7
    iput v1, p0, Lcom/join/android/app/component/video/c;->h:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->i:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 8
    iput v1, p0, Lcom/join/android/app/component/video/c;->o:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/component/video/c;->p:J

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 14
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "playTag"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/join/android/app/component/video/c;->b:I

    const-string v1, ""

    .line 17
    iput-object v1, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 20
    iput v0, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 21
    iput v1, p0, Lcom/join/android/app/component/video/c;->h:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->i:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 22
    iput v1, p0, Lcom/join/android/app/component/video/c;->o:I

    const-wide/16 v2, 0x0

    .line 23
    iput-wide v2, p0, Lcom/join/android/app/component/video/c;->p:J

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 28
    invoke-virtual {p0, p1, p2, v1}, Lcom/join/android/app/component/video/c;->D(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "playTag",
            "alowClickIntent"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/join/android/app/component/video/c;->b:I

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 34
    iput v0, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 35
    iput v1, p0, Lcom/join/android/app/component/video/c;->h:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->i:I

    iput v1, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 36
    iput v1, p0, Lcom/join/android/app/component/video/c;->o:I

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/join/android/app/component/video/c;->p:J

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/component/video/c;->D(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private J(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/t;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private M(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "MyListViewVideoHelper"

    .line 2
    .line 3
    const-string v1, "startAnim "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const v2, 0x3dcccccd    # 0.1f

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    .line 25
    .line 26
    const-wide/16 v1, 0x258

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    .line 32
    .line 33
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    .line 42
    .line 43
    new-instance v1, Lcom/join/android/app/component/video/c$b;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/video/c$b;-><init>(Lcom/join/android/app/component/video/c;Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->t:Landroid/view/animation/AlphaAnimation;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/video/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/c;->J(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/android/app/component/video/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/component/video/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/c;->M(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static t([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPositions"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    array-length v2, p0

    .line 5
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v3, p0, v0

    .line 8
    .line 9
    if-le v3, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method private static u([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPositions"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    array-length v2, p0

    .line 5
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v3, p0, v0

    .line 8
    .line 9
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static v(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/video/c;->u([I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method

.method public static w(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/video/c;->u([I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method

.method public static x(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/video/c;->t([I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method

.method public static y(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/video/c;->t([I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/join/android/app/component/video/c$l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

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

.method public D(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "playTag",
            "alowClickIntent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "PapaMainAdapter"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p3, "EndGameListFragmentVideoHelper"

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-nez p3, :cond_1

    .line 35
    .line 36
    const-string p3, "EndGameDiscoveryFragment"

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    :cond_1
    iget-object p2, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 45
    .line 46
    const/4 p3, 0x1

    .line 47
    invoke-virtual {p2, p3}, Lcom/join/android/app/component/video/StandardVideoView;->setAutoPlayConfig(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 51
    .line 52
    new-instance p3, Lcom/join/android/app/component/video/c$d;

    .line 53
    .line 54
    invoke-direct {p3, p0, p1}, Lcom/join/android/app/component/video/c$d;-><init>(Lcom/join/android/app/component/video/c;Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Lcom/join/android/app/component/video/StandardVideoView;->setOnclickVideoListener(Lcom/join/android/app/component/video/StandardVideoView$j;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 62
    .line 63
    invoke-virtual {v0, p3}, Lcom/join/android/app/component/video/StandardVideoView;->setAutoPlayConfig(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 67
    .line 68
    new-instance v0, Lcom/join/android/app/component/video/c$c;

    .line 69
    .line 70
    invoke-direct {v0, p0, p1, p2}, Lcom/join/android/app/component/video/c$c;-><init>(Lcom/join/android/app/component/video/c;Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setOnclickVideoListener(Lcom/join/android/app/component/video/StandardVideoView$j;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    return-void
.end method

.method public E(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "EndGameListFragmentVideoHelper"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "EndGameDiscoveryFragment"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/join/android/app/component/video/c$l;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/android/app/component/video/c$l;->d:Lcom/join/mgps/Util/IntentDateBean;

    .line 43
    .line 44
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 54
    .line 55
    instance-of p1, p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    const-string p1, "PapaMainAdapter"

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/join/android/app/component/video/c$l;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c$l;->f()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/c;->J(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/join/android/app/component/video/c$l;

    .line 104
    .line 105
    if-nez p1, :cond_3

    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameDetailActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c$l;->c()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->b(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c$l;->b()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->a(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c$l;->g()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameDetailActivity_$o;->d(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameDetailActivity_$o;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 142
    .line 143
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c$l;->b()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 154
    .line 155
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c$l;->c()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickEndGameDetail:Lcom/papa/sim/statistic/Event;

    .line 172
    .line 173
    invoke-virtual {p1, v2, v0, v1}, Lcom/papa/sim/statistic/t;->i0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catch_0
    move-exception p1

    .line 178
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :catch_1
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :cond_4
    :goto_1
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/android/app/component/video/a;->n0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public H()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "MyListViewVideoHelper"

    .line 2
    .line 3
    const-string v1, "onResume "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/join/android/app/component/video/i;->b()Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/android/app/component/video/StandardVideoView;->setThumbVisibleM()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/StandardVideoView;->l(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->k:Landroid/widget/AbsListView;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->l:Lit/sephiroth/android/library/widget/AbsHListView;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/c;->o(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->onVideoResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public I(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForGround"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "MyListViewVideoHelper"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "onResumeDelayForMain "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-static {v2, v0, v3, v0}, Lcom/join/android/app/component/video/i;->c(Lcom/join/android/app/component/video/StandardVideoView;Ljava/lang/String;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/android/app/component/video/i;->a(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "onResumeDelayForMain2 "

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->setSurfaceToPlay()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 80
    .line 81
    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->onVideoResume()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-static {}, Lcom/join/android/app/component/video/i;->d()V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/join/android/app/component/video/c;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_1
    return-void
.end method

.method public K(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public L(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/c;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public N()V
    .locals 0

    .line 1
    return-void
.end method

.method public O(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->releaseVideos()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/join/android/app/component/video/c;->b:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/component/video/c;->j(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public P(ILandroid/widget/FrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "videoContner"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object p2, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 35
    .line 36
    const/4 p2, 0x4

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public Q(ILcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "bannerView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/c;->M(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public varargs d(ILcom/join/android/app/component/video/c$l;[Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "videoData",
            "bools"
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
    const-string v1, "addVideoData: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "  "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/android/app/component/video/c$l;->f()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "   "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    array-length v0, p3

    .line 39
    if-lez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    aget-boolean p3, p3, v1

    .line 45
    .line 46
    invoke-virtual {v0, p3}, Lcom/join/android/app/component/video/StandardVideoView;->setShowCoverWhenPause(Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public e(Landroid/widget/AbsListView;III)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    iput p2, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-wide v3, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 19
    .line 20
    sub-long v3, v1, v3

    .line 21
    .line 22
    const-wide/16 v5, 0xbb8

    .line 23
    .line 24
    cmp-long p3, v3, v5

    .line 25
    .line 26
    if-lez p3, :cond_1

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 29
    .line 30
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 31
    .line 32
    iput p3, p0, Lcom/join/android/app/component/video/c;->o:I

    .line 33
    .line 34
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    const/4 v1, 0x2

    .line 43
    if-eq p3, v1, :cond_1

    .line 44
    .line 45
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    const/4 v1, 0x6

    .line 52
    if-eq p3, v1, :cond_1

    .line 53
    .line 54
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/16 p3, -0x16

    .line 70
    .line 71
    if-eq p1, p3, :cond_4

    .line 72
    .line 73
    if-gt p1, p4, :cond_4

    .line 74
    .line 75
    iget p3, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 76
    .line 77
    if-ne p3, p1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    if-lt p1, p2, :cond_3

    .line 81
    .line 82
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 83
    .line 84
    add-int/2addr p3, p2

    .line 85
    if-le p1, p3, :cond_5

    .line 86
    .line 87
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string p3, "autoPlayScroll  -->onPauseAll "

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iput p1, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_5

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_1
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    :try_start_0
    iget v1, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 4
    .line 5
    if-ne v1, p2, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    if-ne v1, p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget-wide v3, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 21
    .line 22
    sub-long v3, v1, v3

    .line 23
    .line 24
    const-wide/16 v5, 0xbb8

    .line 25
    .line 26
    cmp-long v7, v3, v5

    .line 27
    .line 28
    if-lez v7, :cond_1

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 31
    .line 32
    iget v1, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 33
    .line 34
    iput v1, p0, Lcom/join/android/app/component/video/c;->o:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x2

    .line 45
    if-eq v1, v2, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x6

    .line 54
    if-eq v1, v2, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput p2, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 68
    .line 69
    iput p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 70
    .line 71
    iput p4, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/16 p3, -0x16

    .line 78
    .line 79
    if-eq p1, p3, :cond_4

    .line 80
    .line 81
    if-gt p1, p4, :cond_4

    .line 82
    .line 83
    iget p3, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 84
    .line 85
    if-ne p3, p1, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    if-lt p1, p2, :cond_3

    .line 89
    .line 90
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 91
    .line 92
    add-int/2addr p3, p2

    .line 93
    if-le p1, p3, :cond_5

    .line 94
    .line 95
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string p3, "autoPlayScroll  -->onPauseAll "

    .line 101
    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 114
    .line 115
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iput p1, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 127
    .line 128
    if-eqz p1, :cond_5

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_1
    return-void
.end method

.method public g(Lit/sephiroth/android/library/widget/AbsHListView;III)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    iput p2, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eq p3, v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iget-wide v4, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 30
    .line 31
    sub-long v4, v2, v4

    .line 32
    .line 33
    const-wide/16 v6, 0xbb8

    .line 34
    .line 35
    cmp-long p3, v4, v6

    .line 36
    .line 37
    if-lez p3, :cond_1

    .line 38
    .line 39
    iput-wide v2, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 40
    .line 41
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 42
    .line 43
    iput p3, p0, Lcom/join/android/app/component/video/c;->o:I

    .line 44
    .line 45
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eq p3, v1, :cond_1

    .line 54
    .line 55
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    const/4 v1, 0x6

    .line 62
    if-eq p3, v1, :cond_1

    .line 63
    .line 64
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 65
    .line 66
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-nez p3, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->o(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/16 p3, -0x16

    .line 80
    .line 81
    if-eq p1, p3, :cond_4

    .line 82
    .line 83
    if-gt p1, p4, :cond_4

    .line 84
    .line 85
    iget p3, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 86
    .line 87
    if-ne p3, p1, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    if-lt p1, p2, :cond_3

    .line 91
    .line 92
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 93
    .line 94
    add-int/2addr p3, p2

    .line 95
    if-le p1, p3, :cond_5

    .line 96
    .line 97
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string p3, "autoPlayScroll  -->onPauseAll "

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 108
    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 116
    .line 117
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iput p1, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_5

    .line 137
    .line 138
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_1
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    iput p2, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/android/app/component/video/c;->j:I

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-wide v3, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 19
    .line 20
    sub-long v3, v1, v3

    .line 21
    .line 22
    const-wide/16 v5, 0xbb8

    .line 23
    .line 24
    cmp-long p3, v3, v5

    .line 25
    .line 26
    if-lez p3, :cond_1

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/join/android/app/component/video/c;->p:J

    .line 29
    .line 30
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 31
    .line 32
    iput p3, p0, Lcom/join/android/app/component/video/c;->o:I

    .line 33
    .line 34
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    const/4 v1, 0x2

    .line 43
    if-eq p3, v1, :cond_1

    .line 44
    .line 45
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    const/4 v1, 0x6

    .line 52
    if-eq p3, v1, :cond_1

    .line 53
    .line 54
    iget-object p3, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/16 p3, -0x16

    .line 70
    .line 71
    if-eq p1, p3, :cond_4

    .line 72
    .line 73
    if-gt p1, p4, :cond_4

    .line 74
    .line 75
    iget p3, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 76
    .line 77
    if-ne p3, p1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    if-lt p1, p2, :cond_3

    .line 81
    .line 82
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 83
    .line 84
    add-int/2addr p3, p2

    .line 85
    if-le p1, p3, :cond_5

    .line 86
    .line 87
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string p3, "autoPlayScroll  -->onPauseAll "

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget p3, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget p3, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iput p1, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_5

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_1
    return-void
.end method

.method public i(Landroid/widget/AbsListView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
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
    const-string v1, "autoPlayScrollStateChanged= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, -0x1

    .line 24
    iput p2, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
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
    const-string v1, "autoPlayScrollStateChanged= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, -0x1

    .line 24
    iput p2, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public k(Lit/sephiroth/android/library/widget/AbsHListView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
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
    const-string v1, "autoPlayScrollStateChanged= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, -0x1

    .line 24
    iput p2, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->o(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public l(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
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
    const-string v1, "autoPlayScrollStateChanged= "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/join/android/app/component/video/c;->u:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, -0x1

    .line 24
    iput p2, p0, Lcom/join/android/app/component/video/c;->g:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/c;->p(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public declared-synchronized m(Landroid/widget/AbsListView;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->k:Landroid/widget/AbsListView;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-le v0, v1, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/join/android/app/component/video/c;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x0

    .line 36
    move-object v3, v0

    .line 37
    move-object v5, v3

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    :try_start_1
    iget v6, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 41
    .line 42
    if-ge v2, v6, :cond_11

    .line 43
    .line 44
    if-eqz p1, :cond_10

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_10

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const v7, 0x7f0a1b63

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    if-eqz v6, :cond_10

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Landroid/widget/FrameLayout;

    .line 74
    .line 75
    iput-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const v7, 0x7f0a015d

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 105
    .line 106
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const v7, 0x7f0a0f64

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    if-eqz v6, :cond_3

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 134
    .line 135
    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    .line 136
    .line 137
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 141
    .line 142
    invoke-virtual {v7, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 143
    .line 144
    .line 145
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 146
    .line 147
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v3, :cond_10

    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    if-nez v8, :cond_4

    .line 158
    .line 159
    goto/16 :goto_2

    .line 160
    .line 161
    :cond_4
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 162
    .line 163
    const/4 v9, 0x2

    .line 164
    const/4 v10, 0x1

    .line 165
    if-nez v8, :cond_d

    .line 166
    .line 167
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    if-ne v6, v7, :cond_d

    .line 170
    .line 171
    if-nez v4, :cond_d

    .line 172
    .line 173
    const-string v4, "MyListViewVideoHelper"

    .line 174
    .line 175
    const-string v6, "2222222 "

    .line 176
    .line 177
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-ne v4, v6, :cond_6

    .line 195
    .line 196
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 197
    .line 198
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    const/4 v6, 0x6

    .line 203
    if-eq v4, v6, :cond_6

    .line 204
    .line 205
    const-string v4, "MyListViewVideoHelper"

    .line 206
    .line 207
    const-string v6, "333333 "

    .line 208
    .line 209
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 213
    .line 214
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    const/4 v6, 0x5

    .line 219
    if-ne v4, v6, :cond_5

    .line 220
    .line 221
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 222
    .line 223
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 224
    .line 225
    .line 226
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 227
    .line 228
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 229
    .line 230
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 231
    .line 232
    .line 233
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 234
    .line 235
    invoke-virtual {v4, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 236
    .line 237
    .line 238
    const-string v4, "MyListViewVideoHelper"

    .line 239
    .line 240
    const-string v6, "444444 "

    .line 241
    .line 242
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_5
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 248
    .line 249
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    if-nez v4, :cond_c

    .line 254
    .line 255
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 258
    .line 259
    .line 260
    const-string v4, "MyListViewVideoHelper"

    .line 261
    .line 262
    const-string v6, "55555555 "

    .line 263
    .line 264
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 268
    .line 269
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 270
    .line 271
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_6
    const-string v4, "MyListViewVideoHelper"

    .line 277
    .line 278
    const-string v6, "66666666 "

    .line 279
    .line 280
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    check-cast v4, Lcom/join/android/app/component/video/c$l;

    .line 294
    .line 295
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 296
    .line 297
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    check-cast v6, Landroid/view/ViewGroup;

    .line 302
    .line 303
    if-eqz v6, :cond_8

    .line 304
    .line 305
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 306
    .line 307
    .line 308
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 309
    .line 310
    if-eqz v6, :cond_7

    .line 311
    .line 312
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    :cond_7
    const-string v6, "MyListViewVideoHelper"

    .line 316
    .line 317
    const-string v7, "7777777 "

    .line 318
    .line 319
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :cond_8
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 323
    .line 324
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v6, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 330
    .line 331
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    check-cast v7, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    invoke-virtual {v6, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 342
    .line 343
    .line 344
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 345
    .line 346
    invoke-virtual {v4}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    invoke-virtual {v6, v7}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 354
    .line 355
    invoke-virtual {v4}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    sget v8, Lcom/join/android/app/component/video/StandardVideoView;->D:I

    .line 360
    .line 361
    new-array v9, v9, [Ljava/lang/Object;

    .line 362
    .line 363
    const-string v11, ""

    .line 364
    .line 365
    aput-object v11, v9, v1

    .line 366
    .line 367
    invoke-virtual {v4}, Lcom/join/android/app/component/video/c$l;->a()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    aput-object v4, v9, v10

    .line 372
    .line 373
    invoke-virtual {v6, v7, v8, v9}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 377
    .line 378
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 379
    .line 380
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    check-cast v4, Ljava/lang/Integer;

    .line 388
    .line 389
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    invoke-virtual {p0, v4}, Lcom/join/android/app/component/video/c;->L(I)V

    .line 394
    .line 395
    .line 396
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 397
    .line 398
    if-eqz v4, :cond_a

    .line 399
    .line 400
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    if-eqz v4, :cond_9

    .line 405
    .line 406
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 407
    .line 408
    .line 409
    :cond_9
    const-string v4, "MyListViewVideoHelper"

    .line 410
    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    const-string v7, "lastBannerView tag ="

    .line 417
    .line 418
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 422
    .line 423
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 438
    .line 439
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 440
    .line 441
    .line 442
    :cond_a
    iput-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 443
    .line 444
    const-string v4, "MyListViewVideoHelper"

    .line 445
    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    const-string v7, "lastBannerViewNew tag ="

    .line 452
    .line 453
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 457
    .line 458
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iput-object v5, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 473
    .line 474
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 475
    .line 476
    new-instance v6, Lcom/join/android/app/component/video/c$e;

    .line 477
    .line 478
    invoke-direct {v6, p0}, Lcom/join/android/app/component/video/c$e;-><init>(Lcom/join/android/app/component/video/c;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4, v6}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 482
    .line 483
    .line 484
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 485
    .line 486
    new-instance v6, Lcom/join/android/app/component/video/c$f;

    .line 487
    .line 488
    invoke-direct {v6, p0}, Lcom/join/android/app/component/video/c$f;-><init>(Lcom/join/android/app/component/video/c;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4, v6}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 492
    .line 493
    .line 494
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 495
    .line 496
    invoke-virtual {v4}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    if-eqz v4, :cond_b

    .line 501
    .line 502
    const-string v4, "MyListViewVideoHelper"

    .line 503
    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    const-string v7, "888888888 "

    .line 510
    .line 511
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v7

    .line 518
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 529
    .line 530
    invoke-virtual {v4}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 531
    .line 532
    .line 533
    :cond_b
    const-string v4, "MyListViewVideoHelper"

    .line 534
    .line 535
    const-string v6, "startplaylogic "

    .line 536
    .line 537
    invoke-static {v4, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    :cond_c
    :goto_1
    const/4 v4, 0x1

    .line 541
    goto :goto_2

    .line 542
    :cond_d
    const-string v6, "MyListViewVideoHelper"

    .line 543
    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    const-string v8, "out to play Are   standardVideoView status  "

    .line 550
    .line 551
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 555
    .line 556
    invoke-virtual {v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 557
    .line 558
    .line 559
    move-result v8

    .line 560
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v8, "  "

    .line 564
    .line 565
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v8

    .line 572
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    check-cast v6, Ljava/lang/Integer;

    .line 587
    .line 588
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 593
    .line 594
    .line 595
    move-result v7

    .line 596
    if-ne v6, v7, :cond_f

    .line 597
    .line 598
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 599
    .line 600
    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 601
    .line 602
    .line 603
    move-result v6

    .line 604
    if-eq v6, v9, :cond_e

    .line 605
    .line 606
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 607
    .line 608
    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    if-ne v6, v10, :cond_f

    .line 613
    .line 614
    :cond_e
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 615
    .line 616
    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 617
    .line 618
    .line 619
    const-string v6, "MyListViewVideoHelper"

    .line 620
    .line 621
    const-string v7, "out to play Are   onVideoPause  "

    .line 622
    .line 623
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    :cond_f
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 627
    .line 628
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    .line 633
    .line 634
    const-string v6, "MyListViewVideoHelper"

    .line 635
    .line 636
    const-string v7, "out to play Are "

    .line 637
    .line 638
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    .line 640
    .line 641
    :cond_10
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 642
    .line 643
    goto/16 :goto_0

    .line 644
    .line 645
    :catch_0
    move-exception p1

    .line 646
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    .line 648
    .line 649
    :cond_11
    monitor-exit p0

    .line 650
    return-void

    .line 651
    :catchall_0
    move-exception p1

    .line 652
    monitor-exit p0

    .line 653
    throw p1
.end method

.method public declared-synchronized n(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->m:Landroidx/recyclerview/widget/RecyclerView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    :try_start_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    const/4 v1, 0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    move-object v5, v0

    .line 26
    move-object v6, v5

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    :goto_0
    iget v7, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 30
    .line 31
    if-ge v3, v7, :cond_f

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    if-eqz v7, :cond_e

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const v8, 0x7f0a1b63

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-eqz v7, :cond_e

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    check-cast v7, Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iput-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    if-eqz v7, :cond_0

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    const v8, 0x7f0a015d

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    if-eqz v7, :cond_0

    .line 82
    .line 83
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 92
    .line 93
    :cond_0
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    if-eqz v7, :cond_1

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    const v8, 0x7f0a0f64

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    if-eqz v7, :cond_1

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 121
    .line 122
    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    .line 123
    .line 124
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 128
    .line 129
    invoke-virtual {v8, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 130
    .line 131
    .line 132
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 133
    .line 134
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 139
    .line 140
    const/4 v10, 0x2

    .line 141
    if-nez v9, :cond_b

    .line 142
    .line 143
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 144
    .line 145
    if-ne v7, v8, :cond_b

    .line 146
    .line 147
    if-nez v4, :cond_b

    .line 148
    .line 149
    const-string v7, "MyListViewVideoHelper"

    .line 150
    .line 151
    const-string v8, "2222222 "

    .line 152
    .line 153
    invoke-static {v7, v8}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    check-cast v7, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-ne v7, v8, :cond_3

    .line 171
    .line 172
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 173
    .line 174
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    const/4 v8, 0x6

    .line 179
    if-eq v7, v8, :cond_3

    .line 180
    .line 181
    const-string v4, "MyListViewVideoHelper"

    .line 182
    .line 183
    const-string v7, "333333 "

    .line 184
    .line 185
    invoke-static {v4, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 189
    .line 190
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    const/4 v7, 0x5

    .line 195
    if-ne v4, v7, :cond_2

    .line 196
    .line 197
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 198
    .line 199
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 200
    .line 201
    .line 202
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 203
    .line 204
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 205
    .line 206
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 210
    .line 211
    invoke-virtual {v4, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 212
    .line 213
    .line 214
    const-string v4, "MyListViewVideoHelper"

    .line 215
    .line 216
    const-string v7, "444444 "

    .line 217
    .line 218
    invoke-static {v4, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_2
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 224
    .line 225
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    if-nez v4, :cond_a

    .line 230
    .line 231
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 232
    .line 233
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 234
    .line 235
    .line 236
    const-string v4, "MyListViewVideoHelper"

    .line 237
    .line 238
    const-string v7, "55555555 "

    .line 239
    .line 240
    invoke-static {v4, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 244
    .line 245
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 246
    .line 247
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_3
    const-string v7, "MyListViewVideoHelper"

    .line 253
    .line 254
    const-string v8, "66666666 "

    .line 255
    .line 256
    invoke-static {v7, v8}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 260
    .line 261
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    check-cast v7, Lcom/join/android/app/component/video/c$l;

    .line 270
    .line 271
    if-eqz v7, :cond_e

    .line 272
    .line 273
    invoke-virtual {v7}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    if-nez v8, :cond_4

    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :cond_4
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 282
    .line 283
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    check-cast v4, Landroid/view/ViewGroup;

    .line 288
    .line 289
    if-eqz v4, :cond_6

    .line 290
    .line 291
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 292
    .line 293
    .line 294
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 295
    .line 296
    if-eqz v4, :cond_5

    .line 297
    .line 298
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    :cond_5
    const-string v4, "MyListViewVideoHelper"

    .line 302
    .line 303
    const-string v8, "7777777 "

    .line 304
    .line 305
    invoke-static {v4, v8}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_6
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 309
    .line 310
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v4, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 316
    .line 317
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    check-cast v8, Ljava/lang/Integer;

    .line 322
    .line 323
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    invoke-virtual {v4, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 328
    .line 329
    .line 330
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 331
    .line 332
    invoke-virtual {v7}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-virtual {v4, v8}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 340
    .line 341
    invoke-virtual {v7}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    sget v9, Lcom/join/android/app/component/video/StandardVideoView;->D:I

    .line 346
    .line 347
    new-array v10, v10, [Ljava/lang/Object;

    .line 348
    .line 349
    const-string v11, ""

    .line 350
    .line 351
    aput-object v11, v10, v2

    .line 352
    .line 353
    invoke-virtual {v7}, Lcom/join/android/app/component/video/c$l;->a()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    aput-object v7, v10, v1

    .line 358
    .line 359
    invoke-virtual {v4, v8, v9, v10}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 363
    .line 364
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 365
    .line 366
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    check-cast v4, Ljava/lang/Integer;

    .line 374
    .line 375
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    invoke-virtual {p0, v4}, Lcom/join/android/app/component/video/c;->L(I)V

    .line 380
    .line 381
    .line 382
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 383
    .line 384
    if-eqz v4, :cond_8

    .line 385
    .line 386
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    if-eqz v4, :cond_7

    .line 391
    .line 392
    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 393
    .line 394
    .line 395
    :cond_7
    const-string v4, "MyListViewVideoHelper"

    .line 396
    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string v8, "lastBannerView tag ="

    .line 403
    .line 404
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 408
    .line 409
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    invoke-static {v4, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 424
    .line 425
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 426
    .line 427
    .line 428
    :cond_8
    iput-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 429
    .line 430
    const-string v4, "MyListViewVideoHelper"

    .line 431
    .line 432
    new-instance v7, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    const-string v8, "lastBannerViewNew tag ="

    .line 438
    .line 439
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 443
    .line 444
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v8

    .line 448
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    invoke-static {v4, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iput-object v6, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 459
    .line 460
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 461
    .line 462
    new-instance v7, Lcom/join/android/app/component/video/c$i;

    .line 463
    .line 464
    invoke-direct {v7, p0}, Lcom/join/android/app/component/video/c$i;-><init>(Lcom/join/android/app/component/video/c;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4, v7}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 468
    .line 469
    .line 470
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 471
    .line 472
    new-instance v7, Lcom/join/android/app/component/video/c$j;

    .line 473
    .line 474
    invoke-direct {v7, p0}, Lcom/join/android/app/component/video/c$j;-><init>(Lcom/join/android/app/component/video/c;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v7}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 478
    .line 479
    .line 480
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 481
    .line 482
    invoke-virtual {v4}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    if-eqz v4, :cond_9

    .line 487
    .line 488
    const-string v4, "MyListViewVideoHelper"

    .line 489
    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .line 494
    .line 495
    const-string v8, "888888888 "

    .line 496
    .line 497
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    invoke-static {v4, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget-object v4, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 515
    .line 516
    invoke-virtual {v4}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 517
    .line 518
    .line 519
    :cond_9
    const-string v4, "MyListViewVideoHelper"

    .line 520
    .line 521
    const-string v7, "startplaylogic "

    .line 522
    .line 523
    invoke-static {v4, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    :cond_a
    :goto_1
    const/4 v4, 0x1

    .line 527
    goto :goto_2

    .line 528
    :cond_b
    const-string v7, "MyListViewVideoHelper"

    .line 529
    .line 530
    new-instance v8, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    const-string v9, "out to play Are   standardVideoView status  "

    .line 536
    .line 537
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    iget-object v9, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 541
    .line 542
    invoke-virtual {v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 543
    .line 544
    .line 545
    move-result v9

    .line 546
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const-string v9, "  "

    .line 550
    .line 551
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v9

    .line 558
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v8

    .line 565
    invoke-static {v7, v8}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    check-cast v7, Ljava/lang/Integer;

    .line 573
    .line 574
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    if-ne v7, v8, :cond_d

    .line 583
    .line 584
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 585
    .line 586
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 587
    .line 588
    .line 589
    move-result v7

    .line 590
    if-eq v7, v10, :cond_c

    .line 591
    .line 592
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 593
    .line 594
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 595
    .line 596
    .line 597
    move-result v7

    .line 598
    if-ne v7, v1, :cond_d

    .line 599
    .line 600
    :cond_c
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 601
    .line 602
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 603
    .line 604
    .line 605
    const-string v7, "MyListViewVideoHelper"

    .line 606
    .line 607
    const-string v8, "out to play Are   onVideoPause  "

    .line 608
    .line 609
    invoke-static {v7, v8}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    :cond_d
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 613
    .line 614
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    const-string v7, "MyListViewVideoHelper"

    .line 621
    .line 622
    const-string v8, "out to play Are "

    .line 623
    .line 624
    invoke-static {v7, v8}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    .line 626
    .line 627
    :cond_e
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :catch_0
    move-exception p1

    .line 632
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    .line 634
    .line 635
    :cond_f
    monitor-exit p0

    .line 636
    return-void

    .line 637
    :catchall_0
    move-exception p1

    .line 638
    monitor-exit p0

    .line 639
    throw p1
.end method

.method public declared-synchronized o(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->l:Lit/sephiroth/android/library/widget/AbsHListView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    :try_start_1
    iget v0, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v3, v1

    .line 9
    move-object v4, v3

    .line 10
    const/4 v5, 0x0

    .line 11
    :goto_0
    iget v6, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 12
    .line 13
    if-ge v0, v6, :cond_13

    .line 14
    .line 15
    if-eqz p1, :cond_12

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    if-eqz v6, :cond_12

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const v7, 0x7f0a1b63

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-eqz v6, :cond_12

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    iput-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const v7, 0x7f0a015d

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 76
    .line 77
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const v7, 0x7f0a0f64

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 105
    .line 106
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 112
    .line 113
    invoke-virtual {v7, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 114
    .line 115
    .line 116
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 117
    .line 118
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    iput-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 123
    .line 124
    const-string v8, "MyListViewVideoHelper"

    .line 125
    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v10, "lastBannerViewNew tag ="

    .line 132
    .line 133
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v10, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 137
    .line 138
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-static {v8, v9}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iput-object v4, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 153
    .line 154
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 155
    .line 156
    if-eqz v8, :cond_2

    .line 157
    .line 158
    new-instance v9, Lcom/join/android/app/component/video/c$g;

    .line 159
    .line 160
    invoke-direct {v9, p0}, Lcom/join/android/app/component/video/c$g;-><init>(Lcom/join/android/app/component/video/c;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v9}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 164
    .line 165
    .line 166
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 167
    .line 168
    new-instance v9, Lcom/join/android/app/component/video/c$h;

    .line 169
    .line 170
    invoke-direct {v9, p0}, Lcom/join/android/app/component/video/c$h;-><init>(Lcom/join/android/app/component/video/c;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v9}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 174
    .line 175
    .line 176
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v9, "MyListViewVideoHelper"

    .line 182
    .line 183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v9, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v10, "1111111111111    "

    .line 201
    .line 202
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v10, "rect.left:"

    .line 213
    .line 214
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget v10, v6, Landroid/graphics/Rect;->left:I

    .line 218
    .line 219
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v10, "rect.right:"

    .line 223
    .line 224
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget v10, v6, Landroid/graphics/Rect;->right:I

    .line 228
    .line 229
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v10, "videoHeight:"

    .line 233
    .line 234
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-static {v8, v9}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 248
    .line 249
    const/4 v9, 0x2

    .line 250
    const/4 v10, 0x1

    .line 251
    if-nez v8, :cond_f

    .line 252
    .line 253
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 254
    .line 255
    if-ne v6, v7, :cond_f

    .line 256
    .line 257
    if-nez v5, :cond_f

    .line 258
    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v6, "MyListViewVideoHelper"

    .line 265
    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    const-string v6, "2222222 "

    .line 279
    .line 280
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    if-eqz v5, :cond_6

    .line 288
    .line 289
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-ne v5, v6, :cond_6

    .line 304
    .line 305
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 306
    .line 307
    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    const/4 v6, 0x6

    .line 312
    if-eq v5, v6, :cond_6

    .line 313
    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v6, "MyListViewVideoHelper"

    .line 320
    .line 321
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    const-string v6, "333333 "

    .line 334
    .line 335
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 339
    .line 340
    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    const/4 v6, 0x5

    .line 345
    if-ne v5, v6, :cond_4

    .line 346
    .line 347
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 348
    .line 349
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    if-eqz v5, :cond_3

    .line 354
    .line 355
    instance-of v5, v5, Landroid/view/ViewGroup;

    .line 356
    .line 357
    if-eqz v5, :cond_3

    .line 358
    .line 359
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 360
    .line 361
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    check-cast v5, Landroid/view/ViewGroup;

    .line 366
    .line 367
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 368
    .line 369
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 370
    .line 371
    .line 372
    :cond_3
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 373
    .line 374
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 375
    .line 376
    .line 377
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 378
    .line 379
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 380
    .line 381
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    .line 383
    .line 384
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 385
    .line 386
    invoke-virtual {v5, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 387
    .line 388
    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v6, "MyListViewVideoHelper"

    .line 395
    .line 396
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    const-string v6, "444444 "

    .line 409
    .line 410
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :cond_4
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 416
    .line 417
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    if-nez v5, :cond_e

    .line 422
    .line 423
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 424
    .line 425
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 426
    .line 427
    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v6, "MyListViewVideoHelper"

    .line 434
    .line 435
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    const-string v6, "55555555 "

    .line 448
    .line 449
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 453
    .line 454
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    check-cast v5, Landroid/view/ViewGroup;

    .line 459
    .line 460
    if-eqz v5, :cond_5

    .line 461
    .line 462
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 463
    .line 464
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 465
    .line 466
    .line 467
    :cond_5
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 468
    .line 469
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 470
    .line 471
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_1

    .line 475
    .line 476
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .line 480
    .line 481
    const-string v6, "MyListViewVideoHelper"

    .line 482
    .line 483
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    const-string v6, "66666666 "

    .line 496
    .line 497
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 501
    .line 502
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    check-cast v5, Lcom/join/android/app/component/video/c$l;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    .line 512
    if-nez v5, :cond_7

    .line 513
    .line 514
    monitor-exit p0

    .line 515
    return-void

    .line 516
    :cond_7
    :try_start_2
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 517
    .line 518
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 519
    .line 520
    .line 521
    move-result-object v6

    .line 522
    check-cast v6, Landroid/view/ViewGroup;

    .line 523
    .line 524
    if-eqz v6, :cond_9

    .line 525
    .line 526
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 527
    .line 528
    .line 529
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 530
    .line 531
    if-eqz v6, :cond_8

    .line 532
    .line 533
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    .line 541
    const-string v7, "MyListViewVideoHelper"

    .line 542
    .line 543
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    const-string v7, "7777777 "

    .line 556
    .line 557
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    :cond_9
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 561
    .line 562
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v6, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 568
    .line 569
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v7

    .line 573
    check-cast v7, Ljava/lang/Integer;

    .line 574
    .line 575
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 576
    .line 577
    .line 578
    move-result v7

    .line 579
    invoke-virtual {v6, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 580
    .line 581
    .line 582
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 583
    .line 584
    invoke-virtual {v5}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v7

    .line 588
    invoke-virtual {v6, v7}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 592
    .line 593
    invoke-virtual {v5}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    sget v8, Lcom/join/android/app/component/video/StandardVideoView;->D:I

    .line 598
    .line 599
    new-array v9, v9, [Ljava/lang/Object;

    .line 600
    .line 601
    const-string v11, ""

    .line 602
    .line 603
    aput-object v11, v9, v2

    .line 604
    .line 605
    invoke-virtual {v5}, Lcom/join/android/app/component/video/c$l;->a()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    aput-object v5, v9, v10

    .line 610
    .line 611
    invoke-virtual {v6, v7, v8, v9}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 615
    .line 616
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    if-eqz v5, :cond_a

    .line 621
    .line 622
    instance-of v5, v5, Landroid/view/ViewGroup;

    .line 623
    .line 624
    if-eqz v5, :cond_a

    .line 625
    .line 626
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 627
    .line 628
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    check-cast v5, Landroid/view/ViewGroup;

    .line 633
    .line 634
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 635
    .line 636
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 637
    .line 638
    .line 639
    :cond_a
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 640
    .line 641
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 642
    .line 643
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    check-cast v5, Ljava/lang/Integer;

    .line 651
    .line 652
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 653
    .line 654
    .line 655
    move-result v5

    .line 656
    invoke-virtual {p0, v5}, Lcom/join/android/app/component/video/c;->L(I)V

    .line 657
    .line 658
    .line 659
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 660
    .line 661
    if-eqz v5, :cond_c

    .line 662
    .line 663
    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    if-eqz v5, :cond_b

    .line 668
    .line 669
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 670
    .line 671
    .line 672
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .line 676
    .line 677
    const-string v6, "MyListViewVideoHelper"

    .line 678
    .line 679
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 683
    .line 684
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v5

    .line 691
    new-instance v6, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .line 695
    .line 696
    const-string v7, "lastBannerView tag ="

    .line 697
    .line 698
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 702
    .line 703
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v7

    .line 707
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 718
    .line 719
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 720
    .line 721
    .line 722
    :cond_c
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 723
    .line 724
    invoke-virtual {v5}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 725
    .line 726
    .line 727
    move-result v5

    .line 728
    if-eqz v5, :cond_d

    .line 729
    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .line 734
    .line 735
    const-string v6, "MyListViewVideoHelper"

    .line 736
    .line 737
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 741
    .line 742
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v5

    .line 749
    new-instance v6, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .line 753
    .line 754
    const-string v7, "888888888 "

    .line 755
    .line 756
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v7

    .line 763
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 774
    .line 775
    invoke-virtual {v5}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 776
    .line 777
    .line 778
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 779
    .line 780
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    .line 782
    .line 783
    const-string v6, "MyListViewVideoHelper"

    .line 784
    .line 785
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 789
    .line 790
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    const-string v6, "startplaylogic "

    .line 798
    .line 799
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    :cond_e
    :goto_1
    const/4 v5, 0x1

    .line 803
    goto/16 :goto_2

    .line 804
    .line 805
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .line 809
    .line 810
    const-string v6, "MyListViewVideoHelper"

    .line 811
    .line 812
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 816
    .line 817
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v5

    .line 824
    new-instance v6, Ljava/lang/StringBuilder;

    .line 825
    .line 826
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 827
    .line 828
    .line 829
    const-string v7, "out to play Are   standardVideoView status  "

    .line 830
    .line 831
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 835
    .line 836
    invoke-virtual {v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 837
    .line 838
    .line 839
    move-result v7

    .line 840
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    const-string v7, "  "

    .line 844
    .line 845
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v7

    .line 852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v6

    .line 859
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v5

    .line 866
    if-eqz v5, :cond_11

    .line 867
    .line 868
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    check-cast v5, Ljava/lang/Integer;

    .line 873
    .line 874
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 875
    .line 876
    .line 877
    move-result v5

    .line 878
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 879
    .line 880
    .line 881
    move-result v6

    .line 882
    if-ne v5, v6, :cond_11

    .line 883
    .line 884
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 885
    .line 886
    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 887
    .line 888
    .line 889
    move-result v5

    .line 890
    if-eq v5, v9, :cond_10

    .line 891
    .line 892
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 893
    .line 894
    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 895
    .line 896
    .line 897
    move-result v5

    .line 898
    if-ne v5, v10, :cond_11

    .line 899
    .line 900
    :cond_10
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 901
    .line 902
    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 903
    .line 904
    .line 905
    new-instance v5, Ljava/lang/StringBuilder;

    .line 906
    .line 907
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    .line 909
    .line 910
    const-string v6, "MyListViewVideoHelper"

    .line 911
    .line 912
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 916
    .line 917
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v5

    .line 924
    const-string v6, "out to play Are   onVideoPause  "

    .line 925
    .line 926
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    :cond_11
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 930
    .line 931
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 935
    .line 936
    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    .line 938
    .line 939
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    .line 941
    .line 942
    const-string v6, "MyListViewVideoHelper"

    .line 943
    .line 944
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 948
    .line 949
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v5

    .line 956
    const-string v6, "out to play Are "

    .line 957
    .line 958
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 959
    .line 960
    .line 961
    const/4 v5, 0x0

    .line 962
    :cond_12
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 963
    .line 964
    goto/16 :goto_0

    .line 965
    .line 966
    :catch_0
    move-exception p1

    .line 967
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 968
    .line 969
    .line 970
    :cond_13
    monitor-exit p0

    .line 971
    return-void

    .line 972
    :catchall_0
    move-exception p1

    .line 973
    monitor-exit p0

    .line 974
    throw p1
.end method

.method public declared-synchronized p(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/join/android/app/component/video/c;->m:Landroidx/recyclerview/widget/RecyclerView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    :try_start_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 20
    .line 21
    iget v0, p0, Lcom/join/android/app/component/video/c;->h:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    move-object v3, v1

    .line 26
    move-object v4, v3

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    iget v6, p0, Lcom/join/android/app/component/video/c;->i:I

    .line 29
    .line 30
    if-ge v0, v6, :cond_13

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-eqz v6, :cond_12

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const v7, 0x7f0a1b63

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_12

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Landroid/widget/FrameLayout;

    .line 60
    .line 61
    iput-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-eqz v6, :cond_0

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const v7, 0x7f0a015d

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-eqz v6, :cond_0

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-eqz v6, :cond_1

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    const v7, 0x7f0a0f64

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-eqz v6, :cond_1

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 120
    .line 121
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    .line 122
    .line 123
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 127
    .line 128
    invoke-virtual {v7, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 129
    .line 130
    .line 131
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 132
    .line 133
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    iput-object v3, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 138
    .line 139
    iput-object v4, p0, Lcom/join/android/app/component/video/c;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 140
    .line 141
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 142
    .line 143
    if-eqz v8, :cond_2

    .line 144
    .line 145
    new-instance v9, Lcom/join/android/app/component/video/c$k;

    .line 146
    .line 147
    invoke-direct {v9, p0}, Lcom/join/android/app/component/video/c$k;-><init>(Lcom/join/android/app/component/video/c;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v9}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 151
    .line 152
    .line 153
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 154
    .line 155
    new-instance v9, Lcom/join/android/app/component/video/c$a;

    .line 156
    .line 157
    invoke-direct {v9, p0}, Lcom/join/android/app/component/video/c$a;-><init>(Lcom/join/android/app/component/video/c;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v9}, Lcom/join/android/app/component/video/StandardVideoView;->setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V

    .line 161
    .line 162
    .line 163
    :cond_2
    const-string v8, "MyListViewVideoHelper"

    .line 164
    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v10, "1111111111111    "

    .line 171
    .line 172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-static {v8, v9}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 190
    .line 191
    const/4 v9, 0x2

    .line 192
    const/4 v10, 0x1

    .line 193
    if-nez v8, :cond_e

    .line 194
    .line 195
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 196
    .line 197
    if-ne v6, v7, :cond_e

    .line 198
    .line 199
    if-nez v5, :cond_e

    .line 200
    .line 201
    const-string v6, "MyListViewVideoHelper"

    .line 202
    .line 203
    const-string v7, "2222222 "

    .line 204
    .line 205
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-ne v6, v7, :cond_6

    .line 223
    .line 224
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 225
    .line 226
    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    const/4 v7, 0x6

    .line 231
    if-eq v6, v7, :cond_6

    .line 232
    .line 233
    const-string v5, "MyListViewVideoHelper"

    .line 234
    .line 235
    const-string v6, "333333 "

    .line 236
    .line 237
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 241
    .line 242
    invoke-virtual {v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    const/4 v6, 0x5

    .line 247
    if-ne v5, v6, :cond_4

    .line 248
    .line 249
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 250
    .line 251
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 252
    .line 253
    .line 254
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 255
    .line 256
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    if-eqz v5, :cond_3

    .line 261
    .line 262
    instance-of v5, v5, Landroid/view/ViewGroup;

    .line 263
    .line 264
    if-eqz v5, :cond_3

    .line 265
    .line 266
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 267
    .line 268
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    check-cast v5, Landroid/view/ViewGroup;

    .line 273
    .line 274
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 275
    .line 276
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    :cond_3
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 280
    .line 281
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 282
    .line 283
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 287
    .line 288
    invoke-virtual {v5, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 289
    .line 290
    .line 291
    const-string v5, "MyListViewVideoHelper"

    .line 292
    .line 293
    const-string v6, "444444 "

    .line 294
    .line 295
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :cond_4
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 301
    .line 302
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    if-nez v5, :cond_d

    .line 307
    .line 308
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 309
    .line 310
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 311
    .line 312
    .line 313
    const-string v5, "MyListViewVideoHelper"

    .line 314
    .line 315
    const-string v6, "55555555 "

    .line 316
    .line 317
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 321
    .line 322
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    if-eqz v5, :cond_5

    .line 327
    .line 328
    instance-of v5, v5, Landroid/view/ViewGroup;

    .line 329
    .line 330
    if-eqz v5, :cond_5

    .line 331
    .line 332
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 333
    .line 334
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    check-cast v5, Landroid/view/ViewGroup;

    .line 339
    .line 340
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 341
    .line 342
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 343
    .line 344
    .line 345
    :cond_5
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 346
    .line 347
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 348
    .line 349
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_6
    const-string v6, "MyListViewVideoHelper"

    .line 355
    .line 356
    const-string v7, "66666666 "

    .line 357
    .line 358
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 362
    .line 363
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    check-cast v6, Lcom/join/android/app/component/video/c$l;

    .line 372
    .line 373
    if-eqz v6, :cond_12

    .line 374
    .line 375
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    if-nez v7, :cond_7

    .line 380
    .line 381
    goto/16 :goto_2

    .line 382
    .line 383
    :cond_7
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 384
    .line 385
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    check-cast v5, Landroid/view/ViewGroup;

    .line 390
    .line 391
    if-eqz v5, :cond_9

    .line 392
    .line 393
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 394
    .line 395
    .line 396
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 397
    .line 398
    if-eqz v5, :cond_8

    .line 399
    .line 400
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    :cond_8
    const-string v5, "MyListViewVideoHelper"

    .line 404
    .line 405
    const-string v7, "7777777 "

    .line 406
    .line 407
    invoke-static {v5, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    :cond_9
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 411
    .line 412
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->c:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v5, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 418
    .line 419
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    check-cast v7, Ljava/lang/Integer;

    .line 424
    .line 425
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    invoke-virtual {v5, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 430
    .line 431
    .line 432
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 433
    .line 434
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v5, v7}, Lcom/join/android/app/component/video/StandardVideoView;->setSwitchUrl(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 442
    .line 443
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$l;->h()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    sget v8, Lcom/join/android/app/component/video/StandardVideoView;->D:I

    .line 448
    .line 449
    new-array v9, v9, [Ljava/lang/Object;

    .line 450
    .line 451
    const-string v11, ""

    .line 452
    .line 453
    aput-object v11, v9, v2

    .line 454
    .line 455
    invoke-virtual {v6}, Lcom/join/android/app/component/video/c$l;->a()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    aput-object v6, v9, v10

    .line 460
    .line 461
    invoke-virtual {v5, v7, v8, v9}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 465
    .line 466
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 467
    .line 468
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    check-cast v5, Ljava/lang/Integer;

    .line 476
    .line 477
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    invoke-virtual {p0, v5}, Lcom/join/android/app/component/video/c;->L(I)V

    .line 482
    .line 483
    .line 484
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 485
    .line 486
    if-eqz v5, :cond_b

    .line 487
    .line 488
    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    if-eqz v5, :cond_a

    .line 493
    .line 494
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 495
    .line 496
    .line 497
    :cond_a
    const-string v5, "MyListViewVideoHelper"

    .line 498
    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    const-string v7, "lastBannerView tag ="

    .line 505
    .line 506
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 510
    .line 511
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v7

    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v6

    .line 522
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 526
    .line 527
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 528
    .line 529
    .line 530
    :cond_b
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 531
    .line 532
    invoke-virtual {v5}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    if-eqz v5, :cond_c

    .line 537
    .line 538
    const-string v5, "MyListViewVideoHelper"

    .line 539
    .line 540
    new-instance v6, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string v7, "888888888 "

    .line 546
    .line 547
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget-object v5, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 565
    .line 566
    invoke-virtual {v5}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 567
    .line 568
    .line 569
    :cond_c
    const-string v5, "MyListViewVideoHelper"

    .line 570
    .line 571
    const-string v6, "startplaylogic "

    .line 572
    .line 573
    invoke-static {v5, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :cond_d
    :goto_1
    const/4 v5, 0x1

    .line 577
    goto/16 :goto_2

    .line 578
    .line 579
    :cond_e
    const-string v6, "MyListViewVideoHelper"

    .line 580
    .line 581
    new-instance v7, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .line 585
    .line 586
    const-string v8, "out to play Are   standardVideoView status  "

    .line 587
    .line 588
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    iget-object v8, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 592
    .line 593
    invoke-virtual {v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 594
    .line 595
    .line 596
    move-result v8

    .line 597
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v8, "  "

    .line 601
    .line 602
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v8

    .line 609
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v7

    .line 616
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    check-cast v6, Ljava/lang/Integer;

    .line 624
    .line 625
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 626
    .line 627
    .line 628
    move-result v6

    .line 629
    invoke-virtual {p0}, Lcom/join/android/app/component/video/c;->z()I

    .line 630
    .line 631
    .line 632
    move-result v7

    .line 633
    if-ne v6, v7, :cond_10

    .line 634
    .line 635
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 636
    .line 637
    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 638
    .line 639
    .line 640
    move-result v6

    .line 641
    if-eq v6, v9, :cond_f

    .line 642
    .line 643
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 644
    .line 645
    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 646
    .line 647
    .line 648
    move-result v6

    .line 649
    if-ne v6, v10, :cond_10

    .line 650
    .line 651
    :cond_f
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 652
    .line 653
    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 654
    .line 655
    .line 656
    const-string v6, "MyListViewVideoHelper"

    .line 657
    .line 658
    const-string v7, "out to play Are   onVideoPause  "

    .line 659
    .line 660
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    :cond_10
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->s:Landroid/widget/FrameLayout;

    .line 664
    .line 665
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 666
    .line 667
    .line 668
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 669
    .line 670
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 671
    .line 672
    .line 673
    move-result-object v6

    .line 674
    if-eqz v6, :cond_11

    .line 675
    .line 676
    instance-of v6, v6, Landroid/view/ViewGroup;

    .line 677
    .line 678
    if-eqz v6, :cond_11

    .line 679
    .line 680
    iget-object v6, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 681
    .line 682
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 683
    .line 684
    .line 685
    move-result-object v6

    .line 686
    check-cast v6, Landroid/view/ViewGroup;

    .line 687
    .line 688
    iget-object v7, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 689
    .line 690
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 691
    .line 692
    .line 693
    :cond_11
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 694
    .line 695
    .line 696
    const-string v6, "MyListViewVideoHelper"

    .line 697
    .line 698
    const-string v7, "out to play Are "

    .line 699
    .line 700
    invoke-static {v6, v7}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    .line 702
    .line 703
    :cond_12
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 704
    .line 705
    goto/16 :goto_0

    .line 706
    .line 707
    :catch_0
    move-exception p1

    .line 708
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 709
    .line 710
    .line 711
    :cond_13
    monitor-exit p0

    .line 712
    return-void

    .line 713
    :catchall_0
    move-exception p1

    .line 714
    monitor-exit p0

    .line 715
    throw p1
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/c;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/android/app/component/video/c;->a:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/component/video/StandardVideoView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/c;->b:I

    .line 2
    .line 3
    return v0
.end method
