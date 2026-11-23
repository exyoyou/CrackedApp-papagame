.class public Lcom/join/mgps/fragment/f;
.super Lcom/join/mgps/fragment/a;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/fragment/a;",
        "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h<",
        "Landroidx/viewpager/widget/ViewPager;",
        ">;"
    }
.end annotation


# static fields
.field private static y:Lcom/join/mgps/fragment/f;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/join/mgps/control/RhythmLayout;

.field private i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

.field private j:Landroidx/viewpager/widget/ViewPager;

.field private k:Lcom/join/mgps/adapter/d;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/join/mgps/pref/c;

.field private r:I

.field private s:Z

.field private t:Lcom/join/mgps/dto/ExtBean;

.field private u:Lcom/join/mgps/control/b;

.field private v:Lcom/join/mgps/control/a;

.field private w:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f;->m:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/join/mgps/fragment/f;->q:Lcom/join/mgps/pref/c;

    .line 9
    .line 10
    iput v0, p0, Lcom/join/mgps/fragment/f;->r:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f;->s:Z

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/fragment/f$a;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f$a;-><init>(Lcom/join/mgps/fragment/f;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->v:Lcom/join/mgps/control/a;

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/fragment/f$b;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f$b;-><init>(Lcom/join/mgps/fragment/f;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->w:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic O(Lcom/join/mgps/fragment/f;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f;->j:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f;->a0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/f;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/f;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/join/mgps/fragment/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/f;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic T(Lcom/join/mgps/fragment/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/f;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U(Lcom/join/mgps/fragment/f;)Landroid/widget/ImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f;->e:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object p0
.end method

.method private V(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->u:Lcom/join/mgps/control/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f;->b0(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/join/mgps/control/b;->a(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->u:Lcom/join/mgps/control/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/control/b;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private W()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f;->m:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f;->n:Z

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lcom/join/mgps/fragment/f;->r:I

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    iput v2, p0, Lcom/join/mgps/fragment/f;->r:I

    .line 16
    .line 17
    const-string v0, "CurrentPn"

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->q:Lcom/join/mgps/pref/c;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/join/mgps/pref/c;->callBack(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static X()Lcom/join/mgps/fragment/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/fragment/f;->y:Lcom/join/mgps/fragment/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/fragment/f;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/fragment/f;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/fragment/f;->y:Lcom/join/mgps/fragment/f;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/fragment/f;->y:Lcom/join/mgps/fragment/f;

    .line 13
    .line 14
    return-object v0
.end method

.method public static Y(Landroid/app/Activity;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "status_bar_height"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_2
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_3
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_4
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_5
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_6
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :cond_0
    :goto_0
    return v0
.end method

.method private Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->p:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->p:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/dto/GameDiscoverBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/DiscoverBean;->getBg_color()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/join/mgps/Util/m;->d(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/join/mgps/fragment/f;->l:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->p:Ljava/util/List;

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/f;->f0(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private a0(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->h:Lcom/join/mgps/control/RhythmLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/control/RhythmLayout;->w(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f;->e0(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->o:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/GameDiscoverBean;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/DiscoverBean;->getBg_color()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/m;->d(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v1, p0, Lcom/join/mgps/fragment/f;->s:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/join/mgps/activity/GameDiscoverActivity;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameDiscoverActivity;->getmTintManager()Lcom/join/android/app/common/manager/b;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameDiscoverActivity;->getmTintManager()Lcom/join/android/app/common/manager/b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lcom/join/android/app/common/manager/b;->p(I)V

    .line 53
    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/join/mgps/fragment/f;->s:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/join/mgps/activity/GameDiscoverActivity;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameDiscoverActivity;->getmTintManager()Lcom/join/android/app/common/manager/b;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameDiscoverActivity;->getmTintManager()Lcom/join/android/app/common/manager/b;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/manager/b;->k(I)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/f;->d:Landroid/view/View;

    .line 80
    .line 81
    iget v2, p0, Lcom/join/mgps/fragment/f;->l:I

    .line 82
    .line 83
    const/16 v3, 0x2bc

    .line 84
    .line 85
    invoke-static {v1, v2, v0, v3}, Lcom/join/mgps/Util/e;->k(Landroid/view/View;III)V

    .line 86
    .line 87
    .line 88
    iput v0, p0, Lcom/join/mgps/fragment/f;->l:I

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget-object v1, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 119
    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method private b0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;)V"
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
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/join/mgps/control/b;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/join/mgps/fragment/f;->h:Lcom/join/mgps/control/RhythmLayout;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, p1}, Lcom/join/mgps/control/b;-><init>(Landroid/content/Context;Lcom/join/mgps/control/RhythmLayout;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->u:Lcom/join/mgps/control/b;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->h:Lcom/join/mgps/control/RhythmLayout;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/control/RhythmLayout;->setAdapter(Lcom/join/mgps/control/b;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private d0(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewPager",
            "speed"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    const-string v1, "mScroller"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/control/c;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    .line 20
    .line 21
    const v4, 0x3f19999a    # 0.6f

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/control/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Lcom/join/mgps/control/c;->a(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private e0(I)V
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
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->e:Landroid/widget/ImageButton;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->e:Landroid/widget/ImageButton;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->e:Landroid/widget/ImageButton;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/e;->a(Landroid/view/View;)Landroid/animation/Animator;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->e:Landroid/widget/ImageButton;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->e:Landroid/widget/ImageButton;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/mgps/Util/e;->c(Landroid/view/View;)Landroid/animation/Animator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/join/mgps/fragment/f$e;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f$e;-><init>(Lcom/join/mgps/fragment/f;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 49
    .line 50
    const-string v1, "dd"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/fragment/f;->o:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/join/mgps/dto/GameDiscoverBean;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverBean;->getAddtimes()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    const-wide/16 v3, 0x3e8

    .line 72
    .line 73
    mul-long v1, v1, v3

    .line 74
    .line 75
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 84
    .line 85
    const-string v2, "MM EEEE"

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/join/mgps/fragment/f;->o:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/join/mgps/dto/GameDiscoverBean;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoverBean;->getAddtimes()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    mul-long v5, v5, v3

    .line 107
    .line 108
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v1, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v1, p0, Lcom/join/mgps/fragment/f;->g:Landroid/widget/TextView;

    .line 117
    .line 118
    const-string v2, " "

    .line 119
    .line 120
    const-string v3, "\u6708\n"

    .line 121
    .line 122
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->f:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method private f0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f;->m:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->d:Landroid/view/View;

    .line 29
    .line 30
    iget v0, p0, Lcom/join/mgps/fragment/f;->l:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->o:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/16 v3, 0xa

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    if-lt v2, v3, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f;->m:Z

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/join/mgps/dto/GameDiscoverBean;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/join/mgps/fragment/f;->t:Lcom/join/mgps/dto/ExtBean;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    sget-object v3, Lcom/papa/sim/statistic/EventP$ChatId;->dailyRecommend:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/f;->k:Lcom/join/mgps/adapter/d;

    .line 91
    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    new-instance v1, Lcom/join/mgps/adapter/d;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, v2, p1}, Lcom/join/mgps/adapter/d;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/join/mgps/fragment/f;->k:Lcom/join/mgps/adapter/d;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/join/mgps/fragment/f;->j:Landroidx/viewpager/widget/ViewPager;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v1, p1}, Lcom/join/mgps/adapter/d;->b(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/fragment/f;->k:Lcom/join/mgps/adapter/d;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f;->V(Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->k:Lcom/join/mgps/adapter/d;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/join/mgps/adapter/d;->c()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Lcom/join/mgps/fragment/f;->o:Ljava/util/List;

    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->j:Landroidx/viewpager/widget/ViewPager;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    sub-int/2addr v0, v4

    .line 141
    if-ne p1, v0, :cond_6

    .line 142
    .line 143
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->j:Landroidx/viewpager/widget/ViewPager;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v0, v4

    .line 150
    invoke-virtual {p1, v0, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    :goto_2
    return-void

    .line 155
    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public H(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pullToRefreshBase"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase<",
            "Landroidx/viewpager/widget/ViewPager;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/f;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getCurrentMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/join/mgps/fragment/f;->m:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/join/mgps/fragment/f;->n:Z

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/fragment/f$d;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f$d;-><init>(Lcom/join/mgps/fragment/f;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v1, 0x7d0

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->f()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 55
    .line 56
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 59
    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/join/mgps/fragment/f;->n:Z

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getCurrentMode()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 69
    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->f()V

    .line 75
    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/join/mgps/fragment/f;->n:Z

    .line 78
    .line 79
    :cond_3
    :goto_0
    return-void
.end method

.method protected M(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramView"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->h:Lcom/join/mgps/control/RhythmLayout;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->v:Lcom/join/mgps/control/a;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/control/RhythmLayout;->setRhythmListener(Lcom/join/mgps/control/a;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setOnRefreshListener(Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$h;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->setPullToRefreshEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->j:Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->w:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->e:Landroid/widget/ImageButton;

    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/fragment/f$c;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f$c;-><init>(Lcom/join/mgps/fragment/f;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected N(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d0291

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/join/mgps/fragment/f;->Y(Landroid/app/Activity;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/join/mgps/fragment/f;->x:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a1733

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->f:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a1734

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->g:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a0ffa

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->d:Landroid/view/View;

    .line 53
    .line 54
    const v0, 0x7f0a02bc

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/ImageButton;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->e:Landroid/widget/ImageButton;

    .line 64
    .line 65
    const v0, 0x7f0a023d

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/join/mgps/control/RhythmLayout;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->h:Lcom/join/mgps/control/RhythmLayout;

    .line 75
    .line 76
    const v0, 0x7f0a11e1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->j:Landroidx/viewpager/widget/ViewPager;

    .line 94
    .line 95
    const/16 v1, 0x2bc

    .line 96
    .line 97
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/fragment/f;->d0(Landroidx/viewpager/widget/ViewPager;I)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->h:Lcom/join/mgps/control/RhythmLayout;

    .line 101
    .line 102
    const/16 v1, 0x64

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/control/RhythmLayout;->setScrollRhythmStartDelayTime(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->h:Lcom/join/mgps/control/RhythmLayout;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/control/RhythmLayout;->getRhythmItemWidth()F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    float-to-int v0, v0

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const/4 v2, 0x1

    .line 123
    const/high16 v3, 0x41000000    # 8.0f

    .line 124
    .line 125
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    float-to-int v1, v1

    .line 130
    mul-int/lit8 v1, v1, 0x2

    .line 131
    .line 132
    add-int/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcom/join/mgps/fragment/f;->h:Lcom/join/mgps/control/RhythmLayout;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/fragment/f;->i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    .line 149
    int-to-double v2, v0

    .line 150
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    mul-double v2, v2, v4

    .line 156
    .line 157
    double-to-int v0, v2

    .line 158
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 159
    .line 160
    return-object p1
.end method

.method public c0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameDiscoverBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f;->p:Ljava/util/List;

    .line 2
    .line 3
    iget v0, p0, Lcom/join/mgps/fragment/f;->r:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/mgps/dto/GameDiscoverBean;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverBean;->getBg_color()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/join/mgps/Util/m;->d(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/join/mgps/fragment/f;->l:I

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f;->f0(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/fragment/f;->i:Lcom/join/mgps/pulltorefresh/extras/viewpager/PullToRefreshViewPager;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;->f()V

    .line 35
    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f;->n:Z

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->o:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/join/mgps/fragment/f;->r:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/fragment/f;->m:Z

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/join/mgps/fragment/f;->u:Lcom/join/mgps/control/b;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/join/mgps/fragment/f;->k:Lcom/join/mgps/adapter/d;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/f;->q:Lcom/join/mgps/pref/c;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/join/mgps/pref/c;->viewCallBack(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/f;->Z()V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f;->a0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/join/mgps/activity/GameDiscoverActivity;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/fragment/f;->q:Lcom/join/mgps/pref/c;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/f;->q:Lcom/join/mgps/pref/c;

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentExtBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f;->t:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method
