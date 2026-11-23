.class public Lcom/join/mgps/adapter/o5;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/o5$i;,
        Lcom/join/mgps/adapter/o5$t;,
        Lcom/join/mgps/adapter/o5$l;,
        Lcom/join/mgps/adapter/o5$m;,
        Lcom/join/mgps/adapter/o5$j;,
        Lcom/join/mgps/adapter/o5$o;,
        Lcom/join/mgps/adapter/o5$r;,
        Lcom/join/mgps/adapter/o5$n;,
        Lcom/join/mgps/adapter/o5$p;,
        Lcom/join/mgps/adapter/o5$q;,
        Lcom/join/mgps/adapter/o5$s;,
        Lcom/join/mgps/adapter/o5$k;,
        Lcom/join/mgps/adapter/o5$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:I = 0xc

.field public static final B:I = 0xd

.field public static final C:I = 0xe

.field public static final D:I = 0xf

.field public static final E:I = 0x10

.field public static final F:I = 0x12

.field public static final G:I = 0x13

.field public static final H:I = 0x14

.field public static final I:I = 0x15

.field public static final J:I = 0x16

.field public static final K:I = 0x17

.field public static final L:I = 0x18

.field public static final M:I = 0x19

.field public static final N:I = 0x1a

.field public static final O:I = 0x1b

.field public static final P:I = 0x1c

.field public static final Q:I = 0x1d

.field public static final R:I = 0x1e

.field public static final S:I = 0x1f

.field public static final T:I = 0x20

.field public static final U:I = 0x21

.field public static final V:I = 0x22

.field public static final W:I = 0x23

.field public static final X:I = 0x24

.field public static final Y:I = 0x25

.field public static final Z:I = 0x26

.field public static final b1:I = 0x28

.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field public static final p0:I = 0x27

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field public static final u:I = 0x6

.field public static final v:I = 0x7

.field public static final w:I = 0x8

.field public static final x:I = 0x9

.field public static final y:I = 0xa

.field public static final z:I = 0xb


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Landroidx/fragment/app/Fragment;

.field private h:Lv6/f;

.field private i:Lcom/join/android/app/component/video/h;

