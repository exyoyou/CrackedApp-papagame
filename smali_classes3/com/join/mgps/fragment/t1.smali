.class public Lcom/join/mgps/fragment/t1;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/ForumIndexHeaderView$c;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d06a4
.end annotation


# instance fields
.field private A:Z

.field B:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field C:Landroid/widget/TextView;

.field D:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field E:Landroid/widget/TextView;

.field F:Landroid/widget/LinearLayout;

.field G:Landroid/widget/TextView;

.field H:Lcom/join/mgps/customview/ScrollTextViewLayout;

.field I:Landroid/widget/ImageView;

.field J:Landroid/widget/ImageView;

.field K:Landroid/widget/ImageView;

.field L:Lcom/facebook/drawee/view/SimpleDraweeView;

.field M:Lcom/facebook/drawee/view/SimpleDraweeView;

.field N:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field public V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private W:I

.field private X:Landroid/view/animation/Animation;

.field private final c:Ljava/lang/String;

.field d:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/ImageView;
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

.field h:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lru/noties/scrollable/ScrollableLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/customview/ForumIndexHeaderView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/customview/SlidingTabLayout4;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/content/Context;

.field p:Lcom/join/mgps/rpc/i;

.field q:Lcom/join/mgps/rpc/e;

.field r:Lcom/join/mgps/rpc/b;

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroupClassify;",
            ">;"
        }
    .end annotation
.end field

.field t:Lcom/join/mgps/fragment/b0;

.field u:Lcom/join/mgps/adapter/h0;

.field v:I

.field private w:I

.field x:Landroidx/fragment/app/FragmentManager;

.field y:Z

