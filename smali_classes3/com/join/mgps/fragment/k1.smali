.class public Lcom/join/mgps/fragment/k1;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0297
.end annotation


# instance fields
.field c:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field f:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u96be\u5ea6"

    .line 5
    .line 6
    const-string v1, "\u70ed\u5ea6"

    .line 7
    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/k1;->g:[Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/k1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k1;->N(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private N(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/k1;->c:Lcom/flyco/tablayout/SlidingTabLayout;

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
    iget-object v3, p0, Lcom/join/mgps/fragment/k1;->c:Lcom/flyco/tablayout/SlidingTabLayout;

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
    const-string v4, "sans-serif-medium"

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string v4, "sans-serif"

    .line 44
    .line 45
    :goto_2
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k1;->f:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->getEndgame_challenge_level()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/google/gson/Gson;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/k1;->f:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->getEndgame_challenge_level()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/fragment/k1;->h:Ljava/lang/String;

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/fragment/k1;->g:[Ljava/lang/String;

    .line 36
    .line 37
    array-length v4, v3

    .line 38
    if-ge v2, v4, :cond_1

    .line 39
    .line 40
    new-instance v4, Lcom/join/mgps/adapter/h0$a;

    .line 41
    .line 42
    aget-object v3, v3, v2

    .line 43
    .line 44
    invoke-static {}, Lcom/join/mgps/fragment/h1;->o0()Lcom/join/mgps/fragment/h1$m;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object v6, p0, Lcom/join/mgps/fragment/k1;->e:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Lcom/join/mgps/fragment/h1$m;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    add-int/lit8 v6, v2, 0x2

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Lcom/join/mgps/fragment/h1$m;->e(I)Lcom/join/mgps/fragment/h1$m;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/join/mgps/fragment/k1;->h:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Lcom/join/mgps/fragment/h1$m;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/h1$m;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Lcom/join/mgps/fragment/h1$m;->a()Lcom/join/mgps/fragment/e1;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-direct {v4, v3, v5}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/k1;->d:Landroidx/viewpager/widget/ViewPager;

    .line 80
    .line 81
    const/4 v3, 0x3

    .line 82
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/join/mgps/fragment/k1;->d:Landroidx/viewpager/widget/ViewPager;

    .line 86
    .line 87
    new-instance v3, Lcom/join/mgps/adapter/h0;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-direct {v3, v4, v0}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/fragment/k1;->c:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/join/mgps/fragment/k1;->d:Landroidx/viewpager/widget/ViewPager;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/join/mgps/fragment/k1;->g:[Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/fragment/k1;->d:Landroidx/viewpager/widget/ViewPager;

    .line 109
    .line 110
    new-instance v2, Lcom/join/mgps/fragment/k1$a;

    .line 111
    .line 112
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/k1$a;-><init>(Lcom/join/mgps/fragment/k1;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/k1;->N(I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
