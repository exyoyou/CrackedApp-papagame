.class Lcom/xpleemoon/view/CarouselViewPager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xpleemoon/view/CarouselViewPager;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xpleemoon/view/CarouselViewPager;


# direct methods
.method constructor <init>(Lcom/xpleemoon/view/CarouselViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->b:Lcom/xpleemoon/view/CarouselViewPager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->b:Lcom/xpleemoon/view/CarouselViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xpleemoon/view/CarouselViewPager;->a(Lcom/xpleemoon/view/CarouselViewPager;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->b:Lcom/xpleemoon/view/CarouselViewPager;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/xpleemoon/view/CarouselViewPager;->c(Lcom/xpleemoon/view/CarouselViewPager;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->b:Lcom/xpleemoon/view/CarouselViewPager;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/xpleemoon/view/CarouselViewPager;->b(Lcom/xpleemoon/view/CarouselViewPager;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->b:Lcom/xpleemoon/view/CarouselViewPager;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->b:Lcom/xpleemoon/view/CarouselViewPager;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-le v0, v1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/xpleemoon/view/CarouselViewPager$a;->b:Lcom/xpleemoon/view/CarouselViewPager;

    .line 49
    .line 50
    new-instance v1, Lcom/xpleemoon/view/CarouselViewPager$a$a;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/xpleemoon/view/CarouselViewPager$a$a;-><init>(Lcom/xpleemoon/view/CarouselViewPager$a;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method
