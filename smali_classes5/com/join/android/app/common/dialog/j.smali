.class public Lcom/join/android/app/common/dialog/j;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/dialog/j$d;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/join/mgps/customview/NoScrollViewPager;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/join/mgps/adapter/h0;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field m:I

.field n:J

.field private o:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private p:Lcom/github/snowdream/android/app/downloader/DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/j;->j:Z

    .line 6
    .line 7
    new-instance v0, Lcom/join/android/app/common/dialog/j$c;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/j$c;-><init>(Lcom/join/android/app/common/dialog/j;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/android/app/common/dialog/j;->o:Landroid/os/Handler;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic M(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/dialog/j;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static synthetic N(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/dialog/j;->e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/android/app/common/dialog/j;Lcom/join/mgps/activity/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/android/app/common/dialog/j;->d0(Lcom/join/mgps/activity/d;I)V

    return-void
.end method

.method static synthetic P(Lcom/join/android/app/common/dialog/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/dialog/j;->i0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/customview/NoScrollViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic W(Lcom/join/android/app/common/dialog/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/dialog/j;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->o:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Y(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/adapter/h0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->h:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a0(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/j;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic d0(Lcom/join/mgps/activity/d;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/join/mgps/activity/d;->g:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/activity/d;->g:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 32
    .line 33
    add-int/lit8 v0, p2, 0x1

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/NoScrollViewPager;->setCurrentItem(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->d:Landroid/widget/TextView;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    add-int/lit8 p2, p2, 0x2

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, "/"

    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method private static synthetic e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lq5/f;->n(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->l4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static g0(Ljava/util/Map;)Lcom/join/android/app/common/dialog/j;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)",
            "Lcom/join/android/app/common/dialog/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/android/app/common/dialog/j;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/android/app/common/dialog/j;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    iput-object p0, v1, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 15
    .line 16
    return-object v1
.end method

.method private h0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->h:Lcom/join/mgps/adapter/h0;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/mgps/activity/d;

    .line 14
    .line 15
    new-instance v2, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/join/android/app/common/dialog/g;

    .line 21
    .line 22
    invoke-direct {v3, p0, v1, v0}, Lcom/join/android/app/common/dialog/g;-><init>(Lcom/join/android/app/common/dialog/j;Lcom/join/mgps/activity/d;I)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x12c

    .line 26
    .line 27
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/Button;

    .line 2
    .line 3
    const-string v1, "\u786e\u5b9a"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/Button;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->e:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private initViewPager()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    new-instance v3, Lcom/join/mgps/activity/e;

    .line 33
    .line 34
    invoke-direct {v3}, Lcom/join/mgps/activity/e;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    iput-object v4, v3, Lcom/join/mgps/activity/d;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 50
    .line 51
    iput-object v4, v3, Lcom/join/mgps/activity/d;->g:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 52
    .line 53
    new-instance v4, Lcom/join/mgps/adapter/h0$a;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v4, v2, v3}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->d:Landroid/widget/TextView;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "1/"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/join/mgps/adapter/h0;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/join/android/app/common/dialog/j;->h:Lcom/join/mgps/adapter/h0;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 119
    .line 120
    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/NoScrollViewPager;->setNoScroll(Z)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 125
    .line 126
    new-instance v1, Lcom/join/android/app/common/dialog/j$a;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/join/android/app/common/dialog/j$a;-><init>(Lcom/join/android/app/common/dialog/j;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    return-void
.end method

.method private j0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity_;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-class v3, Lcom/join/mgps/activity/MGMainActivity_;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const/high16 v2, 0x24000000

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "MainPos"

    .line 44
    .line 45
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string v1, "ismygame"

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->setTabSelect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method


# virtual methods
.method public c0(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFull"
        }
    .end annotation

    .line 1
    const/16 v0, 0x200

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 18
    .line 19
    or-int/lit16 v1, v1, 0x400

    .line 20
    .line 21
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    .line 60
    and-int/lit16 v1, v1, -0x401

    .line 61
    .line 62
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const v1, 0x7f0a0f7d

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq p1, v1, :cond_2

    .line 16
    .line 17
    const v1, 0x7f0a0f7f

    .line 18
    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lt p1, v1, :cond_1

    .line 32
    .line 33
    new-instance p1, Landroid/os/Message;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 36
    .line 37
    .line 38
    iput v2, p1, Landroid/os/Message;->what:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->o:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/join/android/app/common/dialog/j$b;

    .line 52
    .line 53
    invoke-direct {v1, p0, v0}, Lcom/join/android/app/common/dialog/j$b;-><init>(Lcom/join/android/app/common/dialog/j;I)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v2, 0x12c

    .line 57
    .line 58
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    iget-wide v3, p0, Lcom/join/android/app/common/dialog/j;->n:J

    .line 67
    .line 68
    sub-long v3, v0, v3

    .line 69
    .line 70
    const-wide/16 v5, 0x1f4

    .line 71
    .line 72
    cmp-long p1, v3, v5

    .line 73
    .line 74
    if-gtz p1, :cond_3

    .line 75
    .line 76
    iget p1, p0, Lcom/join/android/app/common/dialog/j;->m:I

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    if-ne p1, v3, :cond_3

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v3, "onComfirmGame"

    .line 87
    .line 88
    invoke-static {p1, v3}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iput-wide v0, p0, Lcom/join/android/app/common/dialog/j;->n:J

    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/Button;

    .line 94
    .line 95
    const-string v0, "\u590d\u5236\u4e2d"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/Button;

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->e:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/join/android/app/common/dialog/j$d;

    .line 111
    .line 112
    invoke-direct {p1, p0}, Lcom/join/android/app/common/dialog/j$d;-><init>(Lcom/join/android/app/common/dialog/j;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/lang/Thread;

    .line 116
    .line 117
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/dialog/j;->c0(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/join/mgps/Util/z;->e(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {p3}, Lq5/f;->d()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iput-object p3, p0, Lcom/join/android/app/common/dialog/j;->i:Ljava/util/List;

    .line 17
    .line 18
    sget-object p3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iput-object p3, p0, Lcom/join/android/app/common/dialog/j;->k:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "/wufan91/31/roms"

    .line 41
    .line 42
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    iput-object p3, p0, Lcom/join/android/app/common/dialog/j;->l:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p3, Ljava/io/File;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->l:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    const/4 v0, 0x1

    .line 72
    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 73
    .line 74
    .line 75
    const p3, 0x7f0d01fc

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const p2, 0x7f0a0f7d

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Landroid/widget/Button;

    .line 90
    .line 91
    iput-object p2, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/Button;

    .line 92
    .line 93
    const p2, 0x7f0a0f80

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object p2, p0, Lcom/join/android/app/common/dialog/j;->d:Landroid/widget/TextView;

    .line 103
    .line 104
    const p2, 0x7f0a0f7f

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object p2, p0, Lcom/join/android/app/common/dialog/j;->e:Landroid/widget/TextView;

    .line 114
    .line 115
    const p2, 0x7f0a0f83

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Lcom/join/mgps/customview/NoScrollViewPager;

    .line 123
    .line 124
    iput-object p2, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 125
    .line 126
    iget-object p2, p0, Lcom/join/android/app/common/dialog/j;->c:Landroid/widget/Button;

    .line 127
    .line 128
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/join/android/app/common/dialog/j;->e:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    const/4 p2, 0x0

    .line 137
    invoke-virtual {p0, p2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lcom/join/android/app/common/dialog/j;->initViewPager()V

    .line 141
    .line 142
    .line 143
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->f:Lcom/join/mgps/customview/NoScrollViewPager;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz p1, :cond_7

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v3, 0x5

    .line 36
    if-ne v1, v3, :cond_7

    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    if-eqz v1, :cond_7

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j;->p:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_7

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x1

    .line 64
    if-ne v1, v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "\u6e38\u620f\u89e3\u538b\u5931\u8d25\uff01"

    .line 77
    .line 78
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 83
    .line 84
    .line 85
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    .line 86
    .line 87
    new-instance v2, Lcom/join/android/app/common/dialog/h;

    .line 88
    .line 89
    invoke-direct {v2, p1}, Lcom/join/android/app/common/dialog/h;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->U(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-nez v1, :cond_4

    .line 108
    .line 109
    iput-boolean v4, p0, Lcom/join/android/app/common/dialog/j;->j:Z

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .line 113
    .line 114
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-lt v1, v2, :cond_5

    .line 121
    .line 122
    iput-boolean v3, p0, Lcom/join/android/app/common/dialog/j;->j:Z

    .line 123
    .line 124
    :cond_5
    new-instance v1, Landroid/os/Handler;

    .line 125
    .line 126
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lcom/join/android/app/common/dialog/i;

    .line 130
    .line 131
    invoke-direct {v2, p0, p1}, Lcom/join/android/app/common/dialog/i;-><init>(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 132
    .line 133
    .line 134
    const-wide/16 v5, 0xc8

    .line 135
    .line 136
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .line 138
    .line 139
    :goto_0
    add-int/2addr v0, v4

    .line 140
    iget-object p1, p0, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 141
    .line 142
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-lt v0, p1, :cond_6

    .line 147
    .line 148
    new-instance p1, Landroid/os/Message;

    .line 149
    .line 150
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 151
    .line 152
    .line 153
    iput v3, p1, Landroid/os/Message;->what:I

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->o:Landroid/os/Handler;

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    new-instance p1, Landroid/os/Message;

    .line 162
    .line 163
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 164
    .line 165
    .line 166
    iput v4, p1, Landroid/os/Message;->what:I

    .line 167
    .line 168
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j;->o:Landroid/os/Handler;

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_7
    :goto_1
    return-void
.end method
