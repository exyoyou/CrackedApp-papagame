.class public Lcom/join/mgps/fragment/z2;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d029d
.end annotation


# instance fields
.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroidx/viewpager/widget/PagerAdapter;


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
    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/fragment/z2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/z2;->U()V

    return-void
.end method

.method public static synthetic P(Lcom/join/mgps/fragment/z2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z2;->R(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/mgps/fragment/z2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/z2;->S(Landroid/view/View;)V

    return-void
.end method

.method private synthetic R(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/z2;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic S(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/z2;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic U()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/join/mgps/fragment/h3;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/fragment/h3;->refresh()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/join/mgps/fragment/d3;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/fragment/d3;->refresh()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->f:Landroidx/viewpager/widget/ViewPager;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v3, 0x8

    .line 34
    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-le v0, v2, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    instance-of v0, v0, Lcom/join/mgps/fragment/d3;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/join/mgps/fragment/d3;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/fragment/d3;->V()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendAccountInfo;->setLikedCount(I)V

    .line 85
    .line 86
    .line 87
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Landroid/view/View;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Landroid/view/View;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-lez v0, :cond_2

    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 8
    .line 9
    new-instance v2, Lcom/join/mgps/fragment/i3;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/join/mgps/fragment/i3;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 18
    .line 19
    new-instance v2, Lcom/join/mgps/fragment/e3;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/join/mgps/fragment/e3;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/join/mgps/fragment/z2$a;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v0, p0, v2}, Lcom/join/mgps/fragment/z2$a;-><init>(Lcom/join/mgps/fragment/z2;Landroidx/fragment/app/FragmentManager;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/fragment/z2;->h:Landroidx/viewpager/widget/PagerAdapter;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/fragment/z2;->f:Landroidx/viewpager/widget/ViewPager;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->f:Landroidx/viewpager/widget/ViewPager;

    .line 44
    .line 45
    new-instance v2, Lcom/join/mgps/fragment/z2$b;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/z2$b;-><init>(Lcom/join/mgps/fragment/z2;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->f:Landroidx/viewpager/widget/ViewPager;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->f:Landroidx/viewpager/widget/ViewPager;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->c:Landroid/widget/TextView;

    .line 65
    .line 66
    new-instance v2, Lcom/join/mgps/fragment/w2;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/w2;-><init>(Lcom/join/mgps/fragment/z2;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->d:Landroid/widget/TextView;

    .line 75
    .line 76
    new-instance v2, Lcom/join/mgps/fragment/x2;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/x2;-><init>(Lcom/join/mgps/fragment/z2;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-lez v0, :cond_0

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/z2;->e:Landroid/view/View;

    .line 115
    .line 116
    const/16 v1, 0x8

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void
.end method

.method close()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/activity/FriendActivity;->pop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/fragment/y2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/y2;-><init>(Lcom/join/mgps/fragment/z2;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
