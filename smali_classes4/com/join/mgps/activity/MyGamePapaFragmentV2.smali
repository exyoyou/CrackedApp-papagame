.class public Lcom/join/mgps/activity/MyGamePapaFragmentV2;
.super Lcom/join/mgps/basefragment/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02b8
.end annotation


# static fields
.field public static final H:Ljava/lang/String; = "\u7f51\u6e38"

.field public static final I:Ljava/lang/String; = "\u5355\u673a"

.field public static final J:Ljava/lang/String; = "\u5bf9\u6218"

.field public static final K:Ljava/lang/String; = "\u5168\u90e8\u6e38\u620f"

.field private static final L:I = -0xcccccd

.field private static final M:I = -0x666667


# instance fields
.field A:J

.field B:Lcom/join/mgps/rpc/e;

.field C:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private D:Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

.field E:Z

.field F:I

.field private G:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

.field private d:Landroid/content/Context;

.field e:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field v:Lcom/join/mgps/pref/f;

.field private w:Z

.field private x:Lcom/join/mgps/dto/OnlineCouponConfigBean;

.field y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->r:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->s:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->t:Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->u:I

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->v:Lcom/join/mgps/pref/f;

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->w:Z

    .line 32
    .line 33
    new-instance v1, Lcom/join/mgps/activity/MyGamePapaFragmentV2$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$1;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->y:Ljava/util/ArrayList;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->E:Z

    .line 41
    .line 42
    iput v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->F:I

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic Y(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->g0()V

    return-void
.end method

.method public static synthetic Z(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->f0()V

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->D:Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 2
    .line 3
    return-object p0
.end method

.method private d0(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedPos"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x7f0713e3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f07137f

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    :goto_0
    if-ge v4, v0, :cond_8

    .line 44
    .line 45
    iget-object v5, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-eqz v5, :cond_7

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const v6, 0x7f0a10d8

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Landroid/widget/TextView;

    .line 72
    .line 73
    const v7, 0x7f0a0441

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/widget/TextView;

    .line 81
    .line 82
    if-nez v6, :cond_2

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    if-eqz v5, :cond_3

    .line 86
    .line 87
    const/16 v7, 0x8

    .line 88
    .line 89
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    if-ne v4, p1, :cond_4

    .line 93
    .line 94
    const/4 v5, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/4 v5, 0x0

    .line 97
    :goto_1
    if-eqz v5, :cond_6

    .line 98
    .line 99
    const v5, -0xcccccd

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    .line 107
    .line 108
    iget-object v5, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->z:Landroid/graphics/Typeface;

    .line 109
    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 114
    .line 115
    :goto_2
    invoke-virtual {v6, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    const v5, -0x666667

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    .line 127
    .line 128
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 129
    .line 130
    invoke-virtual {v6, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 131
    .line 132
    .line 133
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_8
    :goto_4
    return-void
.end method

.method private synthetic f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->v:Lcom/join/mgps/pref/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackHome(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic g0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d0(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method protected P()I
    .locals 1

    .line 1
    const v0, 0x7f0d02b8

    return v0
.end method

.method protected Q()I
    .locals 1

    .line 1
    const v0, 0x7f0a06c8

    return v0
.end method

.method protected R()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x42400000    # 48.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->h0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    if-le v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->C:Lcom/join/mgps/pref/PrefDef_;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->n0(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/high16 v1, 0x10000000

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->B:Lcom/join/mgps/rpc/e;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->d:Landroid/content/Context;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    const/high16 v1, 0x7f090000

    .line 82
    .line 83
    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->z:Landroid/graphics/Typeface;

    .line 88
    .line 89
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->l:Landroid/view/View;

    .line 90
    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/app/Activity;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const v1, 0x7f0a1415

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->l:Landroid/view/View;

    .line 115
    .line 116
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/w0;->j()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$2;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$2;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->y:Ljava/util/ArrayList;

    .line 128
    .line 129
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    instance-of v0, v0, Lcom/join/mgps/activity/MyGameManagerActivity;

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->m:Landroid/view/View;

    .line 139
    .line 140
    const/16 v2, 0x8

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->n:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const v3, 0x7f071646

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    float-to-int v2, v2

    .line 170
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 171
    .line 172
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 173
    .line 174
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    instance-of v0, v0, Lcom/join/mgps/activity/MGMainActivity;

    .line 182
    .line 183
    if-eqz v0, :cond_5

    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->o:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v2}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 202
    .line 203
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->o:Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->o:Landroid/view/View;

    .line 210
    .line 211
    const/4 v2, -0x1

    .line 212
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 213
    .line 214
    .line 215
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/basefragment/a;->c:Lcom/join/mgps/customview/LoadingLayout;

    .line 216
    .line 217
    new-instance v2, Lcom/join/mgps/activity/a8;

    .line 218
    .line 219
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/a8;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LoadingLayout;->setNoDataCallBackListener(Lcom/join/mgps/customview/LoadingLayout$a;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 226
    .line 227
    new-instance v2, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;

    .line 228
    .line 229
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 236
    .line 237
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->y:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v0, p0, p0, v2}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    .line 240
    .line 241
    .line 242
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->D:Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 243
    .line 244
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 245
    .line 246
    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 250
    .line 251
    new-instance v2, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;

    .line 252
    .line 253
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$b;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Lcom/google/android/material/tabs/d;

    .line 260
    .line 261
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 262
    .line 263
    iget-object v3, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 264
    .line 265
    new-instance v4, Lcom/join/mgps/activity/MyGamePapaFragmentV2$c;

    .line 266
    .line 267
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$c;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/material/tabs/d;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/d$b;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/google/android/material/tabs/d;->a()V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 277
    .line 278
    invoke-static {v0}, Lcom/join/mgps/Util/w2;->a(Lcom/google/android/material/tabs/TabLayout;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 282
    .line 283
    new-instance v2, Lcom/join/mgps/activity/b8;

    .line 284
    .line 285
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/b8;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-eqz v0, :cond_6

    .line 296
    .line 297
    const-string v2, "defaultTab"

    .line 298
    .line 299
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    iput v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->F:I

    .line 304
    .line 305
    :cond_6
    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->E:Z

    .line 307
    .line 308
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 309
    .line 310
    iget v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->F:I

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method back()V
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
    instance-of v0, v0, Landroid/app/Activity;

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
    check-cast v0, Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    .line 7
    .line 8
    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v1, v2, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 267
    .line 268
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 295
    .line 296
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 323
    .line 324
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 351
    .line 352
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 379
    .line 380
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 407
    .line 408
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 435
    .line 436
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-eqz v3, :cond_1

    .line 466
    .line 467
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {p1, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    if-eqz p1, :cond_2

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    check-cast p1, Ljava/lang/String;

    .line 485
    .line 486
    return-object p1

    .line 487
    :cond_2
    return-object v0
.end method

.method h0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/broadcast/NetBroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->G:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 7
    .line 8
    new-instance v1, Lcom/join/mgps/activity/MyGamePapaFragmentV2$e;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$e;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/broadcast/NetBroadcastReceiver;->a(Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->G:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method i0()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->A:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x12c

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-gtz v6, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-wide v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->A:J

    .line 17
    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/join/mgps/event/a0;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2}, Lcom/join/mgps/event/a0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method j0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/d0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/d0;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/MyGamePapaFragmentV2$d;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$d;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/d0;->d(Lcom/join/mgps/customview/d0$a;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->l:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/d0;->e(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public k0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->y:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->E:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->G:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->G:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method m0(I)V
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
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->Q()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->f:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->g:Landroid/widget/TextView;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "\u63d2\u4ef6\u6b63\u5728\u4e0b\u8f7d\u4e2d"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->h:Landroid/widget/TextView;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, "%"

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->f:Landroid/view/View;

    .line 85
    .line 86
    const/16 v0, 0x8

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method public notifyShortcutAdded(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->D:Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;->a(Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;I)Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/d8;->notifyShortcutAdded(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
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
    instance-of p1, p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->v:Lcom/join/mgps/pref/f;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->l0()V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->m0(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
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
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->E:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->E:Z

    .line 17
    .line 18
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method plugs()V
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
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyGamePlugManagerActivity_$f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method refreshGamePurchasedList()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public refreshNotOpenState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->D:Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->p:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;->a(Lcom/join/mgps/activity/MyGamePapaFragmentV2$f;I)Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/join/mgps/activity/MyGamePapaLocalFragment_;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/activity/d8;->refreshNotOpenState()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method search()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->v:Lcom/join/mgps/pref/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/join/mgps/pref/f;->callbackHome(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
