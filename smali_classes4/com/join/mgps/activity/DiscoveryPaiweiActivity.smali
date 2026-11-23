.class public Lcom/join/mgps/activity/DiscoveryPaiweiActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;,
        Lcom/join/mgps/activity/DiscoveryPaiweiActivity$g;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0045
.end annotation


# instance fields
.field private accountUtil:Lcom/join/mgps/Util/AccountUtil_;

.field private context:Landroid/content/Context;

.field private final discoveryPaiweiIndexUrl:Ljava/lang/String;

.field private gameAdapter:Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private gameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private isLoading:Z

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field main:Landroidx/constraintlayout/widget/Group;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private page:I

.field rvGame:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private vpAdapater:Lcom/join/mgps/activity/DiscoveryPaiweiActivity$g;

.field private vpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field vpRank:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->vpList:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->page:I

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/join/mgps/rpc/h;->m:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "/game/discover/index"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->discoveryPaiweiIndexUrl:Ljava/lang/String;

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->hasMore:Z

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->isLoading:Z

    .line 46
    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->isLoading:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->isLoading:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameAdapter:Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->hasMore:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$608(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->page:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->page:I

    .line 6
    .line 7
    return v0
.end method

.method private initView()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, p0, p0, v1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$g;-><init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->vpAdapater:Lcom/join/mgps/activity/DiscoveryPaiweiActivity$g;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->vpRank:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->vpRank:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->vpRank:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$c;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$c;-><init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;-><init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameAdapter:Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

    .line 37
    .line 38
    new-instance v1, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$d;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$d;-><init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->rvGame:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameAdapter:Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->rvGame:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    new-instance v1, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$e;-><init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private setStatusBarLight(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLight"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    or-int/lit16 p1, v1, 0x2000

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->accountUtil:Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/high16 v1, 0x4000000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/16 v2, 0x500

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 25
    .line 26
    .line 27
    const/high16 v1, -0x80000000

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->statubar:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->statubar:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->setStatusBarLight(Z)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->initView()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->getPaiweiGameList()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->context:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickVSZoneList:Lcom/papa/sim/statistic/Event;

    .line 74
    .line 75
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 76
    .line 77
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method getPaiweiGameList()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->isLoading:Z

    .line 3
    .line 4
    iget v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->page:I

    .line 5
    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->showLoding()V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lq5/f;->C()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v2, v2, [Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [Ljava/lang/Long;

    .line 32
    .line 33
    const-string v2, ","

    .line 34
    .line 35
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "downloadGameList"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameId:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const-string v2, "gameId"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->page:I

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "page"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->accountUtil:Lcom/join/mgps/Util/AccountUtil_;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "token"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->accountUtil:Lcom/join/mgps/Util/AccountUtil_;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "uid "

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "sign"

    .line 87
    .line 88
    invoke-static {v0}, Lcom/papa91/arc/util/SignUtils;->buildRequestSign(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/join/android/app/common/http/d;->G()Lcom/join/android/app/common/http/d;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/join/android/app/common/http/d;->H()Lcom/join/android/app/common/http/d$o;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->discoveryPaiweiIndexUrl:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v3, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$a;

    .line 106
    .line 107
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$a;-><init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V

    .line 108
    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/join/android/app/common/http/d$o;->v(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->accountUtil:Lcom/join/mgps/Util/AccountUtil_;

    .line 11
    .line 12
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->isLoading:Z

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->hasMore:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->getPaiweiGameList()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u52a0\u8f7d\u4e2d"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->main:Landroidx/constraintlayout/widget/Group;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->main:Landroidx/constraintlayout/widget/Group;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method showMain()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u4e3b\u754c\u9762main"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->main:Landroidx/constraintlayout/widget/Group;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->context:Landroid/content/Context;

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

.method updateGameList(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rs"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "code"

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/16 v2, 0xc8

    .line 14
    .line 15
    if-ne p1, v2, :cond_6

    .line 16
    .line 17
    const-string p1, "data"

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-class v2, Lcom/join/mgps/dto/DiscoveryPaiweiGameListBean;

    .line 28
    .line 29
    invoke-virtual {v1, p1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/join/mgps/dto/DiscoveryPaiweiGameListBean;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryPaiweiGameListBean;->getGame_list()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryPaiweiGameListBean;->getGame_list()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-lez v2, :cond_4

    .line 53
    .line 54
    iget v2, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->page:I

    .line 55
    .line 56
    if-ne v2, v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryPaiweiGameListBean;->getGame_list()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v1, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$b;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$b;-><init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/join/mgps/dto/DiscoveryPaiweiGameIndexBean;->getGame_id()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v4, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameId:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const/4 v2, 0x0

    .line 105
    :goto_0
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameAdapter:Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->replaceData(Ljava/util/Collection;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->vpAdapater:Lcom/join/mgps/activity/DiscoveryPaiweiActivity$g;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->gameList:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {p1, v1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$g;->a(Lcom/join/mgps/activity/DiscoveryPaiweiActivity$g;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->showMain()V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    iget p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->page:I

    .line 137
    .line 138
    if-ne p1, v1, :cond_5

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->showLodingFailed()V

    .line 141
    .line 142
    .line 143
    :cond_5
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->hasMore:Z

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    const-string p1, "message"

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_7

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->showMessage(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->showLodingFailed()V

    .line 162
    .line 163
    .line 164
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->hasMore:Z

    .line 165
    .line 166
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->isLoading:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->showLodingFailed()V

    .line 174
    .line 175
    .line 176
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->hasMore:Z

    .line 177
    .line 178
    iput-boolean v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->isLoading:Z

    .line 179
    .line 180
    :goto_2
    return-void
.end method
