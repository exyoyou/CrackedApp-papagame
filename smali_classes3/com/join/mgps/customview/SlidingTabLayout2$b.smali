.class Lcom/join/mgps/customview/SlidingTabLayout2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayout2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:I

.field final synthetic c:Lcom/join/mgps/customview/SlidingTabLayout2;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout2;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout2;Lcom/join/mgps/customview/SlidingTabLayout2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout2$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout2;)V

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->c(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->c(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/p0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/p0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/p0;->c(IF)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/p0;

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
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 50
    .line 51
    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->b(Lcom/join/mgps/customview/SlidingTabLayout2;II)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->c(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->c(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/p0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, p1, v2}, Lcom/join/mgps/customview/p0;->c(IF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lcom/join/mgps/customview/SlidingTabLayout2;->b(Lcom/join/mgps/customview/SlidingTabLayout2;II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/p0;

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
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/p0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->c(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->c(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->d(Lcom/join/mgps/customview/SlidingTabLayout2;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ge v1, v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabLayout2;->d(Lcom/join/mgps/customview/SlidingTabLayout2;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/TextView;

    .line 95
    .line 96
    if-ne v1, p1, :cond_4

    .line 97
    .line 98
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout2$b;->c:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const v3, 0x7f060393

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    const v2, -0x9e9e9f

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    return-void
.end method
