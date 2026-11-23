.class public Lcom/join/mgps/fragment/n1;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0298
.end annotation


# instance fields
.field c:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field private h:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u70ed\u95e8\u6311\u6218"

    .line 5
    .line 6
    const-string v1, "\u96be\u5ea6\u6311\u6218"

    .line 7
    .line 8
    const-string v2, "\u63a8\u8350"

    .line 9
    .line 10
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/fragment/n1;->h:[Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/fragment/n1;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/n1;->O(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/n1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/n1;->P(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic O(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private P(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/n1;->d:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->getTabCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    iget-object v3, p0, Lcom/join/mgps/fragment/n1;->d:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->j(I)Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    const v5, 0x7f0713c2

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const v5, 0x7f071395

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    int-to-float v4, v4

    .line 35
    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    .line 37
    .line 38
    if-ne v2, p1, :cond_1

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 v4, 0x0

    .line 43
    :goto_2
    const/4 v5, 0x0

    .line 44
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method


# virtual methods
.method public Q()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/join/mgps/activity/EndGameActivity_;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/activity/EndGameActivity_;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/activity/EndGameActivity;->getEndGameAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/fragment/n1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/fragment/n1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    new-instance v2, Lcom/join/mgps/fragment/m1;

    .line 39
    .line 40
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/fragment/m1;-><init>(Lcom/join/mgps/fragment/n1;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/n1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/n1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method afterviews()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/adapter/h0$a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/join/mgps/fragment/n1;->h:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aget-object v2, v2, v3

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/fragment/h1;->o0()Lcom/join/mgps/fragment/h1$m;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v5, p0, Lcom/join/mgps/fragment/n1;->f:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Lcom/join/mgps/fragment/h1$m;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-virtual {v4, v5}, Lcom/join/mgps/fragment/h1$m;->e(I)Lcom/join/mgps/fragment/h1$m;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v6, ""

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Lcom/join/mgps/fragment/h1$m;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v7, p0, Lcom/join/mgps/fragment/n1;->g:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v4, v7}, Lcom/join/mgps/fragment/h1$m;->b(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/join/mgps/fragment/h1$m;->a()Lcom/join/mgps/fragment/e1;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v1, v2, v4}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/join/mgps/adapter/h0$a;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/fragment/n1;->h:[Ljava/lang/String;

    .line 53
    .line 54
    aget-object v2, v2, v5

    .line 55
    .line 56
    invoke-static {}, Lcom/join/mgps/fragment/h1;->o0()Lcom/join/mgps/fragment/h1$m;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v5, p0, Lcom/join/mgps/fragment/n1;->f:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Lcom/join/mgps/fragment/h1$m;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/4 v5, 0x3

    .line 67
    invoke-virtual {v4, v5}, Lcom/join/mgps/fragment/h1$m;->e(I)Lcom/join/mgps/fragment/h1$m;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v6}, Lcom/join/mgps/fragment/h1$m;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-object v7, p0, Lcom/join/mgps/fragment/n1;->g:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v4, v7}, Lcom/join/mgps/fragment/h1$m;->b(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lcom/join/mgps/fragment/h1$m;->a()Lcom/join/mgps/fragment/e1;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-direct {v1, v2, v4}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/join/mgps/adapter/h0$a;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/join/mgps/fragment/n1;->h:[Ljava/lang/String;

    .line 94
    .line 95
    const/4 v4, 0x2

    .line 96
    aget-object v2, v2, v4

    .line 97
    .line 98
    invoke-static {}, Lcom/join/mgps/fragment/h1;->o0()Lcom/join/mgps/fragment/h1$m;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iget-object v8, p0, Lcom/join/mgps/fragment/n1;->f:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v7, v8}, Lcom/join/mgps/fragment/h1$m;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-virtual {v7, v4}, Lcom/join/mgps/fragment/h1$m;->e(I)Lcom/join/mgps/fragment/h1$m;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4, v6}, Lcom/join/mgps/fragment/h1$m;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iget-object v6, p0, Lcom/join/mgps/fragment/n1;->g:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v4, v6}, Lcom/join/mgps/fragment/h1$m;->b(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lcom/join/mgps/fragment/h1$m;->a()Lcom/join/mgps/fragment/e1;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-direct {v1, v2, v4}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/fragment/n1;->c:Landroidx/viewpager/widget/ViewPager;

    .line 133
    .line 134
    invoke-virtual {v1, v5}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/mgps/fragment/n1;->c:Landroidx/viewpager/widget/ViewPager;

    .line 138
    .line 139
    new-instance v2, Lcom/join/mgps/adapter/h0;

    .line 140
    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-direct {v2, v4, v0}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/fragment/n1;->d:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/join/mgps/fragment/n1;->c:Landroidx/viewpager/widget/ViewPager;

    .line 154
    .line 155
    iget-object v2, p0, Lcom/join/mgps/fragment/n1;->h:[Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/fragment/n1;->c:Landroidx/viewpager/widget/ViewPager;

    .line 161
    .line 162
    new-instance v1, Lcom/join/mgps/fragment/n1$a;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/n1$a;-><init>(Lcom/join/mgps/fragment/n1;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0, v3}, Lcom/join/mgps/fragment/n1;->P(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/fragment/n1;->Q()V

    .line 174
    .line 175
    .line 176
    return-void
.end method
