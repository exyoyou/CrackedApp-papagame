.class public Lcom/join/mgps/fragment/k;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0285
.end annotation


# instance fields
.field private c:Lcom/join/mgps/customview/e0;

.field d:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/SlidingTabLayout2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/content/Context;

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/k;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/k;->g:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method O()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/Where;->battle:Lcom/papa/sim/statistic/Where;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->i:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method P(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity_;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/mgps/activity/MGMainActivity_;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->setClassifyPrimaryIndex(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public Q(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentIndex"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->c:Lcom/join/mgps/customview/e0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/customview/e0;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->d:Landroidx/viewpager/widget/ViewPager;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, p1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->d:Landroidx/viewpager/widget/ViewPager;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/k;->i:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "window"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/mgps/fragment/k;->h:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->f:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/fragment/j;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/join/mgps/fragment/j;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->f:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v1, Lcom/join/mgps/fragment/s4;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/join/mgps/fragment/s4;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->f:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v1, Lcom/join/mgps/fragment/x3;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/join/mgps/fragment/x3;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->g:Ljava/util/List;

    .line 56
    .line 57
    const-string v1, "\u5206\u7c7b"

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->g:Ljava/util/List;

    .line 63
    .line 64
    const-string v1, "\u6392\u884c"

    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->g:Ljava/util/List;

    .line 70
    .line 71
    const-string v1, "\u4e13\u9898"

    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/join/mgps/customview/e0;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/join/mgps/fragment/k;->f:Ljava/util/ArrayList;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/join/mgps/fragment/k;->g:Ljava/util/List;

    .line 85
    .line 86
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/join/mgps/fragment/k;->c:Lcom/join/mgps/customview/e0;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/mgps/fragment/k;->d:Landroidx/viewpager/widget/ViewPager;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->d:Landroidx/viewpager/widget/ViewPager;

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 103
    .line 104
    const v2, 0x7f0d0868

    .line 105
    .line 106
    .line 107
    const v3, 0x1020014

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setCustomTabView(II)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 114
    .line 115
    const v2, -0xd75d6

    .line 116
    .line 117
    .line 118
    filled-new-array {v2}, [I

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/SlidingTabLayout2;->setSelectedIndicatorColors([I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/SlidingTabLayout2;->setDistributeEvenly(Z)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const/high16 v4, 0x40a00000    # 5.0f

    .line 138
    .line 139
    invoke-static {v3, v4}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setMarginWidth(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 147
    .line 148
    iget-object v3, p0, Lcom/join/mgps/fragment/k;->d:Landroidx/viewpager/widget/ViewPager;

    .line 149
    .line 150
    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/fragment/k;->e:Lcom/join/mgps/customview/SlidingTabLayout2;

    .line 154
    .line 155
    new-instance v3, Lcom/join/mgps/fragment/k$a;

    .line 156
    .line 157
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/k$a;-><init>(Lcom/join/mgps/fragment/k;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/SlidingTabLayout2;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k;->initData()V

    .line 164
    .line 165
    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    const-string v3, "MGMainClassifyFragment"

    .line 173
    .line 174
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    const/4 v4, 0x6

    .line 179
    if-ne v3, v4, :cond_0

    .line 180
    .line 181
    iput v1, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 182
    .line 183
    :cond_0
    const/4 v5, 0x0

    .line 184
    if-nez v3, :cond_3

    .line 185
    .line 186
    const-string v3, "classfyShowType"

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-ne v0, v2, :cond_1

    .line 193
    .line 194
    iput v2, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_1
    if-ne v0, v1, :cond_2

    .line 198
    .line 199
    iput v5, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_2
    const/4 v2, 0x3

    .line 203
    if-ne v0, v2, :cond_6

    .line 204
    .line 205
    iput v1, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_3
    if-ne v3, v2, :cond_4

    .line 209
    .line 210
    iput v5, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_4
    if-ne v3, v4, :cond_5

    .line 214
    .line 215
    iput v1, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_5
    iput v2, p0, Lcom/join/mgps/fragment/k;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_0
    iget v0, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 226
    .line 227
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k;->Q(I)V

    .line 228
    .line 229
    .line 230
    iget v0, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 231
    .line 232
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k;->P(I)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method initData()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity_;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/mgps/activity/MGMainActivity_;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getClassifyPrimaryIndex()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/join/mgps/fragment/k;->j:I

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method
