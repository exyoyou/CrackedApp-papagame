.class Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabClassifyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:I

.field final synthetic c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabClassifyLayout;Lcom/join/mgps/customview/SlidingTabClassifyLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;-><init>(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)V

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/o0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/o0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/o0;->b(IF)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/o0;

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
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 50
    .line 51
    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->b(Lcom/join/mgps/customview/SlidingTabClassifyLayout;II)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/o0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->b(Lcom/join/mgps/customview/SlidingTabClassifyLayout;II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/o0;

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
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->a(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Lcom/join/mgps/customview/o0;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->c(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->d(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->e(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabClassifyLayout;->d(Lcom/join/mgps/customview/SlidingTabClassifyLayout;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Landroid/widget/TextView;

    .line 107
    .line 108
    const/4 v3, -0x1

    .line 109
    if-ne v1, p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const v5, 0x7f0600b4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    .line 136
    .line 137
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabClassifyLayout$b;->c:Lcom/join/mgps/customview/SlidingTabClassifyLayout;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const v5, 0x7f0600b3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    .line 155
    .line 156
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    return-void
.end method
