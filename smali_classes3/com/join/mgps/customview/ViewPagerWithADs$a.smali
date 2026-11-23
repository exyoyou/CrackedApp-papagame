.class Lcom/join/mgps/customview/ViewPagerWithADs$a;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ViewPagerWithADs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ViewPagerWithADs$a$f;,
        Lcom/join/mgps/customview/ViewPagerWithADs$a$e;,
        Lcom/join/mgps/customview/ViewPagerWithADs$a$d;,
        Lcom/join/mgps/customview/ViewPagerWithADs$a$g;,
        Lcom/join/mgps/customview/ViewPagerWithADs$a$c;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroidx/viewpager/widget/PagerAdapter;

.field private h:Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

.field private i:Landroid/os/Handler;

.field final synthetic j:Lcom/join/mgps/customview/ViewPagerWithADs;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 2
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    const/16 p1, 0xf

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e:I

    const/16 p1, 0xfa0

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f:I

    .line 6
    new-instance p1, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h:Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    .line 7
    new-instance p1, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Landroid/os/Handler;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/customview/ViewPagerWithADs;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "attrs"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 10
    invoke-direct {p0, p2, p3}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    const/16 p1, 0xf

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e:I

    const/16 p1, 0xfa0

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f:I

    .line 14
    new-instance p1, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$f;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h:Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    .line 15
    new-instance p1, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$a;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Landroid/os/Handler;

    .line 16
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ViewPagerWithADs$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    .line 5
    .line 6
    return v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/ViewPagerWithADs$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private g()V
    .locals 2

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$e;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$d;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$d;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$g;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$g;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public h(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/customview/ViewPagerWithADs$a$b;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public i(Landroid/content/Context;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "banners",
            "pageMargin",
            "times"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->b:Landroid/content/Context;

    .line 2
    .line 3
    iput p3, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->e:I

    .line 4
    .line 5
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->c:Ljava/util/List;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/customview/ViewPagerWithADs;->a(Lcom/join/mgps/customview/ViewPagerWithADs;)Landroidx/viewpager/widget/PagerAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->j:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/customview/ViewPagerWithADs;->a(Lcom/join/mgps/customview/ViewPagerWithADs;)Landroidx/viewpager/widget/PagerAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g:Landroidx/viewpager/widget/PagerAdapter;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ViewPagerWithADs$a$c;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs$a;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g:Landroidx/viewpager/widget/PagerAdapter;

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->g:Landroidx/viewpager/widget/PagerAdapter;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->d:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Landroid/os/Handler;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h:Lcom/join/mgps/customview/ViewPagerWithADs$a$f;

    .line 48
    .line 49
    iget v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs$a;->f:I

    .line 50
    .line 51
    int-to-long v2, v2

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
