.class public Lcom/join/mgps/fragment/r4;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02d6
.end annotation


# instance fields
.field c:Lcom/join/mgps/customview/SlidingTabLayout1;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/ViewPagerCompat;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private f:Lcom/join/mgps/customview/e0;

.field g:I

.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/r4;->g:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/fragment/r4;->h:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public N(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formNewRank"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/r4;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method O(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->e:Lcom/join/mgps/customview/ViewPagerCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method afterviews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/r4;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->d:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "1"

    .line 18
    .line 19
    const/16 v2, 0x3e9

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/join/mgps/activity/k;->Z(ILjava/lang/String;)Lcom/join/mgps/activity/k;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string v1, "2"

    .line 29
    .line 30
    invoke-static {v2, v1}, Lcom/join/mgps/activity/k;->Z(ILjava/lang/String;)Lcom/join/mgps/activity/k;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const-string v1, "3"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/join/mgps/activity/k;->Z(ILjava/lang/String;)Lcom/join/mgps/activity/k;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "  \u5355\u673a\u699c  "

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const-string v2, "\u6a21\u62df\u5668\u699c"

    .line 57
    .line 58
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const-string v2, "  \u7f51\u6e38\u699c  "

    .line 62
    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/join/mgps/customview/e0;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {v2, v3, v0, v1}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/join/mgps/fragment/r4;->f:Lcom/join/mgps/customview/e0;

    .line 76
    .line 77
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/customview/e0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->f:Lcom/join/mgps/customview/e0;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->e:Lcom/join/mgps/customview/ViewPagerCompat;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/fragment/r4;->f:Lcom/join/mgps/customview/e0;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->e:Lcom/join/mgps/customview/ViewPagerCompat;

    .line 93
    .line 94
    const/4 v1, 0x3

    .line 95
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/fragment/r4;->e:Lcom/join/mgps/customview/ViewPagerCompat;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/join/mgps/fragment/r4;->M()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->c:Lcom/join/mgps/customview/SlidingTabLayout1;

    .line 114
    .line 115
    new-instance v1, Lcom/join/mgps/fragment/r4$a;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/r4$a;-><init>(Lcom/join/mgps/fragment/r4;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 121
    .line 122
    .line 123
    iget v0, p0, Lcom/join/mgps/fragment/r4;->g:I

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/r4;->O(I)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentIndex"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/r4;->g:I

    .line 2
    .line 3
    return-void
.end method
