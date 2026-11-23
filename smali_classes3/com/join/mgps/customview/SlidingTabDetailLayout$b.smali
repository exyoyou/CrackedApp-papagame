.class Lcom/join/mgps/customview/SlidingTabDetailLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabDetailLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:I

.field final synthetic c:Lcom/join/mgps/customview/SlidingTabDetailLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabDetailLayout;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabDetailLayout;Lcom/join/mgps/customview/SlidingTabDetailLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;-><init>(Lcom/join/mgps/customview/SlidingTabDetailLayout;)V

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
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    .locals 6
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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/o0;

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
    if-eqz v0, :cond_4

    .line 12
    .line 13
    if-ltz p1, :cond_4

    .line 14
    .line 15
    if-lt p1, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/o0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/o0;->b(IF)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/o0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    mul-float v0, v0, p2

    .line 46
    .line 47
    float-to-int v0, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 51
    .line 52
    invoke-static {v1, p1, v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->b(Lcom/join/mgps/customview/SlidingTabDetailLayout;II)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 70
    .line 71
    .line 72
    :cond_2
    const/4 p3, 0x1

    .line 73
    if-ne p1, p3, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->d(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    add-int/2addr p1, p3

    .line 82
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    const v0, 0x7f0a16a3    # 1.83551E38f

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/TextView;

    .line 96
    .line 97
    const v1, 0x7f0a0869

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/ImageView;

    .line 105
    .line 106
    float-to-double v1, p2

    .line 107
    const-wide v3, 0x3fd3333333333333L    # 0.3

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    cmpl-double v5, v1, v3

    .line 113
    .line 114
    if-ltz v5, :cond_3

    .line 115
    .line 116
    const-string p2, "\u91ca\n\u653e\n\u8fdb\n\u5165\n\u4e13\n\u533a\n\u8ba8\n\u8bba"

    .line 117
    .line 118
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    const/high16 p2, 0x43340000    # 180.0f

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 124
    .line 125
    .line 126
    const-wide p1, 0x3fdccccccccccccdL    # 0.45

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    cmpl-double v0, v1, p1

    .line 132
    .line 133
    if-nez v0, :cond_4

    .line 134
    .line 135
    new-instance p1, Lcom/join/mgps/dto/ForumBean;

    .line 136
    .line 137
    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 138
    .line 139
    .line 140
    const/4 p2, 0x2

    .line 141
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 145
    .line 146
    invoke-static {p2}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->d(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-static {p2}, Lcom/join/mgps/Util/s0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/s0;

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {p2, p1}, Lcom/join/mgps/Util/r0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    const/high16 p3, 0x42700000    # 60.0f

    .line 173
    .line 174
    mul-float p2, p2, p3

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 177
    .line 178
    .line 179
    const-string p1, "\u6ed1\n\u52a8\n\u8fdb\n\u5165\n\u4e13\n\u533a\n\u8ba8\n\u8bba"

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    new-instance v2, Lcom/join/mgps/dto/ForumBean;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->d(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lcom/join/mgps/Util/s0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/s0;

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3, v2}, Lcom/join/mgps/Util/r0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->b:I

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/o0;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, p1, v4}, Lcom/join/mgps/customview/o0;->b(IF)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 56
    .line 57
    invoke-static {v2, p1, v3}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->b(Lcom/join/mgps/customview/SlidingTabDetailLayout;II)V

    .line 58
    .line 59
    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 61
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 62
    .line 63
    invoke-static {v4}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/o0;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-ge v2, v4, :cond_3

    .line 72
    .line 73
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 74
    .line 75
    invoke-static {v4}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->a(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Lcom/join/mgps/customview/o0;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-ne p1, v2, :cond_2

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 v5, 0x0

    .line 88
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->c(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    const/4 v0, 0x0

    .line 112
    :goto_2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->e(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-ge v0, v2, :cond_7

    .line 123
    .line 124
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 125
    .line 126
    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->f(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 137
    .line 138
    invoke-static {v4}, Lcom/join/mgps/customview/SlidingTabDetailLayout;->e(Lcom/join/mgps/customview/SlidingTabDetailLayout;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Landroid/widget/TextView;

    .line 147
    .line 148
    if-eq p1, v1, :cond_6

    .line 149
    .line 150
    if-ne v0, p1, :cond_5

    .line 151
    .line 152
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 156
    .line 157
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    const v6, 0x7f0600b4

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabDetailLayout$b;->c:Lcom/join/mgps/customview/SlidingTabDetailLayout;

    .line 189
    .line 190
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    const v6, 0x7f0604c3

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 205
    .line 206
    .line 207
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_7
    return-void
.end method
