.class Lcom/join/mgps/customview/CarouselViewPager2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CarouselViewPager2;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/CarouselViewPager2;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CarouselViewPager2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->b:Lcom/join/mgps/customview/CarouselViewPager2;

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
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/CarouselViewPager2;->a(Lcom/join/mgps/customview/CarouselViewPager2;)I

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
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/customview/CarouselViewPager2;->c(Lcom/join/mgps/customview/CarouselViewPager2;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/join/mgps/customview/CarouselViewPager2;->e:Z

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Lcom/join/mgps/customview/CarouselViewPager2;->e:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-static {v0}, Lcom/join/mgps/customview/CarouselViewPager2;->b(Lcom/join/mgps/customview/CarouselViewPager2;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x1

    .line 54
    if-le v0, v1, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2$a;->b:Lcom/join/mgps/customview/CarouselViewPager2;

    .line 57
    .line 58
    new-instance v1, Lcom/join/mgps/customview/CarouselViewPager2$a$a;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/CarouselViewPager2$a$a;-><init>(Lcom/join/mgps/customview/CarouselViewPager2$a;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method