.field j:Lcom/join/mgps/customview/e0;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lcom/join/mgps/adapter/o5$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/join/android/app/component/video/h;Lv6/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fragment",
            "mgpapaMainItemBeans",
            "videoHelper",
            "adapterInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;",
            "Lcom/join/android/app/component/video/h;",
            "Lv6/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/adapter/o5;->n:Lcom/join/mgps/adapter/o5$i;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/adapter/o5;->g:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/join/mgps/adapter/o5;->i:Lcom/join/android/app/component/video/h;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/join/mgps/adapter/o5;->h:Lv6/f;

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    new-instance p3, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object p3, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const p3, 0x7f0711b5

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    float-to-int p2, p2

    .line 36
    iput p2, p0, Lcom/join/mgps/adapter/o5;->k:I

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const p2, 0x7f07133d

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    float-to-int p1, p1

    .line 50
    iput p1, p0, Lcom/join/mgps/adapter/o5;->l:I

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private synthetic A(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "3-2"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->M(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic B(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/o5$j;ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    invoke-virtual {p4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-eq p4, v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object p3, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    const/4 v1, 0x0

    .line 51
    if-nez p4, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    if-nez p4, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p4, p2, Lcom/join/mgps/adapter/o5$j;->q:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v2, 0x4

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, 0x4

    .line 76
    :goto_1
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p2, Lcom/join/mgps/adapter/o5$j;->n:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    if-eqz p4, :cond_3

    .line 86
    .line 87
    const/4 v1, 0x4

    .line 88
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->n:Lcom/join/mgps/adapter/o5$i;

    .line 92
    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    invoke-interface {p2, p3, p1}, Lcom/join/mgps/adapter/o5$i;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic C(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private synthetic D(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 6
    .line 7
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p3, 0x1

    .line 13
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    new-instance p3, Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    invoke-direct {p3}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->get_from()I

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->get_from_type()I

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    invoke-virtual {p3, p4}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iget-object p4, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p3, p4, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->O(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private synthetic E(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private synthetic F(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private synthetic G(Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p3, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 33
    .line 34
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    check-cast p4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 65
    .line 66
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 p5, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, 0x0

    .line 85
    :goto_0
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 86
    .line 87
    .line 88
    const p1, 0x7f0a0f6c

    .line 89
    .line 90
    .line 91
    :try_start_0
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/widget/ProgressBar;

    .line 96
    .line 97
    const v0, 0x7f0a1857

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    check-cast p4, Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/4 v1, 0x4

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    const/4 v0, 0x4

    .line 116
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    const/4 p5, 0x4

    .line 126
    :cond_3
    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/adapter/o5;->n:Lcom/join/mgps/adapter/o5$i;

    .line 135
    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    invoke-interface {p1, p2, p3}, Lcom/join/mgps/adapter/o5$i;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic H(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private synthetic I(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private synthetic J(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/o5$m;ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    invoke-virtual {p4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-eq p4, v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object p3, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    const/4 v1, 0x0

    .line 51
    if-nez p4, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    if-nez p4, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p4, p2, Lcom/join/mgps/adapter/o5$m;->o:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v2, 0x4

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, 0x4

    .line 76
    :goto_1
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p2, Lcom/join/mgps/adapter/o5$m;->n:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    if-eqz p4, :cond_3

    .line 86
    .line 87
    const/4 v1, 0x4

    .line 88
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->n:Lcom/join/mgps/adapter/o5$i;

    .line 92
    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    invoke-interface {p2, p3, p1}, Lcom/join/mgps/adapter/o5$i;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_2
    return-void
.end method

.method private K(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newsList",
            "recyclerView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    sub-int/2addr v1, v2

    .line 26
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-gt v0, v1, :cond_3

    .line 31
    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->isHasExposure()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "home"

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "204"

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getPosition()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 93
    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->getId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v3, v4, v1, v5}, Lcom/papa/sim/statistic/t;->k0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->setHasExposure(Z)V

    .line 114
    .line 115
    .line 116
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    :goto_2
    return-void
.end method

.method private L(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recomList",
            "recyclerView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    sub-int/2addr v1, v2

    .line 26
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-gt v0, v1, :cond_3

    .line 31
    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isHasExposure()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "home"

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "206"

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 65
    .line 66
    invoke-direct {p0, v3}, Lcom/join/mgps/adapter/o5;->v(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 93
    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 99
    .line 100
    invoke-direct {p0, v5}, Lcom/join/mgps/adapter/o5;->v(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v3, v4, v1, v5}, Lcom/papa/sim/statistic/t;->k0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setHasExposure(Z)V

    .line 114
    .line 115
    .line 116
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    :goto_2
    return-void
.end method

.method private M(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "22-"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/t;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "isBtn"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->w(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v0, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type_val()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v0, ""

    .line 51
    .line 52
    :goto_0
    move-object v5, v0

    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    const-string p2, "1"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string p2, "2"

    .line 59
    .line 60
    :goto_1
    move-object v6, p2

    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual/range {v1 .. v7}, Lcom/papa/sim/statistic/t;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    sget-object v0, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p2, v0, p1, v1}, Lcom/papa/sim/statistic/t;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    return-void
.end method

.method private O(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/t;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private Q(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->g:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/join/mgps/activity/PapaMainV3Fragment;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->x1(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private S(Lcom/join/mgps/adapter/o5$m;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "bean",
            "pos",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "0"

    .line 5
    .line 6
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    iget v1, p0, Lcom/join/mgps/adapter/o5;->l:I

    .line 16
    .line 17
    iget v2, p0, Lcom/join/mgps/adapter/o5;->k:I

    .line 18
    .line 19
    invoke-virtual {p3, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    iget v1, p0, Lcom/join/mgps/adapter/o5;->k:I

    .line 26
    .line 27
    iget v2, p0, Lcom/join/mgps/adapter/o5;->l:I

    .line 28
    .line 29
    invoke-virtual {p3, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 39
    .line 40
    invoke-static {p3, v1, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iget-object v1, p1, Lcom/join/mgps/adapter/o5$m;->f:Landroid/widget/TextView;

    .line 48
    .line 49
    if-nez p3, :cond_2

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p1, Lcom/join/mgps/adapter/o5$m;->n:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p1, Lcom/join/mgps/adapter/o5$m;->o:Landroid/widget/ProgressBar;

    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    if-eqz p3, :cond_5

    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_5

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    const-string v3, ","

    .line 97
    .line 98
    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    const/4 v3, 0x0

    .line 103
    :goto_2
    array-length v4, p3

    .line 104
    if-ge v3, v4, :cond_4

    .line 105
    .line 106
    aget-object v4, p3, v3

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v4, " | "

    .line 112
    .line 113
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    if-lt v3, v1, :cond_3

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    :goto_3
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->l:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    add-int/lit8 v3, v3, -0x3

    .line 129
    .line 130
    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 138
    .line 139
    new-instance v2, Lcom/join/mgps/adapter/d5;

    .line 140
    .line 141
    invoke-direct {v2, p0, p2}, Lcom/join/mgps/adapter/d5;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->m:Landroid/widget/FrameLayout;

    .line 148
    .line 149
    new-instance v2, Lcom/join/mgps/adapter/e5;

    .line 150
    .line 151
    invoke-direct {v2, p0, p2, p1, p4}, Lcom/join/mgps/adapter/e5;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/o5$m;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 158
    .line 159
    if-eqz p3, :cond_7

    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    iget-object p4, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 166
    .line 167
    invoke-virtual {p4}, Lcom/join/android/app/component/video/MultiStandVideo;->getUrl()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p4

    .line 171
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result p3

    .line 175
    if-eqz p3, :cond_6

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    if-eqz p3, :cond_7

    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    invoke-virtual {p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    if-eq p3, v1, :cond_7

    .line 196
    .line 197
    :cond_6
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p4

    .line 203
    invoke-virtual {p3, p4}, Lcom/join/android/app/component/video/MultiStandVideo;->l(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 207
    .line 208
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p4

    .line 212
    invoke-virtual {p3, p4}, Lcom/join/android/app/component/video/MultiStandVideo;->setName(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 216
    .line 217
    iget-object p4, p0, Lcom/join/mgps/adapter/o5;->i:Lcom/join/android/app/component/video/h;

    .line 218
    .line 219
    invoke-virtual {p4}, Lcom/join/android/app/component/video/h;->s()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p4

    .line 223
    invoke-virtual {p3, p4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result p4

    .line 232
    invoke-virtual {p3, p4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 233
    .line 234
    .line 235
    iget-object v2, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    const/4 v4, 0x0

    .line 242
    const/4 v5, 0x0

    .line 243
    const/4 v6, 0x0

    .line 244
    const-string v7, ""

    .line 245
    .line 246
    invoke-virtual/range {v2 .. v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 250
    .line 251
    invoke-virtual {p3, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 252
    .line 253
    .line 254
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 255
    .line 256
    invoke-virtual {p3, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 257
    .line 258
    .line 259
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 260
    .line 261
    invoke-virtual {p3, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 262
    .line 263
    .line 264
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 265
    .line 266
    invoke-virtual {p3, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 267
    .line 268
    .line 269
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 270
    .line 271
    invoke-virtual {p3, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 272
    .line 273
    .line 274
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 275
    .line 276
    invoke-virtual {p3, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 277
    .line 278
    .line 279
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 280
    .line 281
    const/4 p4, 0x0

    .line 282
    invoke-virtual {p3, p4}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    .line 284
    .line 285
    iget-object p3, p1, Lcom/join/mgps/adapter/o5$m;->p:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 286
    .line 287
    new-instance p4, Lcom/join/mgps/adapter/o5$g;

    .line 288
    .line 289
    invoke-direct {p4, p0, p2}, Lcom/join/mgps/adapter/o5$g;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3, p4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 293
    .line 294
    .line 295
    :cond_7
    iget-object v2, p1, Lcom/join/mgps/adapter/o5$m;->f:Landroid/widget/TextView;

    .line 296
    .line 297
    iget-object v3, p1, Lcom/join/mgps/adapter/o5$m;->l:Landroid/widget/TextView;

    .line 298
    .line 299
    iget-object v4, p1, Lcom/join/mgps/adapter/o5$m;->m:Landroid/widget/FrameLayout;

    .line 300
    .line 301
    iget-object v5, p1, Lcom/join/mgps/adapter/o5$m;->n:Landroid/widget/TextView;

    .line 302
    .line 303
    iget-object v6, p1, Lcom/join/mgps/adapter/o5$m;->g:Landroid/widget/LinearLayout;

    .line 304
    .line 305
    iget-object v7, p1, Lcom/join/mgps/adapter/o5$m;->h:Landroid/widget/TextView;

    .line 306
    .line 307
    iget-object v8, p1, Lcom/join/mgps/adapter/o5$m;->i:Landroid/widget/TextView;

    .line 308
    .line 309
    iget-object v9, p1, Lcom/join/mgps/adapter/o5$m;->j:Landroid/widget/ProgressBar;

    .line 310
    .line 311
    iget-object v10, p1, Lcom/join/mgps/adapter/o5$m;->k:Landroid/widget/ProgressBar;

    .line 312
    .line 313
    move-object v0, p0

    .line 314
    move-object v1, p2

    .line 315
    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/adapter/o5;->update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method private T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tvGameTags",
            "llInfo",
            "progressBar",
            "progressBarZip",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->H(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/o5;Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/join/mgps/adapter/o5;->G(Ljava/util/List;ILcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/o5;Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/o5;->D(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->I(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->A(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->z(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/o5$j;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/o5;->B(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/o5$j;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->C(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/adapter/o5;Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/o5;->F(Ljava/util/List;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->E(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->x(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/o5$m;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/o5;->J(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/o5$m;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->y(Landroid/view/View;)V

    return-void
.end method

.method static synthetic n(Lcom/join/mgps/adapter/o5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->M(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/join/mgps/adapter/o5;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/adapter/o5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/join/mgps/adapter/o5;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->K(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lcom/join/mgps/adapter/o5;)Lcom/join/mgps/adapter/o5$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5;->n:Lcom/join/mgps/adapter/o5$i;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/join/mgps/adapter/o5;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->L(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "tvGameName",
            "tvGameTags",
            "flBtn",
            "tvBtn",
            "llInfo",
            "tvAppSize",
            "loding_info",
            "progressBarZip",
            "progressBar"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v15

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v7

    const-wide/16 v16, 0x0

    if-eqz v15, :cond_0

    .line 3
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    move-wide/from16 v18, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v16

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string v1, "\u6253\u5f00"

    .line 5
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getSub_title()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_6

    :cond_1
    move-object/from16 v2, p3

    if-eqz v7, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u5f00\u59cb"

    .line 10
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_2
    const-string v0, "\u66f4\u65b0"

    const-string v6, "\u542f\u52a8"

    const-string v5, "\u83b7\u53d6"

    if-nez v15, :cond_7

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object v14, v5

    move-object/from16 v5, p9

    move-object v13, v6

    move v6, v11

    move-object v11, v7

    move v7, v12

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 13
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v11, :cond_3

    return-void

    .line 14
    :cond_3
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    iget-object v1, v8, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v1

    iget-object v2, v8, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 17
    iget-object v1, v8, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    move-result-object v1

    iget-object v2, v8, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v1

    .line 18
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v1

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 19
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 20
    :cond_4
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 21
    :cond_5
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 22
    invoke-static {v10, v9, v11}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_6

    .line 23
    :cond_6
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 24
    invoke-static {v10, v9, v11}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_6

    :cond_7
    move-object v4, v5

    move-object v3, v6

    move-object v1, v7

    .line 25
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    if-eqz v1, :cond_8

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8

    const/16 v5, 0x2b

    :cond_8
    if-eqz v5, :cond_10

    const/16 v6, 0x1b

    const-string v7, "\u6682\u505c"

    if-eq v5, v6, :cond_f

    const/16 v6, 0x30

    if-eq v5, v6, :cond_e

    const/4 v6, 0x2

    move-object/from16 p2, v7

    const-string v7, "/"

    if-eq v5, v6, :cond_c

    const/4 v6, 0x3

    if-eq v5, v6, :cond_9

    const/4 v6, 0x5

    if-eq v5, v6, :cond_a

    const/4 v6, 0x6

    if-eq v5, v6, :cond_9

    const/4 v6, 0x7

    if-eq v5, v6, :cond_10

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_a

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_10

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 v6, 0x0

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    move-object v9, v7

    move v7, v0

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 29
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "\u89e3\u538b"

    .line 31
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :pswitch_1
    move-object v9, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 34
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "\u89e3\u538b\u4e2d"

    .line 36
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :pswitch_2
    const-string v0, "\u5b89\u88c5"

    .line 37
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 38
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_6

    :pswitch_3
    move-object v9, v7

    const-string v0, "\u7b49\u5f85"

    .line 39
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 40
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :try_start_0
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v14, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 44
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 45
    :pswitch_4
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 46
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_6

    :cond_9
    move-object v0, v7

    goto :goto_2

    .line 47
    :cond_a
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 48
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_6

    :goto_2
    const-string v1, "\u7ee7\u7eed"

    .line 49
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 50
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 51
    :try_start_1
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    cmp-long v3, v1, v16

    if-nez v3, :cond_b

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 53
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_3
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v14, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    const-string v0, "\u6682\u505c\u4e2d"

    .line 56
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_c
    move-object v0, v7

    .line 57
    invoke-static {v15}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    move-object/from16 v1, p2

    .line 58
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 59
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 60
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    cmp-long v3, v1, v16

    if-nez v3, :cond_d

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 62
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_5
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v14, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 64
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 66
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto :goto_6

    :cond_f
    move-object v1, v7

    .line 68
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 69
    :cond_10
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_11

    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 71
    invoke-static {v10, v9, v1}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    :cond_11
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    .line 72
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/o5;->T(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private v(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "0"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private w(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dto"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_1
    return v0
.end method

.method private synthetic x(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "3-1"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->M(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic y(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 6
    .line 7
    const-class v2, Lcom/join/kotlin/EverdayNewGameActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "3-3"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/o5;->M(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private synthetic z(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/o5;->Q(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o5;->N(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public P(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mgpapaMainItemBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public R(Lcom/join/mgps/adapter/o5$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5;->n:Lcom/join/mgps/adapter/o5$i;

    .line 2
    .line 3
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

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
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    int-to-long v0, p1

    .line 14
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-gt v1, p1, :cond_2

    .line 15
    .line 16
    return v0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 19
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    if-ltz v0, :cond_16

    .line 6
    .line 7
    iget-object v1, v12, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_16

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gt v1, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_8

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v12, v0}, Lcom/join/mgps/adapter/o5;->getItemViewType(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, v12, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const-string v4, ","

    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/4 v6, 0x5

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    packed-switch v1, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    :pswitch_0
    goto/16 :goto_8

    .line 44
    .line 45
    :pswitch_1
    move-object/from16 v0, p1

    .line 46
    .line 47
    check-cast v0, Lcom/join/mgps/adapter/o5$k;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v3, v0, Lcom/join/mgps/adapter/o5$k;->e:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->e:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v3, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/join/android/app/component/video/MultiStandVideo;->getUrl()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eq v2, v8, :cond_3

    .line 119
    .line 120
    :cond_2
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Lcom/join/android/app/component/video/MultiStandVideo;->l(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Lcom/join/android/app/component/video/MultiStandVideo;->setName(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 139
    .line 140
    iget-object v3, v12, Lcom/join/mgps/adapter/o5;->i:Lcom/join/android/app/component/video/h;

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/join/android/app/component/video/h;->s()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v2, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 156
    .line 157
    .line 158
    iget-object v13, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    const/4 v15, 0x0

    .line 165
    const/16 v16, 0x0

    .line 166
    .line 167
    const/16 v17, 0x0

    .line 168
    .line 169
    const-string v18, ""

    .line 170
    .line 171
    invoke-virtual/range {v13 .. v18}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 175
    .line 176
    invoke-virtual {v2, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 177
    .line 178
    .line 179
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 180
    .line 181
    invoke-virtual {v2, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 185
    .line 186
    invoke-virtual {v2, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 187
    .line 188
    .line 189
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 190
    .line 191
    invoke-virtual {v2, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 192
    .line 193
    .line 194
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 195
    .line 196
    invoke-virtual {v2, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 197
    .line 198
    .line 199
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 200
    .line 201
    invoke-virtual {v2, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 205
    .line 206
    invoke-virtual {v2, v7}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->h:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 210
    .line 211
    new-instance v3, Lcom/join/mgps/adapter/o5$f;

    .line 212
    .line 213
    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/o5$f;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 217
    .line 218
    .line 219
    :cond_3
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->f:Landroid/widget/FrameLayout;

    .line 220
    .line 221
    new-instance v3, Lcom/join/mgps/adapter/c5;

    .line 222
    .line 223
    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/c5;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    iget-object v2, v0, Lcom/join/mgps/adapter/o5$k;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 230
    .line 231
    new-instance v3, Lcom/join/mgps/adapter/f5;

    .line 232
    .line 233
    invoke-direct {v3, v12, v1}, Lcom/join/mgps/adapter/f5;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, v0, Lcom/join/mgps/adapter/o5$k;->g:Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_8

    .line 245
    .line 246
    :pswitch_2
    move-object/from16 v1, p1

    .line 247
    .line 248
    check-cast v1, Lcom/join/mgps/adapter/o5$q;

    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Ljava/util/List;

    .line 255
    .line 256
    if-eqz v2, :cond_16

    .line 257
    .line 258
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-lez v3, :cond_16

    .line 263
    .line 264
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    .line 266
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    if-eqz v3, :cond_4

    .line 271
    .line 272
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 273
    .line 274
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    instance-of v3, v3, Lcom/join/mgps/adapter/c3;

    .line 279
    .line 280
    if-eqz v3, :cond_4

    .line 281
    .line 282
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 283
    .line 284
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    check-cast v3, Lcom/join/mgps/adapter/c3;

    .line 289
    .line 290
    invoke-virtual {v3}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_4

    .line 299
    .line 300
    iget-object v0, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 301
    .line 302
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Lcom/join/mgps/adapter/c3;

    .line 307
    .line 308
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_8

    .line 312
    .line 313
    :cond_4
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 314
    .line 315
    iget-object v4, v12, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 316
    .line 317
    invoke-direct {v3, v4, v9, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 318
    .line 319
    .line 320
    new-instance v4, Lcom/join/mgps/adapter/c3;

    .line 321
    .line 322
    invoke-direct {v4, v2}, Lcom/join/mgps/adapter/c3;-><init>(Ljava/util/List;)V

    .line 323
    .line 324
    .line 325
    iget-object v5, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 326
    .line 327
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    check-cast v5, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 332
    .line 333
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 334
    .line 335
    .line 336
    iget-object v5, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 337
    .line 338
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 339
    .line 340
    .line 341
    iget-object v5, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 342
    .line 343
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 344
    .line 345
    .line 346
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 347
    .line 348
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 349
    .line 350
    .line 351
    new-instance v3, Lcom/join/mgps/adapter/m5;

    .line 352
    .line 353
    invoke-direct {v3, v12, v2}, Lcom/join/mgps/adapter/m5;-><init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 357
    .line 358
    .line 359
    new-instance v3, Lcom/join/mgps/adapter/n5;

    .line 360
    .line 361
    invoke-direct {v3, v12, v2, v0}, Lcom/join/mgps/adapter/n5;-><init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/join/mgps/base/BaseQuickAdapter$h;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 368
    .line 369
    new-instance v3, Lcom/join/mgps/adapter/o5$e;

    .line 370
    .line 371
    invoke-direct {v3, v12, v2, v1}, Lcom/join/mgps/adapter/o5$e;-><init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;Lcom/join/mgps/adapter/o5$q;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_8

    .line 378
    .line 379
    :pswitch_3
    move-object/from16 v0, p1

    .line 380
    .line 381
    check-cast v0, Lcom/join/mgps/adapter/o5$r;

    .line 382
    .line 383
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Ljava/lang/Float;

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$r;->a(Lcom/join/mgps/adapter/o5$r;)Landroid/widget/TextView;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    float-to-int v4, v1

    .line 402
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 403
    .line 404
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$r;->a(Lcom/join/mgps/adapter/o5$r;)Landroid/widget/TextView;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    if-nez v3, :cond_5

    .line 420
    .line 421
    const/high16 v3, 0x3f800000    # 1.0f

    .line 422
    .line 423
    cmpg-float v1, v1, v3

    .line 424
    .line 425
    if-gtz v1, :cond_5

    .line 426
    .line 427
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$r;->a(Lcom/join/mgps/adapter/o5$r;)Landroid/widget/TextView;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .line 441
    .line 442
    goto/16 :goto_8

    .line 443
    .line 444
    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_8

    .line 449
    .line 450
    :cond_5
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$r;->a(Lcom/join/mgps/adapter/o5$r;)Landroid/widget/TextView;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_8

    .line 458
    .line 459
    :pswitch_4
    move-object/from16 v0, p1

    .line 460
    .line 461
    check-cast v0, Lcom/join/mgps/adapter/o5$p;

    .line 462
    .line 463
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 468
    .line 469
    if-eqz v1, :cond_9

    .line 470
    .line 471
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getTxt()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-nez v2, :cond_9

    .line 480
    .line 481
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    if-eqz v2, :cond_9

    .line 486
    .line 487
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$p;->a(Lcom/join/mgps/adapter/o5$p;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    iget-object v5, v12, Lcom/join/mgps/adapter/o5;->j:Lcom/join/mgps/customview/e0;

    .line 499
    .line 500
    if-nez v5, :cond_8

    .line 501
    .line 502
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getTxt()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    new-instance v4, Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .line 514
    .line 515
    new-instance v5, Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .line 519
    .line 520
    :goto_1
    array-length v6, v1

    .line 521
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 522
    .line 523
    .line 524
    move-result v7

    .line 525
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    if-ge v9, v6, :cond_7

    .line 530
    .line 531
    aget-object v6, v1, v9

    .line 532
    .line 533
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    if-nez v6, :cond_6

    .line 538
    .line 539
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    if-eqz v6, :cond_6

    .line 544
    .line 545
    aget-object v6, v1, v9

    .line 546
    .line 547
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    aget-object v6, v1, v9

    .line 551
    .line 552
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    check-cast v7, Ljava/util/List;

    .line 557
    .line 558
    add-int/lit16 v10, v9, 0x5015

    .line 559
    .line 560
    invoke-static {v8, v6, v7, v10}, Lcom/join/mgps/fragment/b5;->b0(ZLjava/lang/String;Ljava/util/List;I)Landroidx/fragment/app/Fragment;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 568
    .line 569
    goto :goto_1

    .line 570
    :cond_7
    new-instance v1, Lcom/join/mgps/customview/e0;

    .line 571
    .line 572
    iget-object v6, v12, Lcom/join/mgps/adapter/o5;->g:Landroidx/fragment/app/Fragment;

    .line 573
    .line 574
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 575
    .line 576
    .line 577
    move-result-object v6

    .line 578
    invoke-direct {v1, v6, v5, v4}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 579
    .line 580
    .line 581
    iput-object v1, v12, Lcom/join/mgps/adapter/o5;->j:Lcom/join/mgps/customview/e0;

    .line 582
    .line 583
    invoke-virtual {v1, v5, v4}, Lcom/join/mgps/customview/e0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 584
    .line 585
    .line 586
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$p;->b(Lcom/join/mgps/adapter/o5$p;)Lcom/join/mgps/customview/RecyclerviewViewpager;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    iget-object v4, v12, Lcom/join/mgps/adapter/o5;->j:Lcom/join/mgps/customview/e0;

    .line 591
    .line 592
    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 593
    .line 594
    .line 595
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$p;->b(Lcom/join/mgps/adapter/o5$p;)Lcom/join/mgps/customview/RecyclerviewViewpager;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 600
    .line 601
    .line 602
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$p;->c(Lcom/join/mgps/adapter/o5$p;)Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$p;->b(Lcom/join/mgps/adapter/o5$p;)Lcom/join/mgps/customview/RecyclerviewViewpager;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 611
    .line 612
    .line 613
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$p;->d(Lcom/join/mgps/adapter/o5$p;)Landroid/widget/LinearLayout;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    new-instance v3, Lcom/join/mgps/adapter/l5;

    .line 618
    .line 619
    invoke-direct {v3, v12}, Lcom/join/mgps/adapter/l5;-><init>(Lcom/join/mgps/adapter/o5;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    .line 624
    .line 625
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$p;->b(Lcom/join/mgps/adapter/o5$p;)Lcom/join/mgps/customview/RecyclerviewViewpager;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    new-instance v1, Lcom/join/mgps/adapter/o5$d;

    .line 630
    .line 631
    invoke-direct {v1, v12, v2}, Lcom/join/mgps/adapter/o5$d;-><init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_8

    .line 638
    .line 639
    :cond_8
    invoke-virtual {v5}, Lcom/join/mgps/customview/e0;->c()Ljava/util/ArrayList;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    if-ge v9, v1, :cond_16

    .line 656
    .line 657
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    check-cast v1, Lcom/join/mgps/fragment/b5;

    .line 662
    .line 663
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    check-cast v3, Ljava/util/List;

    .line 668
    .line 669
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/b5;->f0(Ljava/util/List;)V

    .line 670
    .line 671
    .line 672
    add-int/lit8 v9, v9, 0x1

    .line 673
    .line 674
    goto :goto_2

    .line 675
    :cond_9
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$p;->a(Lcom/join/mgps/adapter/o5$p;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_8

    .line 683
    .line 684
    :pswitch_5
    move-object/from16 v0, p1

    .line 685
    .line 686
    check-cast v0, Lcom/join/mgps/adapter/o5$o;

    .line 687
    .line 688
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    check-cast v1, Lcom/join/mgps/dto/PAPAItemTitle2;

    .line 693
    .line 694
    if-eqz v1, :cond_16

    .line 695
    .line 696
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$o;->a(Lcom/join/mgps/adapter/o5$o;)Landroid/widget/TextView;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getTitle()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    .line 706
    .line 707
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$o;->b(Lcom/join/mgps/adapter/o5$o;)Landroid/widget/TextView;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getSubTitle()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    .line 717
    .line 718
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$o;->b(Lcom/join/mgps/adapter/o5$o;)Landroid/widget/TextView;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAItemTitle2;->getSubTitle()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    if-eqz v1, :cond_a

    .line 731
    .line 732
    goto :goto_3

    .line 733
    :cond_a
    const/4 v5, 0x0

    .line 734
    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 735
    .line 736
    .line 737
    goto/16 :goto_8

    .line 738
    .line 739
    :pswitch_6
    move-object/from16 v0, p1

    .line 740
    .line 741
    check-cast v0, Lcom/join/mgps/adapter/o5$n;

    .line 742
    .line 743
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    check-cast v1, Ljava/util/List;

    .line 748
    .line 749
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 750
    .line 751
    iget-object v3, v12, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 752
    .line 753
    invoke-direct {v2, v3, v9, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 757
    .line 758
    .line 759
    new-instance v3, Lcom/join/mgps/adapter/b3;

    .line 760
    .line 761
    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/b3;-><init>(Ljava/util/List;)V

    .line 762
    .line 763
    .line 764
    new-instance v4, Lcom/join/mgps/adapter/k5;

    .line 765
    .line 766
    invoke-direct {v4, v12, v1}, Lcom/join/mgps/adapter/k5;-><init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3, v4}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 770
    .line 771
    .line 772
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$n;->a(Lcom/join/mgps/adapter/o5$n;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    invoke-virtual {v4, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 777
    .line 778
    .line 779
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$n;->a(Lcom/join/mgps/adapter/o5$n;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    const/16 v5, 0xa

    .line 784
    .line 785
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 786
    .line 787
    .line 788
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$n;->a(Lcom/join/mgps/adapter/o5$n;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 789
    .line 790
    .line 791
    move-result-object v4

    .line 792
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 793
    .line 794
    .line 795
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$n;->a(Lcom/join/mgps/adapter/o5$n;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 796
    .line 797
    .line 798
    move-result-object v4

    .line 799
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 800
    .line 801
    .line 802
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$n;->a(Lcom/join/mgps/adapter/o5$n;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 807
    .line 808
    .line 809
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$n;->a(Lcom/join/mgps/adapter/o5$n;)Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    new-instance v3, Lcom/join/mgps/adapter/o5$c;

    .line 814
    .line 815
    invoke-direct {v3, v12, v1, v0}, Lcom/join/mgps/adapter/o5$c;-><init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;Lcom/join/mgps/adapter/o5$n;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 819
    .line 820
    .line 821
    goto/16 :goto_8

    .line 822
    .line 823
    :pswitch_7
    move-object/from16 v1, p1

    .line 824
    .line 825
    check-cast v1, Lcom/join/mgps/adapter/o5$j;

    .line 826
    .line 827
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 832
    .line 833
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 834
    .line 835
    .line 836
    move-result-object v5

    .line 837
    if-eqz v5, :cond_d

    .line 838
    .line 839
    iget-object v6, v1, Lcom/join/mgps/adapter/o5$j;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 840
    .line 841
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getIco()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v10

    .line 845
    invoke-static {v6, v10}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    iget-object v6, v1, Lcom/join/mgps/adapter/o5$j;->f:Landroid/widget/TextView;

    .line 849
    .line 850
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v10

    .line 854
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v6

    .line 861
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 862
    .line 863
    .line 864
    move-result v6

    .line 865
    if-nez v6, :cond_d

    .line 866
    .line 867
    new-instance v6, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v5

    .line 876
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    const/4 v5, 0x0

    .line 881
    :goto_4
    array-length v10, v4

    .line 882
    if-ge v5, v10, :cond_c

    .line 883
    .line 884
    aget-object v10, v4, v5

    .line 885
    .line 886
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    const-string v10, " | "

    .line 890
    .line 891
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    if-lt v5, v8, :cond_b

    .line 895
    .line 896
    goto :goto_5

    .line 897
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 898
    .line 899
    goto :goto_4

    .line 900
    :cond_c
    :goto_5
    iget-object v4, v1, Lcom/join/mgps/adapter/o5$j;->l:Landroid/widget/TextView;

    .line 901
    .line 902
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 903
    .line 904
    .line 905
    move-result v5

    .line 906
    sub-int/2addr v5, v3

    .line 907
    invoke-virtual {v6, v9, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v3

    .line 911
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    .line 913
    .line 914
    :cond_d
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 915
    .line 916
    if-eqz v3, :cond_f

    .line 917
    .line 918
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    iget-object v4, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 923
    .line 924
    invoke-virtual {v4}, Lcom/join/android/app/component/video/MultiStandVideo;->getUrl()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v4

    .line 928
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    if-eqz v3, :cond_e

    .line 933
    .line 934
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 935
    .line 936
    .line 937
    move-result-object v3

    .line 938
    if-eqz v3, :cond_f

    .line 939
    .line 940
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 941
    .line 942
    .line 943
    move-result-object v3

    .line 944
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 949
    .line 950
    .line 951
    move-result v3

    .line 952
    if-eq v3, v8, :cond_f

    .line 953
    .line 954
    :cond_e
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 955
    .line 956
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v4

    .line 960
    invoke-virtual {v3, v4}, Lcom/join/android/app/component/video/MultiStandVideo;->l(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 964
    .line 965
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v4

    .line 969
    invoke-virtual {v3, v4}, Lcom/join/android/app/component/video/MultiStandVideo;->setName(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 973
    .line 974
    iget-object v4, v12, Lcom/join/mgps/adapter/o5;->i:Lcom/join/android/app/component/video/h;

    .line 975
    .line 976
    invoke-virtual {v4}, Lcom/join/android/app/component/video/h;->s()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v4

    .line 980
    invoke-virtual {v3, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 984
    .line 985
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->hashCode()I

    .line 986
    .line 987
    .line 988
    move-result v4

    .line 989
    invoke-virtual {v3, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 990
    .line 991
    .line 992
    iget-object v13, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 993
    .line 994
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getV_url()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v14

    .line 998
    const/4 v15, 0x0

    .line 999
    const/16 v16, 0x0

    .line 1000
    .line 1001
    const/16 v17, 0x0

    .line 1002
    .line 1003
    const-string v18, ""

    .line 1004
    .line 1005
    invoke-virtual/range {v13 .. v18}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 1006
    .line 1007
    .line 1008
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 1009
    .line 1010
    invoke-virtual {v3, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 1014
    .line 1015
    invoke-virtual {v3, v8}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 1016
    .line 1017
    .line 1018
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 1019
    .line 1020
    invoke-virtual {v3, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 1024
    .line 1025
    invoke-virtual {v3, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 1029
    .line 1030
    invoke-virtual {v3, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 1031
    .line 1032
    .line 1033
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 1034
    .line 1035
    invoke-virtual {v3, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 1036
    .line 1037
    .line 1038
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 1039
    .line 1040
    invoke-virtual {v3, v7}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    .line 1042
    .line 1043
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->r:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 1044
    .line 1045
    new-instance v4, Lcom/join/mgps/adapter/o5$b;

    .line 1046
    .line 1047
    invoke-direct {v4, v12, v2}, Lcom/join/mgps/adapter/o5$b;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v3, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 1051
    .line 1052
    .line 1053
    :cond_f
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->m:Landroid/widget/FrameLayout;

    .line 1054
    .line 1055
    new-instance v4, Lcom/join/mgps/adapter/i5;

    .line 1056
    .line 1057
    invoke-direct {v4, v12, v2, v1, v0}, Lcom/join/mgps/adapter/i5;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/o5$j;I)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    .line 1062
    .line 1063
    iget-object v0, v1, Lcom/join/mgps/adapter/o5$j;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1064
    .line 1065
    new-instance v3, Lcom/join/mgps/adapter/j5;

    .line 1066
    .line 1067
    invoke-direct {v3, v12, v2}, Lcom/join/mgps/adapter/j5;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    .line 1072
    .line 1073
    iget-object v0, v1, Lcom/join/mgps/adapter/o5$j;->n:Landroid/widget/TextView;

    .line 1074
    .line 1075
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    .line 1077
    .line 1078
    iget-object v0, v1, Lcom/join/mgps/adapter/o5$j;->q:Landroid/widget/ProgressBar;

    .line 1079
    .line 1080
    const/4 v3, 0x4

    .line 1081
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    .line 1083
    .line 1084
    iget-object v3, v1, Lcom/join/mgps/adapter/o5$j;->f:Landroid/widget/TextView;

    .line 1085
    .line 1086
    iget-object v4, v1, Lcom/join/mgps/adapter/o5$j;->l:Landroid/widget/TextView;

    .line 1087
    .line 1088
    iget-object v5, v1, Lcom/join/mgps/adapter/o5$j;->m:Landroid/widget/FrameLayout;

    .line 1089
    .line 1090
    iget-object v6, v1, Lcom/join/mgps/adapter/o5$j;->n:Landroid/widget/TextView;

    .line 1091
    .line 1092
    iget-object v7, v1, Lcom/join/mgps/adapter/o5$j;->g:Landroid/widget/LinearLayout;

    .line 1093
    .line 1094
    iget-object v8, v1, Lcom/join/mgps/adapter/o5$j;->h:Landroid/widget/TextView;

    .line 1095
    .line 1096
    iget-object v9, v1, Lcom/join/mgps/adapter/o5$j;->i:Landroid/widget/TextView;

    .line 1097
    .line 1098
    iget-object v10, v1, Lcom/join/mgps/adapter/o5$j;->j:Landroid/widget/ProgressBar;

    .line 1099
    .line 1100
    iget-object v11, v1, Lcom/join/mgps/adapter/o5$j;->k:Landroid/widget/ProgressBar;

    .line 1101
    .line 1102
    move-object/from16 v1, p0

    .line 1103
    .line 1104
    invoke-direct/range {v1 .. v11}, Lcom/join/mgps/adapter/o5;->update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 1105
    .line 1106
    .line 1107
    goto/16 :goto_8

    .line 1108
    .line 1109
    :pswitch_8
    move-object/from16 v1, p1

    .line 1110
    .line 1111
    check-cast v1, Lcom/join/mgps/adapter/o5$m;

    .line 1112
    .line 1113
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 1118
    .line 1119
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    if-eqz v3, :cond_16

    .line 1124
    .line 1125
    invoke-direct {v12, v1, v3, v2, v0}, Lcom/join/mgps/adapter/o5;->S(Lcom/join/mgps/adapter/o5$m;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Ljava/lang/String;I)V

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_8

    .line 1129
    .line 1130
    :pswitch_9
    move-object/from16 v0, p1

    .line 1131
    .line 1132
    check-cast v0, Lcom/join/mgps/adapter/o5$l;

    .line 1133
    .line 1134
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    check-cast v1, Ljava/util/List;

    .line 1139
    .line 1140
    if-eqz v1, :cond_16

    .line 1141
    .line 1142
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$l;->a(Lcom/join/mgps/adapter/o5$l;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    if-eqz v2, :cond_10

    .line 1151
    .line 1152
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$l;->a(Lcom/join/mgps/adapter/o5$l;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    instance-of v2, v2, Lcom/join/mgps/adapter/c0;

    .line 1161
    .line 1162
    if-eqz v2, :cond_10

    .line 1163
    .line 1164
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$l;->a(Lcom/join/mgps/adapter/o5$l;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    check-cast v0, Lcom/join/mgps/adapter/c0;

    .line 1173
    .line 1174
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v2

    .line 1178
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v2

    .line 1182
    if-nez v2, :cond_11

    .line 1183
    .line 1184
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 1185
    .line 1186
    .line 1187
    goto :goto_6

    .line 1188
    :cond_10
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$l;->a(Lcom/join/mgps/adapter/o5$l;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v2

    .line 1192
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 1193
    .line 1194
    .line 1195
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$l;->a(Lcom/join/mgps/adapter/o5$l;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 1200
    .line 1201
    .line 1202
    new-instance v2, Lcom/join/mgps/adapter/c0;

    .line 1203
    .line 1204
    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/c0;-><init>(Ljava/util/List;)V

    .line 1205
    .line 1206
    .line 1207
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 1208
    .line 1209
    iget-object v4, v12, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 1210
    .line 1211
    invoke-direct {v3, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 1212
    .line 1213
    .line 1214
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$l;->a(Lcom/join/mgps/adapter/o5$l;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v4

    .line 1218
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$l;->a(Lcom/join/mgps/adapter/o5$l;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v0

    .line 1225
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1226
    .line 1227
    .line 1228
    move-object v0, v2

    .line 1229
    :cond_11
    :goto_6
    new-instance v2, Lcom/join/mgps/adapter/o5$a;

    .line 1230
    .line 1231
    invoke-direct {v2, v12, v1}, Lcom/join/mgps/adapter/o5$a;-><init>(Lcom/join/mgps/adapter/o5;Ljava/util/List;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 1235
    .line 1236
    .line 1237
    goto/16 :goto_8

    .line 1238
    .line 1239
    :pswitch_a
    move-object/from16 v0, p1

    .line 1240
    .line 1241
    check-cast v0, Lcom/join/mgps/adapter/o5$t;

    .line 1242
    .line 1243
    invoke-virtual {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 1248
    .line 1249
    if-eqz v1, :cond_16

    .line 1250
    .line 1251
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getDiscover()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    if-eqz v2, :cond_12

    .line 1256
    .line 1257
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getDiscover()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->a(Lcom/join/mgps/adapter/o5$t;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v3

    .line 1265
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v4

    .line 1269
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->b(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/TextView;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v3

    .line 1276
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v4

    .line 1280
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    .line 1282
    .line 1283
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->d(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/RelativeLayout;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v3

    .line 1287
    new-instance v4, Lcom/join/mgps/adapter/b5;

    .line 1288
    .line 1289
    invoke-direct {v4, v12, v2}, Lcom/join/mgps/adapter/b5;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    .line 1294
    .line 1295
    :cond_12
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getTheNew()Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v2

    .line 1299
    if-eqz v2, :cond_13

    .line 1300
    .line 1301
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getTheNew()Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->e(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/TextView;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v3

    .line 1309
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1310
    .line 1311
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;->getCount()Ljava/lang/Integer;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v5

    .line 1318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    .line 1321
    const-string v5, "\u6b3e"

    .line 1322
    .line 1323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v4

    .line 1330
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    .line 1332
    .line 1333
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->f(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/RelativeLayout;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v3

    .line 1337
    new-instance v4, Lcom/join/mgps/adapter/g5;

    .line 1338
    .line 1339
    invoke-direct {v4, v12}, Lcom/join/mgps/adapter/g5;-><init>(Lcom/join/mgps/adapter/o5;)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;->getList()Ljava/util/List;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v2

    .line 1349
    if-eqz v2, :cond_13

    .line 1350
    .line 1351
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1352
    .line 1353
    .line 1354
    move-result v3

    .line 1355
    if-lez v3, :cond_13

    .line 1356
    .line 1357
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->g(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/LinearLayout;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v3

    .line 1361
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1362
    .line 1363
    .line 1364
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1369
    .line 1370
    .line 1371
    move-result v3

    .line 1372
    if-eqz v3, :cond_13

    .line 1373
    .line 1374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v3

    .line 1378
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;

    .line 1379
    .line 1380
    iget-object v4, v12, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 1381
    .line 1382
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v4

    .line 1386
    const v5, 0x7f0d071a

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v4

    .line 1393
    const v5, 0x7f0a111f

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v5

    .line 1400
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 1401
    .line 1402
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;->getIco()Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v3

    .line 1406
    invoke-static {v5, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 1407
    .line 1408
    .line 1409
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->g(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/LinearLayout;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v3

    .line 1413
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1414
    .line 1415
    .line 1416
    goto :goto_7

    .line 1417
    :cond_13
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBroadcast()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v2

    .line 1421
    if-eqz v2, :cond_14

    .line 1422
    .line 1423
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBroadcast()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v2

    .line 1427
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->h(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/TextView;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v3

    .line 1431
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getTitle()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v4

    .line 1435
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    .line 1437
    .line 1438
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->i(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/TextView;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v3

    .line 1442
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getSub_title()Ljava/lang/String;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v4

    .line 1446
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1447
    .line 1448
    .line 1449
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->j(Lcom/join/mgps/adapter/o5$t;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v3

    .line 1453
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v4

    .line 1457
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 1458
    .line 1459
    .line 1460
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->k(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/RelativeLayout;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v3

    .line 1464
    new-instance v4, Lcom/join/mgps/adapter/h5;

    .line 1465
    .line 1466
    invoke-direct {v4, v12, v2}, Lcom/join/mgps/adapter/h5;-><init>(Lcom/join/mgps/adapter/o5;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1470
    .line 1471
    .line 1472
    :cond_14
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBg_color()Ljava/lang/String;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v1

    .line 1476
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1477
    .line 1478
    .line 1479
    move-result v2

    .line 1480
    const-string v3, "#F7F8F9"

    .line 1481
    .line 1482
    if-eqz v2, :cond_15

    .line 1483
    .line 1484
    move-object v1, v3

    .line 1485
    :cond_15
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 1486
    .line 1487
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1491
    .line 1492
    .line 1493
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1494
    .line 1495
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 1496
    .line 1497
    .line 1498
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1499
    .line 1500
    .line 1501
    move-result v1

    .line 1502
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1503
    .line 1504
    .line 1505
    move-result v3

    .line 1506
    filled-new-array {v1, v3}, [I

    .line 1507
    .line 1508
    .line 1509
    move-result-object v1

    .line 1510
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 1514
    .line 1515
    .line 1516
    invoke-static {v0}, Lcom/join/mgps/adapter/o5$t;->c(Lcom/join/mgps/adapter/o5$t;)Landroid/view/View;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v0

    .line 1520
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1521
    .line 1522
    .line 1523
    :cond_16
    :goto_8
    return-void

    .line 1524
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const v1, 0x7f0d07c6

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/join/mgps/adapter/o5$k;

    .line 22
    .line 23
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$k;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :pswitch_1
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const v1, 0x7f0d071c

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Lcom/join/mgps/adapter/o5$s;

    .line 42
    .line 43
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$s;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :pswitch_2
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const v1, 0x7f0d07bc

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lcom/join/mgps/adapter/o5$q;

    .line 62
    .line 63
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$q;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const v1, 0x7f0d07bd

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance p2, Lcom/join/mgps/adapter/o5$r;

    .line 82
    .line 83
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$r;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :pswitch_4
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const v1, 0x7f0d0395

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance p2, Lcom/join/mgps/adapter/o5$p;

    .line 102
    .line 103
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$p;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_5
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    const v1, 0x7f0d07be

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance p2, Lcom/join/mgps/adapter/o5$o;

    .line 121
    .line 122
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$o;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_6
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    const v1, 0x7f0d07bb

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance p2, Lcom/join/mgps/adapter/o5$n;

    .line 140
    .line 141
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$n;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_7
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    const v1, 0x7f0d07c5

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    new-instance p2, Lcom/join/mgps/adapter/o5$j;

    .line 159
    .line 160
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$j;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_8
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 165
    .line 166
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    const v1, 0x7f0d07b5

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance p2, Lcom/join/mgps/adapter/o5$m;

    .line 178
    .line 179
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$m;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :pswitch_9
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 184
    .line 185
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    const v1, 0x7f0d0717

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-instance p2, Lcom/join/mgps/adapter/o5$l;

    .line 197
    .line 198
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$l;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_a
    iget-object p2, p0, Lcom/join/mgps/adapter/o5;->f:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    const v1, 0x7f0d071f

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-instance p2, Lcom/join/mgps/adapter/o5$t;

    .line 216
    .line 217
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/o5$t;-><init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    :goto_0
    return-object p2

    .line 221
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u(I)Lcom/join/mgps/dto/MgpapaMainItemBean;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

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
    if-le v0, p1, :cond_0

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/o5;->e:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method
