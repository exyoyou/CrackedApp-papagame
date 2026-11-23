.class public Lcom/join/mgps/activity/k;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/join/mgps/callbacks/q;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0141
.end annotation


# instance fields
.field final A:Ljava/util/concurrent/atomic/AtomicInteger;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:I

.field private E:I

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/join/mgps/adapter/e1;

.field f:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Lcom/join/mgps/rpc/e;

.field o:Lcom/join/mgps/rpc/k;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field z:Lcom/join/mgps/dto/ExtBean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/join/mgps/activity/k;->q:I

    .line 16
    .line 17
    iput v1, p0, Lcom/join/mgps/activity/k;->r:I

    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/activity/k;->s:I

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 24
    .line 25
    iput v1, p0, Lcom/join/mgps/activity/k;->u:I

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/join/mgps/activity/k;->w:Z

    .line 30
    .line 31
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/join/mgps/activity/k;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/k;->B:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/join/mgps/activity/k;->C:Z

    .line 41
    .line 42
    iput v1, p0, Lcom/join/mgps/activity/k;->D:I

    .line 43
    .line 44
    iput v1, p0, Lcom/join/mgps/activity/k;->E:I

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/activity/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->T()V

    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/activity/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->S()V

    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/activity/k;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/activity/k;->U(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private synthetic S()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/k;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private synthetic T()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/k;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic U(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-gt p3, p1, :cond_1

    .line 8
    .line 9
    if-gez p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p3, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p3, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public static W(ILjava/lang/String;)Lcom/join/mgps/activity/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rankingType",
            "RomType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyListFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/ClassifyListFragment_;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "romType"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "uiType"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "rankingType"

    .line 23
    .line 24
    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static X(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "RomType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyListFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/ClassifyListFragment_;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "romType"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "type"

    .line 17
    .line 18
    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "uiType"

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static Y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/k;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rankingType",
            "type",
            "rankTag",
            "dimensionId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyListFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/ClassifyListFragment_;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "type"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "uiType"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "rankingType"

    .line 23
    .line 24
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string v2, "4"

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    const-string v4, "rankTag"

    .line 36
    .line 37
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p2, "dimensionId"

    .line 41
    .line 42
    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    const/16 p2, 0x3e9

    .line 46
    .line 47
    const/16 p3, 0x77

    .line 48
    .line 49
    if-ne p0, p2, :cond_4

    .line 50
    .line 51
    const-string p0, "1"

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    const/16 v3, 0x2a96

    .line 60
    .line 61
    const/16 p3, 0x2a96

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string p0, "2"

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    const/16 v3, 0x2a95

    .line 73
    .line 74
    const/16 p3, 0x2a95

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string p0, "3"

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    const/16 v3, 0x2a97

    .line 86
    .line 87
    const/16 p3, 0x2a97

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    const/16 v3, 0x2f45

    .line 97
    .line 98
    const/16 p3, 0x2f45

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const/16 v3, 0x6d

    .line 102
    .line 103
    :cond_5
    :goto_0
    const-string p0, "_from"

    .line 104
    .line 105
    invoke-virtual {v1, p0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    const-string p0, "_from_type"

    .line 109
    .line 110
    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

.method public static Z(ILjava/lang/String;)Lcom/join/mgps/activity/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rankingType",
            "type"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/join/mgps/activity/k;->Y(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/k;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static a0(ILjava/lang/String;ILandroid/os/Bundle;)Lcom/join/mgps/activity/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rankingType",
            "type",
            "uiType",
            "args"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ClassifyListFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/ClassifyListFragment_;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "type"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "uiType"

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string p1, "rankingType"

    .line 22
    .line 23
    invoke-virtual {v1, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string p0, "_from"

    .line 27
    .line 28
    const/16 p1, 0x6b

    .line 29
    .line 30
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string p0, "_from_type"

    .line 34
    .line 35
    const/16 p1, 0x75

    .line 36
    .line 37
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private expDiscountGame()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/k;->C:Z

    .line 3
    .line 4
    if-nez v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/k;->C:Z

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-gt v3, v2, :cond_2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->o2(Lcom/join/mgps/dto/CollectionBeanSub;)Z

    .line 36
    .line 37
    .line 38
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    :try_start_1
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 42
    .line 43
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v6, "discount_game"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 60
    .line 61
    .line 62
    new-instance v6, Lcom/papa/sim/statistic/Data;

    .line 63
    .line 64
    invoke-direct {v6}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 72
    .line 73
    .line 74
    iget-object v7, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 81
    .line 82
    invoke-virtual {v7, v8, v5, v6}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v5

    .line 87
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v5, v6, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    .line 119
    iput-boolean v0, p0, Lcom/join/mgps/activity/k;->C:Z

    .line 120
    .line 121
    throw v1

    .line 122
    :catch_1
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/k;->C:Z

    .line 123
    .line 124
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    .line 19
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private updateDownStateList()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    .line 19
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/k;->r:I

    .line 2
    .line 3
    if-ltz v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/activity/k;->q:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_6

    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/activity/k;->r:I

    .line 16
    .line 17
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/k;->q:I

    .line 18
    .line 19
    if-gt v0, v1, :cond_6

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v3, 0xc

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    if-eq v2, v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ne v2, v3, :cond_5

    .line 53
    .line 54
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 55
    .line 56
    iget v5, p0, Lcom/join/mgps/activity/k;->r:I

    .line 57
    .line 58
    sub-int v5, v0, v5

    .line 59
    .line 60
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    instance-of v5, v5, Lcom/join/mgps/adapter/e1$a;

    .line 69
    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/join/mgps/adapter/e1$a;

    .line 77
    .line 78
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-nez v5, :cond_2

    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 102
    .line 103
    mul-double v6, v6, v8

    .line 104
    .line 105
    mul-double v6, v6, v8

    .line 106
    .line 107
    double-to-long v6, v6

    .line 108
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 109
    .line 110
    .line 111
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const-wide/16 v10, 0x0

    .line 113
    .line 114
    const-string v12, "/"

    .line 115
    .line 116
    cmp-long v13, v8, v10

    .line 117
    .line 118
    if-nez v13, :cond_3

    .line 119
    .line 120
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/adapter/e1$a;->k:Landroid/widget/TextView;

    .line 121
    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 128
    .line 129
    .line 130
    move-result-wide v10

    .line 131
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    iget-object v8, v2, Lcom/join/mgps/adapter/e1$a;->k:Landroid/widget/TextView;

    .line 157
    .line 158
    new-instance v9, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 164
    .line 165
    .line 166
    move-result-wide v10

    .line 167
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-ne v6, v3, :cond_4

    .line 196
    .line 197
    iget-object v3, v2, Lcom/join/mgps/adapter/e1$a;->n:Landroid/widget/ProgressBar;

    .line 198
    .line 199
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 200
    .line 201
    .line 202
    move-result-wide v6

    .line 203
    long-to-int v7, v6

    .line 204
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    iget-object v3, v2, Lcom/join/mgps/adapter/e1$a;->m:Landroid/widget/ProgressBar;

    .line 209
    .line 210
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 211
    .line 212
    .line 213
    move-result-wide v6

    .line 214
    long-to-int v7, v6

    .line 215
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 216
    .line 217
    .line 218
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-ne v1, v4, :cond_5

    .line 223
    .line 224
    iget-object v1, v2, Lcom/join/mgps/adapter/e1$a;->l:Landroid/widget/TextView;

    .line 225
    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v3, "/S"

    .line 239
    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :catch_0
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    .line 254
    .line 255
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_6
    return-void
.end method


# virtual methods
.method public P()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->getSortPoint()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/k;->B:Ljava/lang/String;

    .line 22
    .line 23
    if-eq v0, v1, :cond_6

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_6

    .line 40
    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/k;->w:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->j:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/k;->i:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/k;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/k;->k:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    const/4 v0, 0x1

    .line 89
    iput v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    return-void
.end method

.method public Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameType",
            "romType",
            "sort_type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/join/mgps/activity/k;->p:I

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    iget v6, p0, Lcom/join/mgps/activity/k;->s:I

    .line 12
    .line 13
    move-object v4, p1

    .line 14
    move-object v5, p2

    .line 15
    move-object v7, p3

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameListRequestBean(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameType",
            "romType"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->getSortPoint()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/k;->B:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/join/mgps/activity/k;->w:Z

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/k;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/2addr v3, v0

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget v3, p0, Lcom/join/mgps/activity/k;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    const/16 v4, 0x3e9

    .line 51
    .line 52
    const-string v5, "4"

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    if-ne v3, v4, :cond_2

    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    new-instance p2, Lcom/join/mgps/dto/RequestModel;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-direct {p2, v3}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    new-instance v3, Lcom/join/mgps/dto/RequestRankingListArgs;

    .line 73
    .line 74
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestRankingListArgs;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestRankingListArgs;->setUid(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v4, p0, Lcom/join/mgps/activity/k;->p:I

    .line 93
    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestRankingListArgs;->setPage(Ljava/lang/Integer;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/join/mgps/activity/k;->x:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestRankingListArgs;->setType(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v4, p0, Lcom/join/mgps/activity/k;->y:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestRankingListArgs;->setDimensionId(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/join/mgps/activity/k;->o:Lcom/join/mgps/rpc/k;

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-interface {v3, p2}, Lcom/join/mgps/rpc/k;->w(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    move-object v3, p2

    .line 125
    move-object p2, v6

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    new-instance v3, Lcom/join/mgps/dto/RequestTypePn;

    .line 134
    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    iget v7, p0, Lcom/join/mgps/activity/k;->p:I

    .line 140
    .line 141
    invoke-direct {v3, v4, v7}, Lcom/join/mgps/dto/RequestTypePn;-><init>(II)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getRankingV3(Lcom/join/mgps/dto/RequestTypePn;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    iget-object v3, p0, Lcom/join/mgps/activity/k;->n:Lcom/join/mgps/rpc/e;

    .line 149
    .line 150
    invoke-interface {v3, p2}, Lcom/join/mgps/rpc/e;->O0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    goto :goto_0

    .line 155
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/k;->B:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p0, p1, p2, v3}, Lcom/join/mgps/activity/k;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    iget-object v3, p0, Lcom/join/mgps/activity/k;->n:Lcom/join/mgps/rpc/e;

    .line 162
    .line 163
    invoke-interface {v3, p2}, Lcom/join/mgps/rpc/e;->g1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :goto_0
    move-object v3, v6

    .line 168
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/activity/k;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    sub-int/2addr v7, v0

    .line 175
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_3

    .line 183
    .line 184
    if-eqz v3, :cond_4

    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    move-object v6, p1

    .line 191
    check-cast v6, Ljava/util/List;

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_3
    if-eqz p2, :cond_4

    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    move-object v6, p1

    .line 205
    check-cast v6, Ljava/util/List;

    .line 206
    .line 207
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 208
    .line 209
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_5

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    check-cast p2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 224
    .line 225
    iget v3, p0, Lcom/join/mgps/activity/k;->E:I

    .line 226
    .line 227
    invoke-virtual {p2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 228
    .line 229
    .line 230
    iget v3, p0, Lcom/join/mgps/activity/k;->D:I

    .line 231
    .line 232
    invoke-virtual {p2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    iget-object v4, p0, Lcom/join/mgps/activity/k;->z:Lcom/join/mgps/dto/ExtBean;

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 242
    .line 243
    .line 244
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-lez p1, :cond_6

    .line 253
    .line 254
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/k;->showMain(Ljava/util/List;)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_6
    iget p1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 259
    .line 260
    if-ne p1, v0, :cond_7

    .line 261
    .line 262
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-nez p1, :cond_7

    .line 267
    .line 268
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/k;->i0(Z)V

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/k;->b0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :catchall_0
    move-exception p1

    .line 277
    goto :goto_5

    .line 278
    :catch_0
    move-exception p1

    .line 279
    :try_start_2
    iget-object p2, p0, Lcom/join/mgps/activity/k;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 280
    .line 281
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    sub-int/2addr v3, v0

    .line 286
    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    .line 291
    .line 292
    iget p1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 293
    .line 294
    if-ne p1, v0, :cond_8

    .line 295
    .line 296
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-nez p1, :cond_8

    .line 301
    .line 302
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/k;->i0(Z)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/k;->b0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    .line 308
    .line 309
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/k;->w:Z

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :goto_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/k;->w:Z

    .line 313
    .line 314
    throw p1

    .line 315
    :cond_9
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/k;->i0(Z)V

    .line 316
    .line 317
    .line 318
    :goto_6
    return-void
.end method

.method V()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/k;->n:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/k;->o:Lcom/join/mgps/rpc/k;

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/k;->i:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const v1, 0x7f060021

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string v1, "type"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "uiType"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, p0, Lcom/join/mgps/activity/k;->u:I

    .line 56
    .line 57
    const-string v1, "romType"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "rankingType"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, p0, Lcom/join/mgps/activity/k;->s:I

    .line 72
    .line 73
    const-string v1, "_from"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, p0, Lcom/join/mgps/activity/k;->D:I

    .line 80
    .line 81
    const-string v1, "_from_type"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, p0, Lcom/join/mgps/activity/k;->E:I

    .line 88
    .line 89
    const-string v1, "rankTag"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lcom/join/mgps/activity/k;->x:Ljava/lang/String;

    .line 96
    .line 97
    const-string v1, "dimensionId"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object v1, p0, Lcom/join/mgps/activity/k;->y:Ljava/lang/String;

    .line 104
    .line 105
    const-string v1, "pageExtBean"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/join/mgps/activity/k;->z:Lcom/join/mgps/dto/ExtBean;

    .line 114
    .line 115
    const-string v0, "4"

    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sget-object v1, Lcom/papa/sim/statistic/Event;->goGameListPage:Lcom/papa/sim/statistic/Event;

    .line 132
    .line 133
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 134
    .line 135
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "1"

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/k;->u:I

    .line 148
    .line 149
    if-lez v0, :cond_2

    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/k;->f:Landroid/widget/RelativeLayout;

    .line 152
    .line 153
    const-string v1, "#efeff4"

    .line 154
    .line 155
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    .line 161
    .line 162
    :cond_2
    iget v0, p0, Lcom/join/mgps/activity/k;->s:I

    .line 163
    .line 164
    const/4 v1, 0x1

    .line 165
    if-nez v0, :cond_3

    .line 166
    .line 167
    iput v1, p0, Lcom/join/mgps/activity/k;->s:I

    .line 168
    .line 169
    :cond_3
    iput v1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 170
    .line 171
    new-instance v0, Lcom/join/mgps/adapter/e1;

    .line 172
    .line 173
    iget-object v1, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 174
    .line 175
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/e1;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    iput-object v0, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 179
    .line 180
    iget v1, p0, Lcom/join/mgps/activity/k;->u:I

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/e1;->b(I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/join/mgps/adapter/e1;->a()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 201
    .line 202
    const/16 v1, 0xa

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/join/mgps/activity/k;->showLoding()V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 218
    .line 219
    new-instance v1, Lcom/join/mgps/activity/h;

    .line 220
    .line 221
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/h;-><init>(Lcom/join/mgps/activity/k;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 228
    .line 229
    new-instance v1, Lcom/join/mgps/activity/i;

    .line 230
    .line 231
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/i;-><init>(Lcom/join/mgps/activity/k;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 238
    .line 239
    new-instance v1, Lcom/join/mgps/activity/j;

    .line 240
    .line 241
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/j;-><init>(Lcom/join/mgps/activity/k;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 248
    .line 249
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method b0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method c0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/k;->s:I

    .line 2
    .line 3
    const/16 v1, 0x3e9

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method d0(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lt6/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method e0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/k;->s:I

    .line 2
    .line 3
    const/16 v1, 0x3e9

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/k;->showLoding()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/k;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/k;->showLoding()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/k;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 42
    .line 43
    const/16 v0, 0x8

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method

.method public h0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameType",
            "romType"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/k;->showLoding()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/k;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 27
    .line 28
    const/16 p2, 0x8

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method i0(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNormal"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-nez p1, :cond_5

    .line 18
    .line 19
    iget p1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 20
    .line 21
    if-ne p1, v1, :cond_4

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_4

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/k;->j:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/k;->i:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/k;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/k;->k:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    if-eqz p1, :cond_9

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const v0, 0x7f12031e

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    if-eqz p1, :cond_9

    .line 83
    .line 84
    iget p1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 85
    .line 86
    if-ne p1, v1, :cond_9

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_9

    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/k;->j:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/k;->i:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/k;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/k;->k:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    if-eqz p1, :cond_9

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_9
    :goto_0
    return-void
.end method

.method public j0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameType",
            "romType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
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
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq p1, v2, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq p1, v1, :cond_3

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq p1, v3, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    if-eq p1, v3, :cond_1

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    if-eq p1, v2, :cond_0

    .line 27
    .line 28
    const/16 v4, 0x30

    .line 29
    .line 30
    if-eq p1, v4, :cond_3

    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_0
    const/16 p1, 0x9

    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/k;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/k;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/k;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->updateProgressPartly()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/k;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/k;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/k;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/k;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/k;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 0
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
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onPageVisible(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/k;->z:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/k;->z:Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->expDiscountGame()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/k;->z:Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p3, p3, -0x1

    .line 3
    .line 4
    iput p3, p0, Lcom/join/mgps/activity/k;->q:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/k;->r:I

    .line 7
    .line 8
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->expDiscountGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/k;->showLoding()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/k;->t:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/k;->v:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/k;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleToUser"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of p1, p1, Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/k;->P()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->i:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/k;->j:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/activity/k;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/k;->k:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/k;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/k;->j:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/k;->i:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/k;->h:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/k;->k:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 51
    .line 52
    .line 53
    :cond_5
    iget v0, p0, Lcom/join/mgps/activity/k;->p:I

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    if-ne v0, v1, :cond_6

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    :cond_6
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->updateDownStateList()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/k;->d:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 72
    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_7

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 84
    .line 85
    .line 86
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/k;->e:Lcom/join/mgps/adapter/e1;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 89
    .line 90
    .line 91
    iget p1, p0, Lcom/join/mgps/activity/k;->p:I

    .line 92
    .line 93
    if-ne p1, v1, :cond_8

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/activity/k;->g:Lcom/join/mgps/customview/XListView2;

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/join/mgps/activity/k;->expDiscountGame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_8
    :goto_0
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/k;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/k;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/k;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/k;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
