.class public Lcom/byazt/an/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4f6,
        0x755
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/an/ViewPager$tt;,
        Lcom/byazt/an/ViewPager$n;,
        Lcom/byazt/an/ViewPager$a;,
        Lcom/byazt/an/ViewPager$ve;,
        Lcom/byazt/an/ViewPager$uj;,
        Lcom/byazt/an/ViewPager$x;,
        Lcom/byazt/an/ViewPager$sp;,
        Lcom/byazt/an/ViewPager$c;
    }
.end annotation


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static final n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/an/ViewPager$tt;",
            ">;"
        }
    .end annotation
.end field

.field public static final oz:Lcom/byazt/an/ViewPager$x;

.field public static final tt:[I


# instance fields
.field public aw:I

.field public b:Lcom/byazt/an/ViewPager$uj;

.field public bm:Z

.field public bx:Landroid/view/VelocityTracker;

.field public c:I

.field public cu:F

.field public d:I

.field public da:I

.field public eo:I

.field public gr:Z

.field public gt:F

.field public gu:I

.field public h:Z

.field public hd:I

.field public final i:Landroid/graphics/Rect;

.field public ic:I

.field public kk:Lcom/byazt/an/ViewPager$n;

.field public kp:Lcom/byazt/an/ViewPager$uj;

.field public l:Landroid/widget/EdgeEffect;

.field public lo:Z

.field public lr:Landroid/widget/EdgeEffect;

.field public lt:Z

.field public m:I

.field public md:Z

.field public my:I

.field public nb:F

.field public nu:Landroid/graphics/drawable/Drawable;

.field public or:F

.field public os:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public pf:I

.field public pu:Z

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public qp:F

.field public qy:I

.field public final r:Ljava/lang/Runnable;

.field public rh:I

.field public rl:F

.field public s:I

.field public sl:Landroid/os/Parcelable;

.field public final sp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/an/ViewPager$tt;",
            ">;"
        }
    .end annotation
.end field

.field public sv:I

.field public t:Ljava/lang/ClassLoader;

.field public tk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/an/ViewPager$uj;",
            ">;"
        }
    .end annotation
.end field

.field public to:I

.field public tx:I

.field public u:Landroid/widget/Scroller;

.field public uj:I

.field public v:I

.field public ve:Lcom/byazt/an/tt;

.field public final x:Lcom/byazt/an/ViewPager$tt;

.field public yp:Z

.field public yv:Z

.field public z:Lcom/byazt/an/ViewPager$a;

.field public zb:I

