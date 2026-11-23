.class Lcom/join/mgps/customview/LoopViewPager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private b:F

.field private c:F

.field final synthetic d:Lcom/join/mgps/customview/LoopViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LoopViewPager;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 p1, -0x40800000    # -1.0f

    .line 7
    .line 8
    iput p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->b:F

    .line 9
    .line 10
    iput p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->b(Lcom/join/mgps/customview/LoopViewPager;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/n;->h(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/customview/n;->getCount()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    if-ne v0, v2, :cond_1

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(IZ)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/n;->h(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    cmpl-float v3, p2, v2

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    iget v3, p0, Lcom/join/mgps/customview/LoopViewPager$a;->b:F

    .line 26
    .line 27
    cmpl-float v3, v3, v2

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/join/mgps/customview/n;->getCount()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    add-int/lit8 v3, v3, -0x1

    .line 44
    .line 45
    if-ne p1, v3, :cond_1

    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(IZ)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iput p2, p0, Lcom/join/mgps/customview/LoopViewPager$a;->b:F

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 55
    .line 56
    iget-object v3, p1, Lcom/join/mgps/customview/LoopViewPager;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/customview/n;->c()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    add-int/lit8 p1, p1, -0x1

    .line 69
    .line 70
    if-eq v0, p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/join/mgps/customview/LoopViewPager;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 75
    .line 76
    invoke-interface {p1, v0, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    float-to-double p1, p2

    .line 81
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 82
    .line 83
    cmpl-double p3, p1, v3

    .line 84
    .line 85
    if-lez p3, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/join/mgps/customview/LoopViewPager;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 90
    .line 91
    invoke-interface {p1, v1, v2, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/join/mgps/customview/LoopViewPager;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 98
    .line 99
    invoke-interface {p1, v0, v2, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/LoopViewPager;->a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/n;->h(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:F

    .line 12
    .line 13
    int-to-float v1, p1

    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput v1, p0, Lcom/join/mgps/customview/LoopViewPager$a;->c:F

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/customview/LoopViewPager;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
