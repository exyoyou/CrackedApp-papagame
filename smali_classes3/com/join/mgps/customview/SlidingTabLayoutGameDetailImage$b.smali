.class Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:I

.field final synthetic c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-ltz p1, :cond_2

    .line 14
    .line 15
    if-lt p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/o0;->b(IF)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    mul-float v0, v0, p2

    .line 45
    .line 46
    float-to-int v0, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 50
    .line 51
    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;II)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, p1, v2}, Lcom/join/mgps/customview/o0;->b(IF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->b(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v0, v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/o0;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->c(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    const/4 v0, 0x0

    .line 73
    :goto_2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ge v0, v2, :cond_5

    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->d(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Landroid/view/View;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$b;->c:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    .line 98
    .line 99
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->e(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/view/View;

    .line 108
    .line 109
    if-ne v0, p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    const/4 v3, 0x4

    .line 116
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    return-void
.end method