.field private z:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->c:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/join/mgps/fragment/t1;->v:I

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/fragment/t1;->y:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/fragment/t1;->O:I

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/fragment/t1;->P:I

    .line 22
    .line 23
    iput v0, p0, Lcom/join/mgps/fragment/t1;->Q:I

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/fragment/t1;->R:I

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    iput v1, p0, Lcom/join/mgps/fragment/t1;->S:I

    .line 29
    .line 30
    iput v0, p0, Lcom/join/mgps/fragment/t1;->T:I

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/join/mgps/fragment/t1;->U:I

    .line 34
    .line 35
    iput v0, p0, Lcom/join/mgps/fragment/t1;->W:I

    .line 36
    .line 37
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/t1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/t1;->w:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/t1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/t1;->w:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic S(Lcom/join/mgps/fragment/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/t1;->Z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Z()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->H:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->p()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->K:Landroid/widget/ImageView;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->N:Lcom/join/mgps/pref/PrefDef_;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->I:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private k0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d0716

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0a120c

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->C:Landroid/widget/TextView;

    .line 25
    .line 26
    const v1, 0x7f0a0208

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 36
    .line 37
    const v1, 0x7f0a0514

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/LinearLayout;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->F:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    const v1, 0x7f0a148e

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->G:Landroid/widget/TextView;

    .line 58
    .line 59
    const v1, 0x7f0a148f

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->H:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 69
    .line 70
    const v1, 0x7f0a07f7

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/ImageView;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->I:Landroid/widget/ImageView;

    .line 80
    .line 81
    const v1, 0x7f0a0515

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/ImageView;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->J:Landroid/widget/ImageView;

    .line 91
    .line 92
    const v1, 0x7f0a086c

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/widget/ImageView;

    .line 100
    .line 101
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->K:Landroid/widget/ImageView;

    .line 102
    .line 103
    const v1, 0x7f0a03c1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 111
    .line 112
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->L:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 113
    .line 114
    const v1, 0x7f0a120a

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 122
    .line 123
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->B:Landroid/widget/RelativeLayout;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->F:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    new-instance v1, Lcom/join/mgps/fragment/t1$a;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t1$a;-><init>(Lcom/join/mgps/fragment/t1;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->F:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->Y()V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method private m0(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge p1, v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroupClassify;->getGid()I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroupClassify;->getGname()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lcom/join/mgps/adapter/h0$a;

    .line 41
    .line 42
    invoke-static {v1, p1}, Lcom/join/mgps/fragment/u1;->Y(Lcom/join/mgps/dto/RecommenGroupClassify;I)Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v3, v2, v1}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method

.method private o0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->c0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->e0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->g0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method A0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method B0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->J:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f080c58

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 10
    .line 11
    const v1, 0x7f010066

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->X:Landroid/view/animation/Animation;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->K:Landroid/widget/ImageView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->K:Landroid/widget/ImageView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->X:Landroid/view/animation/Animation;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->X:Landroid/view/animation/Animation;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/fragment/t1$b;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t1$b;-><init>(Lcom/join/mgps/fragment/t1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method C0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->K:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->K:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/fragment/t1;->S:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->J:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v1, 0x7f080c61

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->J:Landroid/widget/ImageView;

    .line 31
    .line 32
    const v1, 0x7f080c5b

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method D0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->m:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method E0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public F0()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method G0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lt6/t;->p()Lt6/t;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-static {}, Lt6/t;->p()Lt6/t;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendGroup:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lt6/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/ForumTable;->getTime()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    const-wide/16 v5, 0x3e8

    .line 43
    .line 44
    mul-long v3, v3, v5

    .line 45
    .line 46
    sub-long/2addr v1, v3

    .line 47
    sget v0, Lcom/join/mgps/Util/r0;->c:I

    .line 48
    .line 49
    int-to-long v3, v0

    .line 50
    cmp-long v0, v1, v3

    .line 51
    .line 52
    if-gez v0, :cond_3

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->A()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->loading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_0
    return-void
.end method

.method H0(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x64

    .line 11
    .line 12
    const v2, 0x7f071013

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-ge p1, v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 40
    .line 41
    iget-object v5, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 52
    .line 53
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 64
    .line 65
    const v2, 0x7f080da4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v0, v3, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .line 85
    iget-object v5, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const v6, 0x7f070993

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 101
    .line 102
    iget-object v5, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 113
    .line 114
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const/high16 v5, 0x40e00000    # 7.0f

    .line 125
    .line 126
    invoke-static {v3, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    float-to-int v2, v2

    .line 131
    const/4 v5, 0x4

    .line 132
    invoke-virtual {v0, v1, v2, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 136
    .line 137
    const/16 v5, 0x11

    .line 138
    .line 139
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 153
    .line 154
    const v2, 0x7f080ccb

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 161
    .line 162
    const/4 v2, 0x2

    .line 163
    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    .line 165
    .line 166
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 167
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p1, ""

    .line 177
    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method I0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->C0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->D:Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method J0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadingNumber"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/fragment/t1;->S:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->H:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f080ec8

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->H:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v2, 0x7f080ece

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->C0()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->J:Landroid/widget/ImageView;

    .line 53
    .line 54
    const v0, 0x7f080c58

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->B0()V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method K0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->C0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->E:Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->D:Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x7f080da5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->D:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->D:Landroid/widget/TextView;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->D:Landroid/widget/TextView;

    .line 61
    .line 62
    const v1, 0x7f0604e5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method O()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/r0;->g1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->refresh()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method P()V
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMGSettingActivity(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method T(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->m:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method V(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.backup_game_finish"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method W()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method X(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-eq p1, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    if-eq p1, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9\u54e6~"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/fragment/t1$j;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t1$j;-><init>(Lcom/join/mgps/fragment/t1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lcom/join/mgps/fragment/t1$i;

    .line 56
    .line 57
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/fragment/t1$i;-><init>(Lcom/join/mgps/fragment/t1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 75
    .line 76
    new-instance v0, Lcom/join/mgps/fragment/t1$k;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t1$k;-><init>(Lcom/join/mgps/fragment/t1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method Y()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->V()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/join/mgps/fragment/t1;->O:I

    .line 10
    .line 11
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lq5/f;->Z(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/mgps/fragment/t1;->Q:I

    .line 24
    .line 25
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lq5/f;->d0()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->J0(I)V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lcom/join/mgps/fragment/t1;->O:I

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->H0(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/t1;->Q:I

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->K0()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->I0()V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method a0()Lcom/join/mgps/fragment/v1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->t:Lcom/join/mgps/fragment/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->n:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->e:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->p:Lcom/join/mgps/rpc/i;

    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->q:Lcom/join/mgps/rpc/e;

    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->r:Lcom/join/mgps/rpc/b;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->g:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->g:Landroid/widget/TextView;

    .line 42
    .line 43
    const-string v2, "\u793e\u533a"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->n:Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    new-instance v2, Lcom/join/mgps/fragment/t1$c;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/t1$c;-><init>(Lcom/join/mgps/fragment/t1;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->m:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 59
    .line 60
    new-instance v2, Lcom/join/mgps/fragment/t1$d;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/t1$d;-><init>(Lcom/join/mgps/fragment/t1;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->m:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v2}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setmOnMeasureHeight(Lcom/join/mgps/customview/ForumIndexHeaderView$c;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/join/mgps/fragment/t1;->k0()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->j0()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->loading()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public b0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method c0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/join/mgps/Util/r0;->V(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->q:Lcom/join/mgps/rpc/e;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->Z0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v2, v1, :cond_5

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->l1(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->v0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->i0()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->D0()V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const v0, 0x7f12031e

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const-string v0, ""

    .line 95
    .line 96
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->T(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    const/16 v0, 0x9

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_2
    return-void
.end method

.method d0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/r0;->a0()Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->v0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method e0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->p:Lcom/join/mgps/rpc/i;

    .line 30
    .line 31
    invoke-interface {v2, v0, v1}, Lcom/join/mgps/rpc/i;->h0(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->q1(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->x0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->D0()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    const v0, 0x7f12031e

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const-string v0, ""

    .line 94
    .line 95
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->T(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    const/16 v0, 0x9

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_1
    return-void
.end method

.method f0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/r0;->g0()Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->x0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method g0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->p:Lcom/join/mgps/rpc/i;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/join/mgps/rpc/i;->g0(IILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->E0()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->r1(Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFlag()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, p0, Lcom/join/mgps/fragment/t1;->v:I

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFlag()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getTag_list()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getLabel_switcher()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-ne v2, v4, :cond_1

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/join/mgps/fragment/t1;->z0(ZLjava/util/List;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFlag()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-ne v1, v4, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->y0()V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFenzu()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->q0(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->E0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->D0()V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    const v0, 0x7f12031e

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    goto :goto_1

    .line 141
    :cond_6
    const-string v0, ""

    .line 142
    .line 143
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->T(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    const/16 v0, 0x9

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->E0()V

    .line 158
    .line 159
    .line 160
    :goto_2
    return-void
.end method

.method h0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/r0;->h0()Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

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
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFlag()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, p0, Lcom/join/mgps/fragment/t1;->v:I

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFlag()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getTag_list()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getLabel_switcher()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/fragment/t1;->z0(ZLjava/util/List;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFlag()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v1, v2, :cond_5

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 53
    .line 54
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFenzu()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFenzu()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->r0()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getFenzu()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->y0()V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_1
    return-void
.end method

.method i0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setNoForumBanner()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method j0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setIsIndex(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setDraggableView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/fragment/t1$f;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t1$f;-><init>(Lcom/join/mgps/fragment/t1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setCanScrollVerticallyDelegate(Lru/noties/scrollable/b;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 25
    .line 26
    new-instance v1, Lcom/join/mgps/fragment/t1$g;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t1$g;-><init>(Lcom/join/mgps/fragment/t1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setOnFlingOverListener(Lru/noties/scrollable/j;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 35
    .line 36
    new-instance v1, Lcom/join/mgps/fragment/t1$h;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t1$h;-><init>(Lcom/join/mgps/fragment/t1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->w(Lru/noties/scrollable/k;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->m:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method loading()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->n0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/fragment/t1;->o0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method n0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->d0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->f0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->h0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->x:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/join/mgps/fragment/t1;->x:Landroidx/fragment/app/FragmentManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a1353

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->h()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->g0()V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const v0, 0x7f0a068c

    .line 20
    .line 21
    .line 22
    if-ne p1, v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->w0()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->getSelectedLabel()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x3

    .line 53
    if-lt p1, v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->getSelectedIds()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/t1;->t0(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    const p1, 0x7f120140

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const-string p1, ""

    .line 84
    .line 85
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/t1;->T(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->x:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h0;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->x:Landroidx/fragment/app/FragmentManager;

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->a0()Lcom/join/mgps/fragment/v1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->a0()Lcom/join/mgps/fragment/v1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onMeasure(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/fragment/t1;->v:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    sub-int/2addr v0, v1

    .line 68
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->i:Lru/noties/scrollable/ScrollableLayout;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    sub-int/2addr p1, v1

    .line 85
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0, p1}, Lru/noties/scrollable/ScrollableLayout;->setMaxScrollY(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 97
    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->h:Lcom/join/mgps/customview/ForumLoadingView;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sub-int/2addr v0, v1

    .line 119
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->G0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->Y()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public p0()V
    .locals 0

    .line 1
    return-void
.end method

.method q0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fenzu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroupClassify;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->r0()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-lez p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->u0()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 88
    .line 89
    const/16 v0, 0x8

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_6
    :goto_0
    return-void
.end method

.method r0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->t:Lcom/join/mgps/fragment/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/join/mgps/fragment/u1;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->t:Lcom/join/mgps/fragment/b0;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/fragment/u1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/fragment/u1;->refresh()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method refresh()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/t1;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public s0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/t1;->A:Z

    .line 3
    .line 4
    return-void
.end method

.method t0(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lorg/springframework/util/LinkedMultiValueMap;

    .line 32
    .line 33
    invoke-direct {v3}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "uid"

    .line 37
    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v3, v4, v0}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "token"

    .line 57
    .line 58
    invoke-virtual {v3, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "ids"

    .line 62
    .line 63
    invoke-virtual {v3, v0, p1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->p:Lcom/join/mgps/rpc/i;

    .line 67
    .line 68
    invoke-interface {p1, v3}, Lcom/join/mgps/rpc/i;->n(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->isResult()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->A0()V

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getMsg()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/t1;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    const-string p1, "\u670d\u52a1\u5668\u5f02\u5e38"

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/t1;->T(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 143
    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_3

    .line 151
    .line 152
    const p1, 0x7f12031e

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_4

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/t1;->T(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    const/16 p1, 0x9

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 171
    .line 172
    .line 173
    :cond_5
    :goto_0
    return-void
.end method

.method u0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->x:Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->x:Landroidx/fragment/app/FragmentManager;

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/h0;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->x:Landroidx/fragment/app/FragmentManager;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    new-instance v0, Lcom/join/mgps/fragment/c0;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/fragment/t1;->x:Landroidx/fragment/app/FragmentManager;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/fragment/c0;-><init>(Landroidx/viewpager/widget/ViewPager;Landroidx/fragment/app/FragmentManager;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/fragment/t1;->t:Lcom/join/mgps/fragment/b0;

    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h0;->c()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h0;->b()V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->o:Landroid/content/Context;

    .line 73
    .line 74
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/t1;->m0(Landroid/content/Context;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h0;->e(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h0;->getCount()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v1, 0x4

    .line 92
    if-gt v0, v1, :cond_5

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 108
    .line 109
    new-instance v1, Lcom/join/mgps/fragment/t1$e;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t1$e;-><init>(Lcom/join/mgps/fragment/t1;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout4;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->k:Lcom/join/mgps/customview/SlidingTabLayout4;

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->g()V

    .line 127
    .line 128
    .line 129
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->l:Landroidx/viewpager/widget/ViewPager;

    .line 130
    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->u:Lcom/join/mgps/adapter/h0;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/join/mgps/adapter/h0;->getCount()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 140
    .line 141
    .line 142
    :cond_8
    return-void
.end method

.method v0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;->getBanner()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setBannerData(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method w0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method x0(Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/t1;->X(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;->getTuijianguanzhu()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$HomepageRecommendGroup;->getWodeguanzhu()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setHomepageRecommendGroupMy(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setHomepageRecommendGroup(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/join/mgps/fragment/t1;->s:Ljava/util/List;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method y0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setLabelsVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->D0()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method z0(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "labelSwitcher",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setLabelsVisibility(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setLabelsVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setLabelsTipVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/fragment/t1;->j:Lcom/join/mgps/customview/ForumIndexHeaderView;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setHomepageRecommendLabel(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/t1;->D0()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