.field public zm:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100b3

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/byazt/an/ViewPager;->tt:[I

    .line 9
    .line 10
    new-instance v0, Lcom/byazt/an/ViewPager$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/byazt/an/ViewPager$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/byazt/an/ViewPager;->n:Ljava/util/Comparator;

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/an/ViewPager$2;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/byazt/an/ViewPager$2;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/byazt/an/ViewPager;->a:Landroid/view/animation/Interpolator;

    .line 23
    .line 24
    new-instance v0, Lcom/byazt/an/ViewPager$x;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/byazt/an/ViewPager$x;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/byazt/an/ViewPager;->oz:Lcom/byazt/an/ViewPager$x;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Lcom/byazt/an/ViewPager$tt;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/byazt/an/ViewPager$tt;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->x:Lcom/byazt/an/ViewPager$tt;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->i:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/byazt/an/ViewPager;->da:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/byazt/an/ViewPager;->sl:Landroid/os/Parcelable;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/byazt/an/ViewPager;->t:Ljava/lang/ClassLoader;

    .line 32
    .line 33
    const v0, -0x800001

    .line 34
    .line 35
    .line 36
    iput v0, p0, Lcom/byazt/an/ViewPager;->gt:F

    .line 37
    .line 38
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 39
    .line 40
    .line 41
    iput v0, p0, Lcom/byazt/an/ViewPager;->rl:F

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/byazt/an/ViewPager;->p:I

    .line 45
    .line 46
    iput p1, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->lo:Z

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/byazt/an/ViewPager;->pu:Z

    .line 52
    .line 53
    new-instance v0, Lcom/byazt/an/ViewPager$3;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/byazt/an/ViewPager$3;-><init>(Lcom/byazt/an/ViewPager;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/byazt/an/ViewPager;->r:Ljava/lang/Runnable;

    .line 59
    .line 60
    iput p1, p0, Lcom/byazt/an/ViewPager;->s:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->c()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/byazt/an/ViewPager$ve;

    .line 4
    iget-boolean v1, v1, Lcom/byazt/an/ViewPager$ve;->c:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->kp:Lcom/byazt/an/ViewPager$uj;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/an/ViewPager$uj;->u(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/an/ViewPager$uj;

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2, p1}, Lcom/byazt/an/ViewPager$uj;->u(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->b:Lcom/byazt/an/ViewPager$uj;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/an/ViewPager$uj;->u(I)V

    :cond_3
    return-void
.end method

.method private c(IFII)I
    .locals 1

    .line 264
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/byazt/an/ViewPager;->ic:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/byazt/an/ViewPager;->sv:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 265
    :cond_1
    iget p3, p0, Lcom/byazt/an/ViewPager;->uj:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 266
    :goto_1
    iget-object p2, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 267
    iget-object p2, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/an/ViewPager$tt;

    .line 268
    iget-object p3, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/an/ViewPager$tt;

    .line 269
    iget p2, p2, Lcom/byazt/an/ViewPager$tt;->tt:I

    iget p3, p3, Lcom/byazt/an/ViewPager$tt;->tt:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private c(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 301
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 302
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 303
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 304
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 305
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 306
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 307
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 308
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 309
    check-cast p2, Landroid/view/ViewGroup;

    .line 310
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 311
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 312
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 313
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 314
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private c(IIII)V
    .locals 1

    if-lez p2, :cond_1

    .line 207
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void

    .line 214
    :cond_1
    iget p2, p0, Lcom/byazt/an/ViewPager;->uj:I

    invoke-virtual {p0, p2}, Lcom/byazt/an/ViewPager;->tt(I)Lcom/byazt/an/ViewPager$tt;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 215
    iget p2, p2, Lcom/byazt/an/ViewPager$tt;->n:F

    iget p3, p0, Lcom/byazt/an/ViewPager;->rl:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 216
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 218
    invoke-direct {p0, p2}, Lcom/byazt/an/ViewPager;->c(Z)V

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private c(IZIZ)V
    .locals 5

    .line 36
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager;->tt(I)Lcom/byazt/an/ViewPager$tt;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 38
    iget v3, p0, Lcom/byazt/an/ViewPager;->gt:F

    iget v0, v0, Lcom/byazt/an/ViewPager$tt;->n:F

    iget v4, p0, Lcom/byazt/an/ViewPager;->rl:F

    .line 39
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 40
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p0, v0, v1, p3}, Lcom/byazt/an/ViewPager;->c(III)V

    if-eqz p4, :cond_3

    .line 42
    invoke-direct {p0, p1}, Lcom/byazt/an/ViewPager;->n(I)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    .line 43
    invoke-direct {p0, p1}, Lcom/byazt/an/ViewPager;->n(I)V

    .line 44
    :cond_2
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->c(Z)V

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 46
    invoke-direct {p0, v0}, Lcom/byazt/an/ViewPager;->uj(I)Z

    :cond_3
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 272
    iget v2, p0, Lcom/byazt/an/ViewPager;->pf:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/byazt/an/ViewPager;->or:F

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 275
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private c(Lcom/byazt/an/ViewPager$tt;ILcom/byazt/an/ViewPager$tt;)V
    .locals 10

    .line 160
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v0}, Lcom/byazt/an/tt;->c()I

    move-result v0

    .line 161
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    iget v2, p0, Lcom/byazt/an/ViewPager;->m:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 163
    iget v3, p3, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 164
    iget v4, p1, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ge v3, v4, :cond_3

    .line 165
    iget v4, p3, Lcom/byazt/an/ViewPager$tt;->n:F

    iget p3, p3, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    const/4 p3, 0x0

    .line 166
    :goto_1
    iget v5, p1, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 167
    iget-object v5, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    .line 168
    :goto_2
    iget v6, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 169
    iget-object v5, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    goto :goto_2

    .line 170
    :cond_1
    :goto_3
    iget v6, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ge v3, v6, :cond_2

    .line 171
    iget-object v6, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v6, v3}, Lcom/byazt/an/tt;->c(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 172
    :cond_2
    iput v4, v5, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 173
    iget v5, v5, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_6

    .line 174
    iget-object v4, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 175
    iget p3, p3, Lcom/byazt/an/ViewPager$tt;->n:F

    add-int/lit8 v3, v3, -0x1

    .line 176
    :goto_4
    iget v5, p1, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 177
    iget-object v5, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    .line 178
    :goto_5
    iget v6, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 179
    iget-object v5, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    goto :goto_5

    .line 180
    :cond_4
    :goto_6
    iget v6, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-le v3, v6, :cond_5

    .line 181
    iget-object v6, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v6, v3}, Lcom/byazt/an/tt;->c(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 182
    :cond_5
    iget v6, v5, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 183
    iput p3, v5, Lcom/byazt/an/ViewPager$tt;->n:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 184
    :cond_6
    iget-object p3, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 185
    iget v3, p1, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 186
    iget v4, p1, Lcom/byazt/an/ViewPager$tt;->tt:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_7

    move v6, v3

    goto :goto_7

    :cond_7
    const v6, -0x800001

    .line 187
    :goto_7
    iput v6, p0, Lcom/byazt/an/ViewPager;->gt:F

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_8

    .line 188
    iget v4, p1, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v4, v3

    sub-float/2addr v4, v6

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Lcom/byazt/an/ViewPager;->rl:F

    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_b

    .line 189
    iget-object v7, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/byazt/an/ViewPager$tt;

    .line 190
    :goto_a
    iget v8, v7, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-le v5, v8, :cond_9

    .line 191
    iget-object v8, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v5}, Lcom/byazt/an/tt;->c(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v3, v5

    move v5, v9

    goto :goto_a

    .line 192
    :cond_9
    iget v9, v7, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    .line 193
    iput v3, v7, Lcom/byazt/an/ViewPager$tt;->n:F

    if-nez v8, :cond_a

    .line 194
    iput v3, p0, Lcom/byazt/an/ViewPager;->gt:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 195
    :cond_b
    iget v3, p1, Lcom/byazt/an/ViewPager$tt;->n:F

    iget v4, p1, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 196
    iget p1, p1, Lcom/byazt/an/ViewPager$tt;->tt:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 197
    iget-object v4, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/an/ViewPager$tt;

    .line 198
    :goto_c
    iget v5, v4, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ge p1, v5, :cond_c

    .line 199
    iget-object v5, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Lcom/byazt/an/tt;->c(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    :cond_c
    if-ne v5, v0, :cond_d

    .line 200
    iget v5, v4, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/byazt/an/ViewPager;->rl:F

    .line 201
    :cond_d
    iput v3, v4, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 202
    iget v4, v4, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 203
    :cond_e
    iput-boolean v1, p0, Lcom/byazt/an/ViewPager;->pu:Z

    return-void
.end method

.method private c(Z)V
    .locals 7

    .line 246
    iget v0, p0, Lcom/byazt/an/ViewPager;->s:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 247
    invoke-direct {p0, v3}, Lcom/byazt/an/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 252
    iget-object v5, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 253
    iget-object v6, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 254
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    if-eq v5, v1, :cond_2

    .line 255
    invoke-direct {p0, v5}, Lcom/byazt/an/ViewPager;->uj(I)Z

    .line 256
    :cond_2
    iput-boolean v3, p0, Lcom/byazt/an/ViewPager;->yv:Z

    const/4 v1, 0x0

    .line 257
    :goto_1
    iget-object v4, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 258
    iget-object v4, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/an/ViewPager$tt;

    .line 259
    iget-boolean v5, v4, Lcom/byazt/an/ViewPager$tt;->ve:Z

    if-eqz v5, :cond_3

    .line 260
    iput-boolean v3, v4, Lcom/byazt/an/ViewPager$tt;->ve:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 261
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 262
    :cond_5
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->r:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void
.end method

.method private c(FF)Z
    .locals 3

    .line 263
    iget v0, p0, Lcom/byazt/an/ViewPager;->eo:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/byazt/an/ViewPager;->eo:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private da()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->md:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->h:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method private i()Lcom/byazt/an/ViewPager$tt;
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    int-to-float v3, v0

    .line 14
    div-float/2addr v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget v3, p0, Lcom/byazt/an/ViewPager;->m:I

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    :goto_1
    const/4 v0, 0x0

    .line 27
    const/4 v4, -0x1

    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v7, v6

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v6, -0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x1

    .line 35
    :goto_2
    iget-object v10, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-ge v8, v10, :cond_7

    .line 42
    .line 43
    iget-object v10, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    check-cast v10, Lcom/byazt/an/ViewPager$tt;

    .line 50
    .line 51
    if-nez v9, :cond_2

    .line 52
    .line 53
    iget v11, v10, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 54
    .line 55
    add-int/2addr v6, v5

    .line 56
    if-eq v11, v6, :cond_2

    .line 57
    .line 58
    iget-object v10, p0, Lcom/byazt/an/ViewPager;->x:Lcom/byazt/an/ViewPager$tt;

    .line 59
    .line 60
    add-float/2addr v1, v4

    .line 61
    add-float/2addr v1, v3

    .line 62
    iput v1, v10, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 63
    .line 64
    iput v6, v10, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 65
    .line 66
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 67
    .line 68
    invoke-virtual {v1, v6}, Lcom/byazt/an/tt;->c(I)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, v10, Lcom/byazt/an/ViewPager$tt;->uj:F

    .line 73
    .line 74
    add-int/lit8 v8, v8, -0x1

    .line 75
    .line 76
    :cond_2
    move-object v6, v10

    .line 77
    iget v1, v6, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 78
    .line 79
    iget v4, v6, Lcom/byazt/an/ViewPager$tt;->uj:F

    .line 80
    .line 81
    add-float/2addr v4, v1

    .line 82
    add-float/2addr v4, v3

    .line 83
    if-nez v9, :cond_4

    .line 84
    .line 85
    cmpl-float v9, v2, v1

    .line 86
    .line 87
    if-ltz v9, :cond_3

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    return-object v7

    .line 91
    :cond_4
    :goto_3
    cmpg-float v4, v2, v4

    .line 92
    .line 93
    if-ltz v4, :cond_6

    .line 94
    .line 95
    iget-object v4, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    sub-int/2addr v4, v5

    .line 102
    if-ne v8, v4, :cond_5

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    iget v4, v6, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 106
    .line 107
    iget v7, v6, Lcom/byazt/an/ViewPager$tt;->uj:F

    .line 108
    .line 109
    add-int/lit8 v8, v8, 0x1

    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    move-object v12, v6

    .line 113
    move v6, v4

    .line 114
    move v4, v7

    .line 115
    move-object v7, v12

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    :goto_4
    return-object v6

    .line 118
    :cond_7
    return-object v7
.end method

.method private n(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->kp:Lcom/byazt/an/ViewPager$uj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/an/ViewPager$uj;->t(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/an/ViewPager$uj;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1}, Lcom/byazt/an/ViewPager$uj;->t(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->b:Lcom/byazt/an/ViewPager$uj;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, Lcom/byazt/an/ViewPager$uj;->t(I)V

    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/an/ViewPager;->zm:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/byazt/an/ViewPager;->zm:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private sp()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/byazt/an/ViewPager;->v:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->os:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/an/ViewPager;->os:Ljava/util/ArrayList;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_1
    if-ge v1, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->os:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->os:Ljava/util/ArrayList;

    .line 40
    .line 41
    sget-object v1, Lcom/byazt/an/ViewPager;->oz:Lcom/byazt/an/ViewPager$x;

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method private tt(IFI)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->kp:Lcom/byazt/an/ViewPager$uj;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/an/ViewPager$uj;->c(IFI)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 35
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/an/ViewPager$uj;

    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v2, p1, p2, p3}, Lcom/byazt/an/ViewPager$uj;->c(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->b:Lcom/byazt/an/ViewPager$uj;

    if-eqz v0, :cond_3

    .line 38
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/an/ViewPager$uj;->c(IFI)V

    :cond_3
    return-void
.end method

.method private tt(Z)V
    .locals 6

    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 40
    iget v3, p0, Lcom/byazt/an/ViewPager;->tx:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tt(F)Z
    .locals 9

    .line 42
    iget v0, p0, Lcom/byazt/an/ViewPager;->or:F

    sub-float/2addr v0, p1

    .line 43
    iput p1, p0, Lcom/byazt/an/ViewPager;->or:F

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 45
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 46
    iget v1, p0, Lcom/byazt/an/ViewPager;->gt:F

    mul-float v1, v1, v0

    .line 47
    iget v2, p0, Lcom/byazt/an/ViewPager;->rl:F

    mul-float v2, v2, v0

    .line 48
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/an/ViewPager$tt;

    .line 49
    iget-object v5, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    .line 50
    iget v6, v3, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-eqz v6, :cond_0

    .line 51
    iget v1, v3, Lcom/byazt/an/ViewPager$tt;->n:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 52
    :goto_0
    iget v6, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    iget-object v8, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v8}, Lcom/byazt/an/tt;->c()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 53
    iget v2, v5, Lcom/byazt/an/ViewPager$tt;->n:F

    mul-float v2, v2, v0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 54
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->lr:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    .line 55
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->l:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_4
    move p1, v2

    .line 56
    :cond_5
    :goto_2
    iget v0, p0, Lcom/byazt/an/ViewPager;->or:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/byazt/an/ViewPager;->or:F

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 58
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->uj(I)Z

    return v4
.end method

.method private uj(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-boolean p1, p0, Lcom/byazt/an/ViewPager;->lo:Z

    if-eqz p1, :cond_0

    return v2

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/byazt/an/ViewPager;->lt:Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v2, p1, v2}, Lcom/byazt/an/ViewPager;->c(IFI)V

    .line 5
    iget-boolean p1, p0, Lcom/byazt/an/ViewPager;->lt:Z

    if-eqz p1, :cond_1

    return v2

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->i()Lcom/byazt/an/ViewPager$tt;

    move-result-object v0

    .line 8
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    move-result v3

    .line 9
    iget v4, p0, Lcom/byazt/an/ViewPager;->m:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 10
    iget v6, v0, Lcom/byazt/an/ViewPager$tt;->tt:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 11
    iget v3, v0, Lcom/byazt/an/ViewPager$tt;->n:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 12
    iput-boolean v2, p0, Lcom/byazt/an/ViewPager;->lt:Z

    .line 13
    invoke-virtual {p0, v6, p1, v0}, Lcom/byazt/an/ViewPager;->c(IFI)V

    .line 14
    iget-boolean p1, p0, Lcom/byazt/an/ViewPager;->lt:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ve(Z)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private static ve(Landroid/view/View;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    const-class v0, Lcom/byazt/an/ViewPager$c;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private x()Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->da()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->lr:Landroid/widget/EdgeEffect;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->l:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->lr:Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->l:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return v0

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x60000

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget v4, v4, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 37
    .line 38
    iget v5, p0, Lcom/byazt/an/ViewPager;->uj:I

    .line 39
    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/high16 p2, 0x40000

    .line 49
    .line 50
    if-ne v1, p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne v0, p2, :cond_5

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    const/4 p2, 0x1

    .line 66
    and-int/2addr p3, p2

    .line 67
    if-ne p3, p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget v2, v2, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 25
    .line 26
    iget v3, p0, Lcom/byazt/an/ViewPager;->uj:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/byazt/an/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/byazt/an/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :cond_0
    move-object v0, p3

    .line 12
    check-cast v0, Lcom/byazt/an/ViewPager$ve;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/byazt/an/ViewPager$ve;->c:Z

    .line 15
    .line 16
    invoke-static {p1}, Lcom/byazt/an/ViewPager;->ve(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    or-int/2addr v1, v2

    .line 21
    iput-boolean v1, v0, Lcom/byazt/an/ViewPager$ve;->c:Z

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/byazt/an/ViewPager;->gr:Z

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Lcom/byazt/an/ViewPager$ve;->uj:Z

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p2, "Cannot add pager decor view during layout"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public c(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public c(II)Lcom/byazt/an/ViewPager$tt;
    .locals 2

    .line 84
    new-instance v0, Lcom/byazt/an/ViewPager$tt;

    invoke-direct {v0}, Lcom/byazt/an/ViewPager$tt;-><init>()V

    .line 85
    iput p1, v0, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 86
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v1, p0, p1}, Lcom/byazt/an/tt;->c(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/an/ViewPager$tt;->c:Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v1, p1}, Lcom/byazt/an/tt;->c(I)F

    move-result p1

    iput p1, v0, Lcom/byazt/an/ViewPager$tt;->uj:F

    if-ltz p2, :cond_1

    .line 88
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;
    .locals 4

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/an/ViewPager$tt;

    .line 206
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    iget-object v3, v1, Lcom/byazt/an/ViewPager$tt;->c:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/byazt/an/tt;->c(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/byazt/an/ViewPager;->a:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 6
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/byazt/an/ViewPager;->zb:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 9
    iput v3, p0, Lcom/byazt/an/ViewPager;->sv:I

    .line 10
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/byazt/an/ViewPager;->aw:I

    .line 11
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/an/ViewPager;->lr:Landroid/widget/EdgeEffect;

    .line 12
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/an/ViewPager;->l:Landroid/widget/EdgeEffect;

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 13
    iput v0, p0, Lcom/byazt/an/ViewPager;->ic:I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 14
    iput v0, p0, Lcom/byazt/an/ViewPager;->hd:I

    const/high16 v0, 0x41800000    # 16.0f

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 15
    iput v0, p0, Lcom/byazt/an/ViewPager;->d:I

    return-void
.end method

.method public c(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 91
    iget v2, v0, Lcom/byazt/an/ViewPager;->uj:I

    if-eq v2, v1, :cond_0

    .line 92
    invoke-virtual {v0, v2}, Lcom/byazt/an/ViewPager;->tt(I)Lcom/byazt/an/ViewPager$tt;

    move-result-object v2

    .line 93
    iput v1, v0, Lcom/byazt/an/ViewPager;->uj:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 94
    :goto_0
    iget-object v1, v0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    if-nez v1, :cond_1

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/byazt/an/ViewPager;->sp()V

    return-void

    .line 96
    :cond_1
    iget-boolean v1, v0, Lcom/byazt/an/ViewPager;->yv:Z

    if-eqz v1, :cond_2

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/byazt/an/ViewPager;->sp()V

    return-void

    .line 98
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 99
    :cond_3
    iget v1, v0, Lcom/byazt/an/ViewPager;->p:I

    .line 100
    iget v4, v0, Lcom/byazt/an/ViewPager;->uj:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 101
    iget-object v6, v0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v6}, Lcom/byazt/an/tt;->c()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 102
    iget v8, v0, Lcom/byazt/an/ViewPager;->uj:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 103
    iget v7, v0, Lcom/byazt/an/ViewPager;->c:I

    if-ne v6, v7, :cond_1c

    const/4 v7, 0x0

    .line 104
    :goto_1
    iget-object v8, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 105
    iget-object v8, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/an/ViewPager$tt;

    .line 106
    iget v9, v8, Lcom/byazt/an/ViewPager$tt;->tt:I

    iget v10, v0, Lcom/byazt/an/ViewPager;->uj:I

    if-lt v9, v10, :cond_4

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 107
    iget v8, v0, Lcom/byazt/an/ViewPager;->uj:I

    invoke-virtual {v0, v8, v7}, Lcom/byazt/an/ViewPager;->c(II)Lcom/byazt/an/ViewPager$tt;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_15

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    .line 108
    iget-object v11, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/byazt/an/ViewPager$tt;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 109
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    const/4 v14, 0x0

    goto :goto_4

    .line 110
    :cond_8
    iget v14, v8, Lcom/byazt/an/ViewPager$tt;->uj:F

    sub-float v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    .line 111
    :goto_4
    iget v3, v0, Lcom/byazt/an/ViewPager;->uj:I

    add-int/lit8 v3, v3, -0x1

    const/4 v15, 0x0

    :goto_5
    if-ltz v3, :cond_d

    cmpl-float v16, v15, v14

    if-ltz v16, :cond_9

    if-ge v3, v4, :cond_9

    if-eqz v11, :cond_d

    .line 112
    iget v5, v11, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ne v3, v5, :cond_c

    iget-boolean v5, v11, Lcom/byazt/an/ViewPager$tt;->ve:Z

    if-nez v5, :cond_c

    .line 113
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    iget-object v11, v11, Lcom/byazt/an/ViewPager$tt;->c:Ljava/lang/Object;

    invoke-virtual {v5, v0, v3, v11}, Lcom/byazt/an/tt;->c(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_b

    .line 115
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    goto :goto_6

    :cond_9
    if-eqz v11, :cond_a

    .line 116
    iget v5, v11, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ne v3, v5, :cond_a

    .line 117
    iget v5, v11, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_b

    .line 118
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v10, 0x1

    .line 119
    invoke-virtual {v0, v3, v5}, Lcom/byazt/an/ViewPager;->c(II)Lcom/byazt/an/ViewPager$tt;

    move-result-object v5

    .line 120
    iget v5, v5, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_b

    .line 121
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    move-object v11, v5

    :cond_c
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 122
    :cond_d
    iget v3, v8, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_14

    .line 123
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    :goto_7
    if-gtz v12, :cond_f

    const/4 v10, 0x0

    goto :goto_8

    .line 124
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    .line 125
    :goto_8
    iget v11, v0, Lcom/byazt/an/ViewPager;->uj:I

    :goto_9
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_14

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_11

    if-le v11, v1, :cond_11

    if-eqz v5, :cond_14

    .line 126
    iget v12, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ne v11, v12, :cond_13

    iget-boolean v12, v5, Lcom/byazt/an/ViewPager$tt;->ve:Z

    if-nez v12, :cond_13

    .line 127
    iget-object v12, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    iget-object v12, v0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    iget-object v5, v5, Lcom/byazt/an/ViewPager$tt;->c:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Lcom/byazt/an/tt;->c(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 129
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    goto :goto_a

    :cond_11
    if-eqz v5, :cond_12

    .line 130
    iget v12, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ne v11, v12, :cond_12

    .line 131
    iget v5, v5, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 132
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    goto :goto_a

    .line 133
    :cond_12
    invoke-virtual {v0, v11, v4}, Lcom/byazt/an/ViewPager;->c(II)Lcom/byazt/an/ViewPager$tt;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 134
    iget v5, v5, Lcom/byazt/an/ViewPager$tt;->uj:F

    add-float/2addr v3, v5

    .line 135
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    :cond_13
    :goto_a
    goto :goto_9

    .line 136
    :cond_14
    invoke-direct {v0, v8, v7, v2}, Lcom/byazt/an/ViewPager;->c(Lcom/byazt/an/ViewPager$tt;ILcom/byazt/an/ViewPager$tt;)V

    .line 137
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    .line 138
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/byazt/an/ViewPager$ve;

    .line 140
    iput v2, v4, Lcom/byazt/an/ViewPager$ve;->a:I

    .line 141
    iget-boolean v5, v4, Lcom/byazt/an/ViewPager$ve;->c:Z

    if-nez v5, :cond_16

    iget v5, v4, Lcom/byazt/an/ViewPager$ve;->ve:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_16

    .line 142
    invoke-virtual {v0, v3}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 143
    iget v5, v3, Lcom/byazt/an/ViewPager$tt;->uj:F

    iput v5, v4, Lcom/byazt/an/ViewPager$ve;->ve:F

    .line 144
    iget v3, v3, Lcom/byazt/an/ViewPager$tt;->tt:I

    iput v3, v4, Lcom/byazt/an/ViewPager$ve;->n:I

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 145
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/byazt/an/ViewPager;->sp()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 148
    invoke-virtual {v0, v1}, Lcom/byazt/an/ViewPager;->tt(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    move-result-object v3

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_19

    .line 149
    iget v1, v3, Lcom/byazt/an/ViewPager$tt;->tt:I

    iget v2, v0, Lcom/byazt/an/ViewPager;->uj:I

    if-eq v1, v2, :cond_1b

    :cond_19
    const/4 v5, 0x0

    .line 150
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1b

    .line 151
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 153
    iget v2, v2, Lcom/byazt/an/ViewPager$tt;->tt:I

    iget v3, v0, Lcom/byazt/an/ViewPager;->uj:I

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x2

    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1b
    return-void

    .line 155
    :cond_1c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    .line 156
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/byazt/an/ViewPager;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public c(IFI)V
    .locals 12

    .line 220
    iget v0, p0, Lcom/byazt/an/ViewPager;->to:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 225
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    .line 226
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 227
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/byazt/an/ViewPager$ve;

    .line 228
    iget-boolean v10, v9, Lcom/byazt/an/ViewPager$ve;->c:Z

    if-eqz v10, :cond_4

    .line 229
    iget v9, v9, Lcom/byazt/an/ViewPager$ve;->tt:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    move v9, v3

    goto :goto_2

    :cond_0
    sub-int v9, v5, v4

    .line 230
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 231
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    .line 233
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    .line 234
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_3

    .line 235
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_3
    move v3, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 236
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/an/ViewPager;->tt(IFI)V

    .line 237
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->kk:Lcom/byazt/an/ViewPager$n;

    if-eqz p1, :cond_7

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    .line 239
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_3
    if-ge v1, p2, :cond_7

    .line 240
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 241
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/an/ViewPager$ve;

    .line 242
    iget-boolean v0, v0, Lcom/byazt/an/ViewPager$ve;->c:Z

    if-nez v0, :cond_6

    .line 243
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 244
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->kk:Lcom/byazt/an/ViewPager$n;

    invoke-interface {v3, p3, v0}, Lcom/byazt/an/ViewPager$n;->c(Landroid/view/View;F)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 245
    :cond_7
    iput-boolean v2, p0, Lcom/byazt/an/ViewPager;->lt:Z

    return-void
.end method

.method public c(III)V
    .locals 9

    .line 59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 62
    iget-boolean v0, p0, Lcom/byazt/an/ViewPager;->yp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    .line 63
    :goto_1
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 64
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    :goto_2
    move v4, v0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 67
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->c(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->ve()V

    .line 69
    invoke-virtual {p0, v1}, Lcom/byazt/an/ViewPager;->setScrollState(I)V

    return-void

    .line 70
    :cond_4
    invoke-direct {p0, v2}, Lcom/byazt/an/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 71
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager;->setScrollState(I)V

    .line 72
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    move-result p1

    .line 73
    div-int/lit8 p2, p1, 0x2

    .line 74
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 75
    invoke-virtual {p0, v0}, Lcom/byazt/an/ViewPager;->c(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    .line 76
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_5

    int-to-float p1, p3

    div-float/2addr p2, p1

    .line 77
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    .line 78
    :cond_5
    iget-object p2, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    iget p3, p0, Lcom/byazt/an/ViewPager;->uj:I

    invoke-virtual {p2, p3}, Lcom/byazt/an/tt;->c(I)F

    move-result p2

    mul-float p1, p1, p2

    .line 79
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/byazt/an/ViewPager;->m:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 81
    iput-boolean v1, p0, Lcom/byazt/an/ViewPager;->yp:Z

    .line 82
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public c(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->yv:Z

    .line 17
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/an/ViewPager;->c(IZZ)V

    return-void
.end method

.method public c(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/byazt/an/ViewPager;->c(IZZI)V

    return-void
.end method

.method public c(IZZI)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/byazt/an/tt;->c()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    .line 20
    iget p3, p0, Lcom/byazt/an/ViewPager;->uj:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 21
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v0}, Lcom/byazt/an/tt;->c()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 23
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {p1}, Lcom/byazt/an/tt;->c()I

    move-result p1

    sub-int/2addr p1, p3

    .line 24
    :cond_3
    :goto_0
    iget v0, p0, Lcom/byazt/an/ViewPager;->p:I

    .line 25
    iget v2, p0, Lcom/byazt/an/ViewPager;->uj:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 27
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/an/ViewPager$tt;

    iput-boolean p3, v2, Lcom/byazt/an/ViewPager$tt;->ve:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    :cond_5
    iget v0, p0, Lcom/byazt/an/ViewPager;->uj:I

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    .line 29
    :cond_6
    iget-boolean p3, p0, Lcom/byazt/an/ViewPager;->lo:Z

    if-eqz p3, :cond_8

    .line 30
    iput p1, p0, Lcom/byazt/an/ViewPager;->uj:I

    if-eqz v1, :cond_7

    .line 31
    invoke-direct {p0, p1}, Lcom/byazt/an/ViewPager;->n(I)V

    .line 32
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 33
    :cond_8
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager;->c(I)V

    .line 34
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/byazt/an/ViewPager;->c(IZIZ)V

    return-void

    .line 35
    :cond_9
    :goto_2
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public c(Lcom/byazt/an/ViewPager$uj;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->tk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(ZLcom/byazt/an/ViewPager$n;)V
    .locals 1

    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/an/ViewPager;->c(ZLcom/byazt/an/ViewPager$n;I)V

    return-void
.end method

.method public c(ZLcom/byazt/an/ViewPager$n;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 51
    :goto_0
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->kk:Lcom/byazt/an/ViewPager$n;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 52
    :goto_2
    iput-object p2, p0, Lcom/byazt/an/ViewPager;->kk:Lcom/byazt/an/ViewPager$n;

    .line 53
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 54
    :cond_3
    iput v0, p0, Lcom/byazt/an/ViewPager;->v:I

    .line 55
    iput p3, p0, Lcom/byazt/an/ViewPager;->tx:I

    goto :goto_3

    .line 56
    :cond_4
    iput v1, p0, Lcom/byazt/an/ViewPager;->v:I

    :goto_3
    if-eqz v3, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->ve()V

    :cond_5
    return-void
.end method

.method public c(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 289
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 290
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0, v2}, Lcom/byazt/an/ViewPager;->ve(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 294
    invoke-virtual {p0, v0}, Lcom/byazt/an/ViewPager;->ve(I)Z

    move-result p1

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->n()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    .line 297
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager;->ve(I)Z

    move-result p1

    goto :goto_1

    .line 298
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 299
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->uj()Z

    move-result p1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 300
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager;->ve(I)Z

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public c(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 277
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 278
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 281
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 282
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 283
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 284
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 285
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 286
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 287
    invoke-virtual/range {v6 .. v11}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 288
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    int-to-float p1, v0

    .line 19
    iget v0, p0, Lcom/byazt/an/ViewPager;->gt:F

    .line 20
    .line 21
    mul-float p1, p1, v0

    .line 22
    .line 23
    float-to-int p1, p1

    .line 24
    if-le v2, p1, :cond_1

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    if-lez p1, :cond_3

    .line 29
    .line 30
    int-to-float p1, v0

    .line 31
    iget v0, p0, Lcom/byazt/an/ViewPager;->rl:F

    .line 32
    .line 33
    mul-float p1, p1, v0

    .line 34
    .line 35
    float-to-int p1, p1

    .line 36
    if-ge v2, p1, :cond_3

    .line 37
    .line 38
    return v3

    .line 39
    :cond_3
    return v1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/an/ViewPager$ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->yp:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    .line 42
    if-eq v1, v3, :cond_1

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v2}, Lcom/byazt/an/ViewPager;->uj(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-direct {p0, v0}, Lcom/byazt/an/ViewPager;->c(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager;->c(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget v4, v4, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 39
    .line 40
    iget v5, p0, Lcom/byazt/an/ViewPager;->uj:I

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/an/tt;->c()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-le v0, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->lr:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->l:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->lr:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    sub-int/2addr v2, v3

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v2, v3

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/high16 v4, 0x43870000    # 270.0f

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 70
    .line 71
    .line 72
    neg-int v4, v2

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    add-int/2addr v4, v5

    .line 78
    int-to-float v4, v4

    .line 79
    iget v5, p0, Lcom/byazt/an/ViewPager;->gt:F

    .line 80
    .line 81
    int-to-float v6, v3

    .line 82
    mul-float v5, v5, v6

    .line 83
    .line 84
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lcom/byazt/an/ViewPager;->lr:Landroid/widget/EdgeEffect;

    .line 88
    .line 89
    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->lr:Landroid/widget/EdgeEffect;

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    or-int/2addr v1, v2

    .line 99
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->l:Landroid/widget/EdgeEffect;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    sub-int/2addr v3, v4

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    sub-int/2addr v3, v4

    .line 132
    const/high16 v4, 0x42b40000    # 90.0f

    .line 133
    .line 134
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    neg-int v4, v4

    .line 142
    int-to-float v4, v4

    .line 143
    iget v5, p0, Lcom/byazt/an/ViewPager;->rl:F

    .line 144
    .line 145
    const/high16 v6, 0x3f800000    # 1.0f

    .line 146
    .line 147
    add-float/2addr v5, v6

    .line 148
    neg-float v5, v5

    .line 149
    int-to-float v6, v2

    .line 150
    mul-float v5, v5, v6

    .line 151
    .line 152
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    .line 154
    .line 155
    iget-object v4, p0, Lcom/byazt/an/ViewPager;->l:Landroid/widget/EdgeEffect;

    .line 156
    .line 157
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->l:Landroid/widget/EdgeEffect;

    .line 161
    .line 162
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    or-int/2addr v1, v2

    .line 167
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 173
    .line 174
    .line 175
    :cond_4
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->nu:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/an/ViewPager$ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/an/ViewPager$ve;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/an/ViewPager$ve;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/byazt/an/ViewPager$ve;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lcom/byazt/an/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/an/ViewPager;->v:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    sub-int p2, p1, p2

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->os:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/byazt/an/ViewPager$ve;

    .line 23
    .line 24
    iget p1, p1, Lcom/byazt/an/ViewPager$ve;->a:I

    .line 25
    .line 26
    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/an/ViewPager;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/an/ViewPager;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/an/ViewPager;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/byazt/an/ViewPager;->uj:I

    invoke-virtual {v0}, Lcom/byazt/an/tt;->c()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 10
    iget v0, p0, Lcom/byazt/an/ViewPager;->uj:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/byazt/an/ViewPager;->c(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->lo:Z

    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->r:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lcom/byazt/an/ViewPager;->m:I

    .line 7
    .line 8
    if-lez v1, :cond_3

    .line 9
    .line 10
    iget-object v1, v0, Lcom/byazt/an/ViewPager;->nu:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v1, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_3

    .line 21
    .line 22
    iget-object v1, v0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v3, v0, Lcom/byazt/an/ViewPager;->m:I

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    int-to-float v4, v2

    .line 38
    div-float/2addr v3, v4

    .line 39
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    .line 47
    .line 48
    iget v7, v5, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 49
    .line 50
    iget-object v8, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    iget v9, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 57
    .line 58
    iget-object v10, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 59
    .line 60
    add-int/lit8 v11, v8, -0x1

    .line 61
    .line 62
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    check-cast v10, Lcom/byazt/an/ViewPager$tt;

    .line 67
    .line 68
    iget v10, v10, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 69
    .line 70
    :goto_0
    if-ge v9, v10, :cond_3

    .line 71
    .line 72
    :goto_1
    iget v11, v5, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 73
    .line 74
    if-le v9, v11, :cond_0

    .line 75
    .line 76
    if-ge v6, v8, :cond_0

    .line 77
    .line 78
    iget-object v5, v0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 79
    .line 80
    add-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Lcom/byazt/an/ViewPager$tt;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    if-ne v9, v11, :cond_1

    .line 90
    .line 91
    iget v7, v5, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 92
    .line 93
    iget v11, v5, Lcom/byazt/an/ViewPager$tt;->uj:F

    .line 94
    .line 95
    add-float v12, v7, v11

    .line 96
    .line 97
    mul-float v12, v12, v4

    .line 98
    .line 99
    add-float/2addr v7, v11

    .line 100
    add-float/2addr v7, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    iget-object v11, v0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 103
    .line 104
    invoke-virtual {v11, v9}, Lcom/byazt/an/tt;->c(I)F

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    add-float v12, v7, v11

    .line 109
    .line 110
    mul-float v12, v12, v4

    .line 111
    .line 112
    add-float/2addr v11, v3

    .line 113
    add-float/2addr v7, v11

    .line 114
    :goto_2
    iget v11, v0, Lcom/byazt/an/ViewPager;->m:I

    .line 115
    .line 116
    int-to-float v11, v11

    .line 117
    add-float/2addr v11, v12

    .line 118
    int-to-float v13, v1

    .line 119
    cmpl-float v11, v11, v13

    .line 120
    .line 121
    if-lez v11, :cond_2

    .line 122
    .line 123
    iget-object v11, v0, Lcom/byazt/an/ViewPager;->nu:Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    iget v14, v0, Lcom/byazt/an/ViewPager;->rh:I

    .line 130
    .line 131
    iget v15, v0, Lcom/byazt/an/ViewPager;->m:I

    .line 132
    .line 133
    int-to-float v15, v15

    .line 134
    add-float/2addr v15, v12

    .line 135
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    move/from16 v16, v3

    .line 140
    .line 141
    iget v3, v0, Lcom/byazt/an/ViewPager;->my:I

    .line 142
    .line 143
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    .line 145
    .line 146
    iget-object v3, v0, Lcom/byazt/an/ViewPager;->nu:Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    move-object/from16 v11, p1

    .line 149
    .line 150
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_2
    move-object/from16 v11, p1

    .line 155
    .line 156
    move/from16 v16, v3

    .line 157
    .line 158
    :goto_3
    add-int v3, v1, v2

    .line 159
    .line 160
    int-to-float v3, v3

    .line 161
    cmpl-float v3, v12, v3

    .line 162
    .line 163
    if-gtz v3, :cond_3

    .line 164
    .line 165
    add-int/lit8 v9, v9, 0x1

    .line 166
    .line 167
    move/from16 v3, v16

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v8, 0x0

    .line 12
    if-eq v0, v1, :cond_d

    .line 13
    .line 14
    const/4 v9, 0x1

    .line 15
    if-ne v0, v9, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v1, v6, Lcom/byazt/an/ViewPager;->md:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return v9

    .line 26
    :cond_1
    iget-boolean v1, v6, Lcom/byazt/an/ViewPager;->h:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    return v8

    .line 31
    :cond_2
    const/4 v1, 0x2

    .line 32
    if-eqz v0, :cond_9

    .line 33
    .line 34
    if-eq v0, v1, :cond_4

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    if-eq v0, v1, :cond_3

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/byazt/an/ViewPager;->c(Landroid/view/MotionEvent;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_4
    iget v0, v6, Lcom/byazt/an/ViewPager;->pf:I

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    if-eq v0, v1, :cond_b

    .line 50
    .line 51
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eq v0, v1, :cond_b

    .line 56
    .line 57
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    iget v1, v6, Lcom/byazt/an/ViewPager;->or:F

    .line 62
    .line 63
    sub-float v1, v10, v1

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    iget v0, v6, Lcom/byazt/an/ViewPager;->nb:F

    .line 74
    .line 75
    sub-float v0, v12, v0

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const/4 v0, 0x0

    .line 82
    cmpl-float v14, v1, v0

    .line 83
    .line 84
    if-eqz v14, :cond_5

    .line 85
    .line 86
    iget v0, v6, Lcom/byazt/an/ViewPager;->or:F

    .line 87
    .line 88
    invoke-direct {p0, v0, v1}, Lcom/byazt/an/ViewPager;->c(FF)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    float-to-int v3, v1

    .line 96
    float-to-int v4, v10

    .line 97
    float-to-int v5, v12

    .line 98
    move-object v0, p0

    .line 99
    move-object v1, p0

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;ZIII)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iput v10, v6, Lcom/byazt/an/ViewPager;->or:F

    .line 107
    .line 108
    iput v12, v6, Lcom/byazt/an/ViewPager;->cu:F

    .line 109
    .line 110
    iput-boolean v9, v6, Lcom/byazt/an/ViewPager;->h:Z

    .line 111
    .line 112
    return v8

    .line 113
    :cond_5
    iget v0, v6, Lcom/byazt/an/ViewPager;->zb:I

    .line 114
    .line 115
    int-to-float v1, v0

    .line 116
    cmpl-float v1, v11, v1

    .line 117
    .line 118
    if-lez v1, :cond_7

    .line 119
    .line 120
    const/high16 v1, 0x3f000000    # 0.5f

    .line 121
    .line 122
    mul-float v11, v11, v1

    .line 123
    .line 124
    cmpl-float v1, v11, v13

    .line 125
    .line 126
    if-lez v1, :cond_7

    .line 127
    .line 128
    iput-boolean v9, v6, Lcom/byazt/an/ViewPager;->md:Z

    .line 129
    .line 130
    invoke-direct {p0, v9}, Lcom/byazt/an/ViewPager;->ve(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v9}, Lcom/byazt/an/ViewPager;->setScrollState(I)V

    .line 134
    .line 135
    .line 136
    if-lez v14, :cond_6

    .line 137
    .line 138
    iget v0, v6, Lcom/byazt/an/ViewPager;->qp:F

    .line 139
    .line 140
    iget v1, v6, Lcom/byazt/an/ViewPager;->zb:I

    .line 141
    .line 142
    int-to-float v1, v1

    .line 143
    add-float/2addr v0, v1

    .line 144
    goto :goto_0

    .line 145
    :cond_6
    iget v0, v6, Lcom/byazt/an/ViewPager;->qp:F

    .line 146
    .line 147
    iget v1, v6, Lcom/byazt/an/ViewPager;->zb:I

    .line 148
    .line 149
    int-to-float v1, v1

    .line 150
    sub-float/2addr v0, v1

    .line 151
    :goto_0
    iput v0, v6, Lcom/byazt/an/ViewPager;->or:F

    .line 152
    .line 153
    iput v12, v6, Lcom/byazt/an/ViewPager;->cu:F

    .line 154
    .line 155
    invoke-direct {p0, v9}, Lcom/byazt/an/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_7
    int-to-float v0, v0

    .line 160
    cmpl-float v0, v13, v0

    .line 161
    .line 162
    if-lez v0, :cond_8

    .line 163
    .line 164
    iput-boolean v9, v6, Lcom/byazt/an/ViewPager;->h:Z

    .line 165
    .line 166
    :cond_8
    :goto_1
    iget-boolean v0, v6, Lcom/byazt/an/ViewPager;->md:Z

    .line 167
    .line 168
    if-eqz v0, :cond_b

    .line 169
    .line 170
    invoke-direct {p0, v10}, Lcom/byazt/an/ViewPager;->tt(F)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_b

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iput v0, v6, Lcom/byazt/an/ViewPager;->qp:F

    .line 185
    .line 186
    iput v0, v6, Lcom/byazt/an/ViewPager;->or:F

    .line 187
    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, v6, Lcom/byazt/an/ViewPager;->nb:F

    .line 193
    .line 194
    iput v0, v6, Lcom/byazt/an/ViewPager;->cu:F

    .line 195
    .line 196
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iput v0, v6, Lcom/byazt/an/ViewPager;->pf:I

    .line 201
    .line 202
    iput-boolean v8, v6, Lcom/byazt/an/ViewPager;->h:Z

    .line 203
    .line 204
    iput-boolean v9, v6, Lcom/byazt/an/ViewPager;->yp:Z

    .line 205
    .line 206
    iget-object v0, v6, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 209
    .line 210
    .line 211
    iget v0, v6, Lcom/byazt/an/ViewPager;->s:I

    .line 212
    .line 213
    if-ne v0, v1, :cond_a

    .line 214
    .line 215
    iget-object v0, v6, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iget-object v1, v6, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    sub-int/2addr v0, v1

    .line 228
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iget v1, v6, Lcom/byazt/an/ViewPager;->hd:I

    .line 233
    .line 234
    if-le v0, v1, :cond_a

    .line 235
    .line 236
    iget-object v0, v6, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 237
    .line 238
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 239
    .line 240
    .line 241
    iput-boolean v8, v6, Lcom/byazt/an/ViewPager;->yv:Z

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->ve()V

    .line 244
    .line 245
    .line 246
    iput-boolean v9, v6, Lcom/byazt/an/ViewPager;->md:Z

    .line 247
    .line 248
    invoke-direct {p0, v9}, Lcom/byazt/an/ViewPager;->ve(Z)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v9}, Lcom/byazt/an/ViewPager;->setScrollState(I)V

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_a
    invoke-direct {p0, v8}, Lcom/byazt/an/ViewPager;->c(Z)V

    .line 256
    .line 257
    .line 258
    iput-boolean v8, v6, Lcom/byazt/an/ViewPager;->md:Z

    .line 259
    .line 260
    :cond_b
    :goto_2
    iget-object v0, v6, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 261
    .line 262
    if-nez v0, :cond_c

    .line 263
    .line 264
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iput-object v0, v6, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 269
    .line 270
    :cond_c
    iget-object v0, v6, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 271
    .line 272
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 273
    .line 274
    .line 275
    iget-boolean v0, v6, Lcom/byazt/an/ViewPager;->md:Z

    .line 276
    .line 277
    return v0

    .line 278
    :cond_d
    :goto_3
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->x()Z

    .line 279
    .line 280
    .line 281
    return v8
.end method

.method public onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    .line 9
    sub-int v3, p5, p3

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x8

    .line 34
    .line 35
    if-ge v10, v1, :cond_7

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eq v14, v12, :cond_6

    .line 46
    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lcom/byazt/an/ViewPager$ve;

    .line 52
    .line 53
    iget-boolean v14, v12, Lcom/byazt/an/ViewPager$ve;->c:Z

    .line 54
    .line 55
    if-eqz v14, :cond_6

    .line 56
    .line 57
    iget v12, v12, Lcom/byazt/an/ViewPager$ve;->tt:I

    .line 58
    .line 59
    and-int/lit8 v14, v12, 0x7

    .line 60
    .line 61
    and-int/lit8 v12, v12, 0x70

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_2

    .line 65
    .line 66
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_1

    .line 68
    .line 69
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_0

    .line 71
    .line 72
    move v14, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v14, v2, v6

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    add-int/2addr v14, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    sub-int v14, v2, v14

    .line 98
    .line 99
    div-int/lit8 v14, v14, 0x2

    .line 100
    .line 101
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    :goto_1
    move/from16 v17, v14

    .line 106
    .line 107
    move v14, v4

    .line 108
    move/from16 v4, v17

    .line 109
    .line 110
    :goto_2
    const/16 v15, 0x10

    .line 111
    .line 112
    if-eq v12, v15, :cond_5

    .line 113
    .line 114
    const/16 v15, 0x30

    .line 115
    .line 116
    if-eq v12, v15, :cond_4

    .line 117
    .line 118
    const/16 v15, 0x50

    .line 119
    .line 120
    if-eq v12, v15, :cond_3

    .line 121
    .line 122
    move v12, v5

    .line 123
    goto :goto_4

    .line 124
    :cond_3
    sub-int v12, v3, v7

    .line 125
    .line 126
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    sub-int/2addr v12, v15

    .line 131
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    add-int/2addr v7, v15

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    add-int/2addr v12, v5

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    sub-int v12, v3, v12

    .line 148
    .line 149
    div-int/lit8 v12, v12, 0x2

    .line 150
    .line 151
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    :goto_3
    move/from16 v17, v12

    .line 156
    .line 157
    move v12, v5

    .line 158
    move/from16 v5, v17

    .line 159
    .line 160
    :goto_4
    add-int/2addr v4, v8

    .line 161
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    add-int/2addr v15, v4

    .line 166
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    .line 168
    .line 169
    move-result v16

    .line 170
    add-int v9, v5, v16

    .line 171
    .line 172
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v11, v11, 0x1

    .line 176
    .line 177
    move v5, v12

    .line 178
    move v4, v14

    .line 179
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_7
    sub-int/2addr v2, v4

    .line 184
    sub-int/2addr v2, v6

    .line 185
    const/4 v6, 0x0

    .line 186
    :goto_5
    if-ge v6, v1, :cond_a

    .line 187
    .line 188
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eq v9, v12, :cond_9

    .line 197
    .line 198
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    check-cast v9, Lcom/byazt/an/ViewPager$ve;

    .line 203
    .line 204
    iget-boolean v10, v9, Lcom/byazt/an/ViewPager$ve;->c:Z

    .line 205
    .line 206
    if-nez v10, :cond_9

    .line 207
    .line 208
    invoke-virtual {v0, v8}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    if-eqz v10, :cond_9

    .line 213
    .line 214
    int-to-float v13, v2

    .line 215
    iget v10, v10, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 216
    .line 217
    mul-float v10, v10, v13

    .line 218
    .line 219
    float-to-int v10, v10

    .line 220
    add-int/2addr v10, v4

    .line 221
    iget-boolean v14, v9, Lcom/byazt/an/ViewPager$ve;->uj:Z

    .line 222
    .line 223
    if-eqz v14, :cond_8

    .line 224
    .line 225
    const/4 v14, 0x0

    .line 226
    iput-boolean v14, v9, Lcom/byazt/an/ViewPager$ve;->uj:Z

    .line 227
    .line 228
    iget v9, v9, Lcom/byazt/an/ViewPager$ve;->ve:F

    .line 229
    .line 230
    mul-float v13, v13, v9

    .line 231
    .line 232
    float-to-int v9, v13

    .line 233
    const/high16 v13, 0x40000000    # 2.0f

    .line 234
    .line 235
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    sub-int v14, v3, v5

    .line 240
    .line 241
    sub-int/2addr v14, v7

    .line 242
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 247
    .line 248
    .line 249
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    add-int/2addr v9, v10

    .line 254
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    add-int/2addr v13, v5

    .line 259
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    .line 260
    .line 261
    .line 262
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_a
    iput v5, v0, Lcom/byazt/an/ViewPager;->rh:I

    .line 266
    .line 267
    sub-int/2addr v3, v7

    .line 268
    iput v3, v0, Lcom/byazt/an/ViewPager;->my:I

    .line 269
    .line 270
    iput v11, v0, Lcom/byazt/an/ViewPager;->to:I

    .line 271
    .line 272
    iget-boolean v1, v0, Lcom/byazt/an/ViewPager;->lo:Z

    .line 273
    .line 274
    if-eqz v1, :cond_b

    .line 275
    .line 276
    iget v1, v0, Lcom/byazt/an/ViewPager;->uj:I

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/byazt/an/ViewPager;->c(IZIZ)V

    .line 280
    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_b
    const/4 v2, 0x0

    .line 284
    :goto_6
    iput-boolean v2, v0, Lcom/byazt/an/ViewPager;->lo:Z

    .line 285
    .line 286
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    div-int/lit8 p2, p1, 0xa

    .line 18
    .line 19
    iget v1, p0, Lcom/byazt/an/ViewPager;->d:I

    .line 20
    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/byazt/an/ViewPager;->eo:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    sub-int/2addr p1, p2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr p2, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sub-int/2addr p2, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_0
    const/16 v3, 0x8

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    .line 61
    if-ge v2, v1, :cond_c

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eq v7, v3, :cond_b

    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/byazt/an/ViewPager$ve;

    .line 78
    .line 79
    if-eqz v3, :cond_b

    .line 80
    .line 81
    iget-boolean v7, v3, Lcom/byazt/an/ViewPager$ve;->c:Z

    .line 82
    .line 83
    if-eqz v7, :cond_b

    .line 84
    .line 85
    iget v7, v3, Lcom/byazt/an/ViewPager$ve;->tt:I

    .line 86
    .line 87
    and-int/lit8 v8, v7, 0x7

    .line 88
    .line 89
    and-int/lit8 v7, v7, 0x70

    .line 90
    .line 91
    const/16 v9, 0x30

    .line 92
    .line 93
    if-eq v7, v9, :cond_1

    .line 94
    .line 95
    const/16 v9, 0x50

    .line 96
    .line 97
    if-ne v7, v9, :cond_0

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    const/4 v7, 0x0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 103
    :goto_2
    const/4 v9, 0x3

    .line 104
    if-eq v8, v9, :cond_3

    .line 105
    .line 106
    const/4 v9, 0x5

    .line 107
    if-ne v8, v9, :cond_2

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_2
    const/4 v4, 0x0

    .line 111
    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    .line 112
    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    const/high16 v8, 0x40000000    # 2.0f

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    if-eqz v4, :cond_5

    .line 119
    .line 120
    const/high16 v9, 0x40000000    # 2.0f

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    :goto_4
    const/high16 v9, -0x80000000

    .line 124
    .line 125
    :goto_5
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    .line 127
    const/4 v11, -0x1

    .line 128
    const/4 v12, -0x2

    .line 129
    if-eq v10, v12, :cond_7

    .line 130
    .line 131
    if-eq v10, v11, :cond_6

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_6
    move v10, p1

    .line 135
    :goto_6
    const/high16 v8, 0x40000000    # 2.0f

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_7
    move v10, p1

    .line 139
    :goto_7
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    .line 141
    if-eq v3, v12, :cond_9

    .line 142
    .line 143
    if-eq v3, v11, :cond_8

    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_8
    move v3, p2

    .line 147
    goto :goto_8

    .line 148
    :cond_9
    move v3, p2

    .line 149
    move v5, v9

    .line 150
    :goto_8
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    .line 159
    .line 160
    .line 161
    if-eqz v7, :cond_a

    .line 162
    .line 163
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    sub-int/2addr p2, v3

    .line 168
    goto :goto_9

    .line 169
    :cond_a
    if-eqz v4, :cond_b

    .line 170
    .line 171
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    sub-int/2addr p1, v3

    .line 176
    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    iput v1, p0, Lcom/byazt/an/ViewPager;->qy:I

    .line 184
    .line 185
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    iput p2, p0, Lcom/byazt/an/ViewPager;->gu:I

    .line 190
    .line 191
    iput-boolean v4, p0, Lcom/byazt/an/ViewPager;->gr:Z

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->ve()V

    .line 194
    .line 195
    .line 196
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->gr:Z

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    :goto_a
    if-ge v0, p2, :cond_f

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eq v2, v3, :cond_e

    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lcom/byazt/an/ViewPager$ve;

    .line 219
    .line 220
    if-eqz v2, :cond_d

    .line 221
    .line 222
    iget-boolean v4, v2, Lcom/byazt/an/ViewPager$ve;->c:Z

    .line 223
    .line 224
    if-nez v4, :cond_e

    .line 225
    .line 226
    :cond_d
    int-to-float v4, p1

    .line 227
    iget v2, v2, Lcom/byazt/an/ViewPager$ve;->ve:F

    .line 228
    .line 229
    mul-float v4, v4, v2

    .line 230
    .line 231
    float-to-int v2, v4

    .line 232
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    iget v4, p0, Lcom/byazt/an/ViewPager;->gu:I

    .line 237
    .line 238
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 239
    .line 240
    .line 241
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 242
    .line 243
    goto :goto_a

    .line 244
    :cond_f
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v0

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    const/4 v4, -0x1

    .line 19
    :goto_0
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    iget v6, v6, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 38
    .line 39
    iget v7, p0, Lcom/byazt/an/ViewPager;->uj:I

    .line 40
    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    add-int/2addr v0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/byazt/an/ViewPager$sp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/byazt/an/ViewPager$sp;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/byazt/an/c;->c()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget p1, p1, Lcom/byazt/an/ViewPager$sp;->tt:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/an/ViewPager;->c(IZZ)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget v0, p1, Lcom/byazt/an/ViewPager$sp;->tt:I

    .line 31
    .line 32
    iput v0, p0, Lcom/byazt/an/ViewPager;->da:I

    .line 33
    .line 34
    iget-object v0, p1, Lcom/byazt/an/ViewPager$sp;->ve:Landroid/os/Parcelable;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/byazt/an/ViewPager;->sl:Landroid/os/Parcelable;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/byazt/an/ViewPager$sp;->uj:Ljava/lang/ClassLoader;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->t:Ljava/lang/ClassLoader;

    .line 41
    .line 42
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/an/ViewPager$sp;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/byazt/an/ViewPager$sp;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/byazt/an/ViewPager;->uj:I

    .line 11
    .line 12
    iput v0, v1, Lcom/byazt/an/ViewPager$sp;->tt:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/an/tt;->tt()Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, v1, Lcom/byazt/an/ViewPager$sp;->ve:Landroid/os/Parcelable;

    .line 23
    .line 24
    :cond_0
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    iget p2, p0, Lcom/byazt/an/ViewPager;->m:I

    .line 7
    .line 8
    invoke-direct {p0, p1, p3, p2, p2}, Lcom/byazt/an/ViewPager;->c(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/byazt/an/ViewPager;->bm:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 22
    .line 23
    if-eqz v0, :cond_f

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/an/tt;->c()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    and-int/lit16 v0, v0, 0xff

    .line 53
    .line 54
    if-eqz v0, :cond_c

    .line 55
    .line 56
    const/4 v3, -0x1

    .line 57
    if-eq v0, v1, :cond_b

    .line 58
    .line 59
    const/4 v4, 0x2

    .line 60
    if-eq v0, v4, :cond_7

    .line 61
    .line 62
    const/4 v4, 0x3

    .line 63
    if-eq v0, v4, :cond_6

    .line 64
    .line 65
    const/4 v4, 0x5

    .line 66
    if-eq v0, v4, :cond_5

    .line 67
    .line 68
    const/4 v4, 0x6

    .line 69
    if-eq v0, v4, :cond_4

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_4
    invoke-direct {p0, p1}, Lcom/byazt/an/ViewPager;->c(Landroid/view/MotionEvent;)V

    .line 74
    .line 75
    .line 76
    iget v0, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eq v0, v3, :cond_d

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, p0, Lcom/byazt/an/ViewPager;->or:F

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eq v0, v3, :cond_d

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    iput v3, p0, Lcom/byazt/an/ViewPager;->or:F

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_6
    iget-boolean p1, p0, Lcom/byazt/an/ViewPager;->md:Z

    .line 113
    .line 114
    if-eqz p1, :cond_d

    .line 115
    .line 116
    iget p1, p0, Lcom/byazt/an/ViewPager;->uj:I

    .line 117
    .line 118
    invoke-direct {p0, p1, v1, v2, v2}, Lcom/byazt/an/ViewPager;->c(IZIZ)V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->x()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_7
    iget-boolean v0, p0, Lcom/byazt/an/ViewPager;->md:Z

    .line 128
    .line 129
    if-nez v0, :cond_a

    .line 130
    .line 131
    iget v0, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ne v0, v3, :cond_8

    .line 138
    .line 139
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->x()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    iget v5, p0, Lcom/byazt/an/ViewPager;->or:F

    .line 150
    .line 151
    sub-float v5, v4, v5

    .line 152
    .line 153
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    iget v6, p0, Lcom/byazt/an/ViewPager;->cu:F

    .line 162
    .line 163
    sub-float v6, v0, v6

    .line 164
    .line 165
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    iget v7, p0, Lcom/byazt/an/ViewPager;->zb:I

    .line 170
    .line 171
    int-to-float v7, v7

    .line 172
    cmpl-float v7, v5, v7

    .line 173
    .line 174
    if-lez v7, :cond_a

    .line 175
    .line 176
    cmpl-float v5, v5, v6

    .line 177
    .line 178
    if-lez v5, :cond_a

    .line 179
    .line 180
    iput-boolean v1, p0, Lcom/byazt/an/ViewPager;->md:Z

    .line 181
    .line 182
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->ve(Z)V

    .line 183
    .line 184
    .line 185
    iget v5, p0, Lcom/byazt/an/ViewPager;->qp:F

    .line 186
    .line 187
    sub-float/2addr v4, v5

    .line 188
    const/4 v6, 0x0

    .line 189
    cmpl-float v4, v4, v6

    .line 190
    .line 191
    if-lez v4, :cond_9

    .line 192
    .line 193
    iget v4, p0, Lcom/byazt/an/ViewPager;->zb:I

    .line 194
    .line 195
    int-to-float v4, v4

    .line 196
    add-float/2addr v5, v4

    .line 197
    goto :goto_0

    .line 198
    :cond_9
    iget v4, p0, Lcom/byazt/an/ViewPager;->zb:I

    .line 199
    .line 200
    int-to-float v4, v4

    .line 201
    sub-float/2addr v5, v4

    .line 202
    :goto_0
    iput v5, p0, Lcom/byazt/an/ViewPager;->or:F

    .line 203
    .line 204
    iput v0, p0, Lcom/byazt/an/ViewPager;->cu:F

    .line 205
    .line 206
    invoke-virtual {p0, v1}, Lcom/byazt/an/ViewPager;->setScrollState(I)V

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, v1}, Lcom/byazt/an/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_a

    .line 217
    .line 218
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 219
    .line 220
    .line 221
    :cond_a
    iget-boolean v0, p0, Lcom/byazt/an/ViewPager;->md:Z

    .line 222
    .line 223
    if-eqz v0, :cond_d

    .line 224
    .line 225
    iget v0, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eq v0, v3, :cond_d

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-direct {p0, p1}, Lcom/byazt/an/ViewPager;->tt(F)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    or-int/2addr v2, p1

    .line 242
    goto :goto_1

    .line 243
    :cond_b
    iget-boolean v0, p0, Lcom/byazt/an/ViewPager;->md:Z

    .line 244
    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->bx:Landroid/view/VelocityTracker;

    .line 248
    .line 249
    iget v4, p0, Lcom/byazt/an/ViewPager;->aw:I

    .line 250
    .line 251
    int-to-float v4, v4

    .line 252
    const/16 v5, 0x3e8

    .line 253
    .line 254
    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 255
    .line 256
    .line 257
    iget v4, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 258
    .line 259
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    float-to-int v0, v0

    .line 264
    iput-boolean v1, p0, Lcom/byazt/an/ViewPager;->yv:Z

    .line 265
    .line 266
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->getClientWidth()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->i()Lcom/byazt/an/ViewPager$tt;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    iget v7, p0, Lcom/byazt/an/ViewPager;->m:I

    .line 279
    .line 280
    int-to-float v7, v7

    .line 281
    int-to-float v4, v4

    .line 282
    div-float/2addr v7, v4

    .line 283
    iget v8, v6, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 284
    .line 285
    int-to-float v5, v5

    .line 286
    div-float/2addr v5, v4

    .line 287
    iget v4, v6, Lcom/byazt/an/ViewPager$tt;->n:F

    .line 288
    .line 289
    sub-float/2addr v5, v4

    .line 290
    iget v4, v6, Lcom/byazt/an/ViewPager$tt;->uj:F

    .line 291
    .line 292
    add-float/2addr v4, v7

    .line 293
    div-float/2addr v5, v4

    .line 294
    iget v4, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 295
    .line 296
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-eq v4, v3, :cond_d

    .line 301
    .line 302
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    iget v2, p0, Lcom/byazt/an/ViewPager;->qp:F

    .line 307
    .line 308
    sub-float/2addr p1, v2

    .line 309
    float-to-int p1, p1

    .line 310
    invoke-direct {p0, v8, v5, v0, p1}, Lcom/byazt/an/ViewPager;->c(IFII)I

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/byazt/an/ViewPager;->c(IZZI)V

    .line 315
    .line 316
    .line 317
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->x()Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    goto :goto_1

    .line 322
    :cond_c
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 323
    .line 324
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 325
    .line 326
    .line 327
    iput-boolean v2, p0, Lcom/byazt/an/ViewPager;->yv:Z

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->ve()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    iput v0, p0, Lcom/byazt/an/ViewPager;->qp:F

    .line 337
    .line 338
    iput v0, p0, Lcom/byazt/an/ViewPager;->or:F

    .line 339
    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    iput v0, p0, Lcom/byazt/an/ViewPager;->nb:F

    .line 345
    .line 346
    iput v0, p0, Lcom/byazt/an/ViewPager;->cu:F

    .line 347
    .line 348
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    iput p1, p0, Lcom/byazt/an/ViewPager;->pf:I

    .line 353
    .line 354
    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    .line 355
    .line 356
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 357
    .line 358
    .line 359
    :cond_e
    return v1

    .line 360
    :cond_f
    :goto_2
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/an/ViewPager;->gr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAdapter(Lcom/byazt/an/tt;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/an/tt;->c(Landroid/database/DataSetObserver;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v0, v3, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/byazt/an/ViewPager$tt;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 28
    .line 29
    iget v5, v3, Lcom/byazt/an/ViewPager$tt;->tt:I

    .line 30
    .line 31
    iget-object v3, v3, Lcom/byazt/an/ViewPager$tt;->c:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v4, p0, v5, v3}, Lcom/byazt/an/tt;->c(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/byazt/an/ViewPager;->a()V

    .line 45
    .line 46
    .line 47
    iput v2, p0, Lcom/byazt/an/ViewPager;->uj:I

    .line 48
    .line 49
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 53
    .line 54
    iput v2, p0, Lcom/byazt/an/ViewPager;->c:I

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->z:Lcom/byazt/an/ViewPager$a;

    .line 59
    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    new-instance p1, Lcom/byazt/an/ViewPager$a;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/byazt/an/ViewPager$a;-><init>(Lcom/byazt/an/ViewPager;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->z:Lcom/byazt/an/ViewPager$a;

    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->z:Lcom/byazt/an/ViewPager$a;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/byazt/an/tt;->c(Landroid/database/DataSetObserver;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/byazt/an/ViewPager;->yv:Z

    .line 77
    .line 78
    iget-boolean p1, p0, Lcom/byazt/an/ViewPager;->lo:Z

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->lo:Z

    .line 82
    .line 83
    iget-object v3, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/byazt/an/tt;->c()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iput v3, p0, Lcom/byazt/an/ViewPager;->c:I

    .line 90
    .line 91
    iget v3, p0, Lcom/byazt/an/ViewPager;->da:I

    .line 92
    .line 93
    if-ltz v3, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0, v3, v2, v0}, Lcom/byazt/an/ViewPager;->c(IZZ)V

    .line 96
    .line 97
    .line 98
    const/4 p1, -0x1

    .line 99
    iput p1, p0, Lcom/byazt/an/ViewPager;->da:I

    .line 100
    .line 101
    iput-object v1, p0, Lcom/byazt/an/ViewPager;->sl:Landroid/os/Parcelable;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/byazt/an/ViewPager;->t:Ljava/lang/ClassLoader;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    if-nez p1, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->ve()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->q:Ljava/util/List;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_6

    .line 124
    .line 125
    iget-object p1, p0, Lcom/byazt/an/ViewPager;->q:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    :goto_2
    if-ge v2, p1, :cond_6

    .line 132
    .line 133
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->q:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/an/ViewPager;->yv:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/byazt/an/ViewPager;->lo:Z

    .line 5
    .line 6
    xor-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1, v0}, Lcom/byazt/an/ViewPager;->c(IZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Requested offscreen page limit "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, " too small; defaulting to 1"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "ViewPager"

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    :cond_0
    iget v0, p0, Lcom/byazt/an/ViewPager;->p:I

    .line 29
    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    iput p1, p0, Lcom/byazt/an/ViewPager;->p:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->ve()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/byazt/an/ViewPager$uj;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->kp:Lcom/byazt/an/ViewPager$uj;

    .line 2
    .line 3
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/an/ViewPager;->m:I

    .line 2
    .line 3
    iput p1, p0, Lcom/byazt/an/ViewPager;->m:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/byazt/an/ViewPager;->c(IIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->nu:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/an/ViewPager;->s:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/byazt/an/ViewPager;->s:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->kk:Lcom/byazt/an/ViewPager$n;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-direct {p0, v0}, Lcom/byazt/an/ViewPager;->tt(Z)V

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/an/ViewPager;->a(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/an/ViewPager;->u:Landroid/widget/Scroller;

    .line 2
    .line 3
    return-void
.end method

.method public tt(I)Lcom/byazt/an/ViewPager$tt;
    .locals 3

    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/an/ViewPager$tt;

    .line 30
    iget v2, v1, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;
    .locals 1

    .line 24
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 25
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_2
    invoke-virtual {p0, p1}, Lcom/byazt/an/ViewPager;->c(Landroid/view/View;)Lcom/byazt/an/ViewPager$tt;

    move-result-object p1

    return-object p1
.end method

.method public tt()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    invoke-virtual {v0}, Lcom/byazt/an/tt;->c()I

    move-result v0

    .line 2
    iput v0, p0, Lcom/byazt/an/ViewPager;->c:I

    .line 3
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/byazt/an/ViewPager;->p:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/byazt/an/ViewPager;->uj:I

    const/4 v5, 0x0

    .line 6
    :goto_1
    iget-object v6, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 7
    iget-object v6, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/an/ViewPager$tt;

    .line 8
    iget-object v7, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    iget-object v8, v6, Lcom/byazt/an/ViewPager$tt;->c:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/byazt/an/tt;->c(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    .line 9
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    .line 10
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->ve:Lcom/byazt/an/tt;

    iget v7, v6, Lcom/byazt/an/ViewPager$tt;->tt:I

    iget-object v8, v6, Lcom/byazt/an/ViewPager$tt;->c:Ljava/lang/Object;

    invoke-virtual {v1, p0, v7, v8}, Lcom/byazt/an/tt;->c(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 11
    iget v1, p0, Lcom/byazt/an/ViewPager;->uj:I

    iget v6, v6, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-ne v1, v6, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_1
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 13
    :cond_2
    iget v8, v6, Lcom/byazt/an/ViewPager$tt;->tt:I

    if-eq v8, v7, :cond_4

    .line 14
    iget v1, p0, Lcom/byazt/an/ViewPager;->uj:I

    if-ne v8, v1, :cond_3

    move v2, v7

    .line 15
    :cond_3
    iput v7, v6, Lcom/byazt/an/ViewPager$tt;->tt:I

    goto :goto_2

    :cond_4
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->sp:Ljava/util/ArrayList;

    sget-object v5, Lcom/byazt/an/ViewPager;->n:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_7

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/byazt/an/ViewPager$ve;

    .line 20
    iget-boolean v6, v5, Lcom/byazt/an/ViewPager$ve;->c:Z

    if-nez v6, :cond_6

    const/4 v6, 0x0

    .line 21
    iput v6, v5, Lcom/byazt/an/ViewPager$ve;->ve:F

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 22
    :cond_7
    invoke-virtual {p0, v2, v4, v3}, Lcom/byazt/an/ViewPager;->c(IZZ)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_8
    return-void
.end method

.method public uj()Z
    .locals 2

    .line 16
    iget v0, p0, Lcom/byazt/an/ViewPager;->uj:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/byazt/an/ViewPager;->c(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/an/ViewPager;->uj:I

    invoke-virtual {p0, v0}, Lcom/byazt/an/ViewPager;->c(I)V

    return-void
.end method

.method public ve(I)Z
    .locals 6

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 16
    invoke-static {v4, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 18
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/byazt/an/ViewPager;->c(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 19
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/byazt/an/ViewPager;->c(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->uj()Z

    move-result v2

    goto :goto_6

    .line 21
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_c

    .line 22
    iget-object v1, p0, Lcom/byazt/an/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/byazt/an/ViewPager;->c(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 23
    iget-object v2, p0, Lcom/byazt/an/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/byazt/an/ViewPager;->c(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-le v1, v2, :cond_a

    .line 24
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_6

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 25
    :cond_a
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->n()Z

    move-result v2

    goto :goto_6

    .line 26
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/byazt/an/ViewPager;->uj()Z

    move-result v2

    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 27
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/an/ViewPager;->nu:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method
