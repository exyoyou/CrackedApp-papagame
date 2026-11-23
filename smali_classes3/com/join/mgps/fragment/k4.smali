.class public Lcom/join/mgps/fragment/k4;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02cd
.end annotation


# static fields
.field public static final A:I = 0xc

.field public static final B:I = 0xd

.field public static final C:I = 0xe

.field public static final D:I = 0xf

.field public static final E:I = 0x10

.field public static final F:I = 0x11

.field public static final G:I = 0x12

.field public static final H:I = 0x13

.field private static final w:I = 0x14

.field private static final x:I = 0x3

.field public static final y:I = 0x1

.field public static final z:I = 0xb


# instance fields
.field c:I

.field private d:I

.field private e:Z

.field f:Lcom/join/mgps/rpc/e;

.field g:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/adapter/v4;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
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

.field l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private m:Landroid/app/Activity;

.field n:I

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Z

.field private final u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/k4;->c:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/join/mgps/fragment/k4;->i:Ljava/util/List;

    .line 19
    .line 20
    iput v0, p0, Lcom/join/mgps/fragment/k4;->n:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/fragment/k4;->t:Z

    .line 23
    .line 24
    new-instance v0, Lcom/join/mgps/fragment/k4$d;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k4$d;-><init>(Lcom/join/mgps/fragment/k4;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/k4;->u:Landroid/view/View$OnClickListener;

    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/fragment/k4$e;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/k4$e;-><init>(Lcom/join/mgps/fragment/k4;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/fragment/k4;->v:Landroid/view/View$OnClickListener;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/fragment/k4;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/k4;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/k4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/k4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 2
    .line 3
    return p1
.end method

.method private S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->g0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->Q()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->e0()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private U()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/k4;->c:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestPnAndPc(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 28
    .line 29
    const/16 v2, 0x14

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestPnAndPc(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method private V()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGoogleRankArgs;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->R()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->T()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x14

    .line 18
    .line 19
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestPnAndPcByAreaAndRank(IIII)Lcom/join/mgps/dto/CommonRequestBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static b0(I)Lcom/join/mgps/fragment/k4;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/PaPaBannerListFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/PaPaBannerListFragment_;-><init>()V

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
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static c0(ILjava/util/HashMap;)Lcom/join/mgps/fragment/k4;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/fragment/k4;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/PaPaBannerListFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/PaPaBannerListFragment_;-><init>()V

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
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/k4;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->h:Lcom/join/mgps/adapter/v4;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method private updateDownStateList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/join/mgps/dto/PaPaBean;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 59
    .line 60
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ne v1, v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/join/mgps/dto/AppBean;

    .line 83
    .line 84
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    :goto_2
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/k4;->s:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/k4;->r:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_5

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/mgps/dto/PaPaBean;

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v2, v3, :cond_4

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/16 v3, 0xc

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    if-eq v2, v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ne v2, v3, :cond_4

    .line 55
    .line 56
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 57
    .line 58
    iget v5, p0, Lcom/join/mgps/fragment/k4;->s:I

    .line 59
    .line 60
    sub-int v5, v0, v5

    .line 61
    .line 62
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    instance-of v5, v5, Lcom/join/mgps/adapter/v4$d;

    .line 71
    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/join/mgps/adapter/v4$d;

    .line 79
    .line 80
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-nez v5, :cond_1

    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 104
    .line 105
    mul-double v6, v6, v8

    .line 106
    .line 107
    mul-double v6, v6, v8

    .line 108
    .line 109
    double-to-long v6, v6

    .line 110
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 111
    .line 112
    .line 113
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const-wide/16 v10, 0x0

    .line 115
    .line 116
    const-string v12, "/"

    .line 117
    .line 118
    cmp-long v13, v8, v10

    .line 119
    .line 120
    if-nez v13, :cond_2

    .line 121
    .line 122
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 130
    .line 131
    .line 132
    move-result-wide v10

    .line 133
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    iget-object v8, v2, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 166
    .line 167
    .line 168
    move-result-wide v10

    .line 169
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-ne v6, v3, :cond_3

    .line 198
    .line 199
    iget-object v3, v2, Lcom/join/mgps/adapter/v4$d;->d:Landroid/widget/ProgressBar;

    .line 200
    .line 201
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    long-to-int v7, v6

    .line 206
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_3
    iget-object v3, v2, Lcom/join/mgps/adapter/v4$d;->e:Landroid/widget/ProgressBar;

    .line 211
    .line 212
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 213
    .line 214
    .line 215
    move-result-wide v6

    .line 216
    long-to-int v7, v6

    .line 217
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 218
    .line 219
    .line 220
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-ne v1, v4, :cond_4

    .line 225
    .line 226
    iget-object v1, v2, Lcom/join/mgps/adapter/v4$d;->j:Landroid/widget/TextView;

    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, "/S"

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :catch_0
    move-exception v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_5
    return-void
.end method


# virtual methods
.method Q()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/fragment/k4;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->f:Lcom/join/mgps/rpc/e;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/fragment/k4;->V()Lcom/join/mgps/dto/CommonRequestBean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->N(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k4;->Y(Lcom/join/mgps/dto/ResultMainBean;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->f:Lcom/join/mgps/rpc/e;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/join/mgps/fragment/k4;->U()Lcom/join/mgps/dto/CommonRequestBean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->s0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k4;->a0(Lcom/join/mgps/dto/ResultMainBean;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->f:Lcom/join/mgps/rpc/e;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/join/mgps/fragment/k4;->U()Lcom/join/mgps/dto/CommonRequestBean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->z(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k4;->a0(Lcom/join/mgps/dto/ResultMainBean;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->f:Lcom/join/mgps/rpc/e;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/join/mgps/fragment/k4;->U()Lcom/join/mgps/dto/CommonRequestBean;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->v(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k4;->Z(Lcom/join/mgps/dto/ResultMainBean;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const-string v0, "1"

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/fragment/k4;->q:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->f:Lcom/join/mgps/rpc/e;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/join/mgps/fragment/k4;->o:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iget v3, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 94
    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestGameFactoryList(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->u(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k4;->X(Lcom/join/mgps/dto/ResultMainBean;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->f:Lcom/join/mgps/rpc/e;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/join/mgps/fragment/k4;->o:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    iget v3, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 122
    .line 123
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestGameFactoryList(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->H0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k4;->X(Lcom/join/mgps/dto/ResultMainBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "fetchData exception:"

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "PaPaList"

    .line 158
    .line 159
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->f0()V

    .line 163
    .line 164
    .line 165
    :goto_0
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method R()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/k4;->c:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-eq v0, v1, :cond_5

    .line 6
    .line 7
    const/16 v1, 0xf

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const/16 v1, 0x10

    .line 13
    .line 14
    if-eq v0, v1, :cond_4

    .line 15
    .line 16
    const/16 v1, 0x11

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 v1, 0x12

    .line 22
    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    const/16 v1, 0x13

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x4

    .line 31
    return v0

    .line 32
    :cond_3
    :goto_0
    const/4 v0, 0x2

    .line 33
    return v0

    .line 34
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_5
    :goto_2
    const/4 v0, 0x3

    .line 37
    return v0
.end method

.method T()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/k4;->c:I

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x2

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method W(Lcom/join/mgps/dto/AppBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameInfoV2_2Bean"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method X(Lcom/join/mgps/dto/ResultMainBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultMainBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameFactoryListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->h0()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/join/mgps/dto/GameFactoryListBean;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getGame_list()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getGame_list()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0x14

    .line 62
    .line 63
    if-lt v0, v1, :cond_3

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 71
    .line 72
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/k4;->k0(Lcom/join/mgps/dto/GameFactoryListBean;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k4;->i0(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->hideLoading()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->f0()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method Y(Lcom/join/mgps/dto/ResultMainBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultMainBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_8

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->h0()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/util/List;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    const/4 v2, 0x0

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-lez v3, :cond_3

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v3, 0x0

    .line 65
    :goto_0
    if-eqz v3, :cond_5

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const/16 v5, 0x14

    .line 72
    .line 73
    if-lt v4, v5, :cond_4

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iput-boolean v2, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 80
    .line 81
    :goto_1
    if-eqz v3, :cond_6

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/k4;->m0(Ljava/util/List;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    :cond_6
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/k4;->i0(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    iget p1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 94
    .line 95
    if-gt p1, v1, :cond_7

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->hideLoading()V

    .line 98
    .line 99
    .line 100
    :cond_7
    return-void

    .line 101
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->f0()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method Z(Lcom/join/mgps/dto/ResultMainBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultMainBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_8

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->h0()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;->getHead_ad()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;->getList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-lez v4, :cond_3

    .line 69
    .line 70
    const/4 v4, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v4, 0x0

    .line 73
    :goto_0
    if-eqz v4, :cond_5

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/4 v6, 0x3

    .line 80
    if-lt v5, v6, :cond_4

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    :cond_4
    iput-boolean v3, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    iput-boolean v3, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 87
    .line 88
    :goto_1
    if-eqz v4, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/k4;->j0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/k4;->i0(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    iget p1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 101
    .line 102
    if-gt p1, v2, :cond_7

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->hideLoading()V

    .line 105
    .line 106
    .line 107
    :cond_7
    return-void

    .line 108
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->f0()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method a0(Lcom/join/mgps/dto/ResultMainBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultMainBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameListAndHeadAdBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_8

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->h0()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/join/mgps/dto/GameListAndHeadAdBean;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListAndHeadAdBean;->getGame_list()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    const/4 v3, 0x0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-lez v4, :cond_3

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v4, 0x0

    .line 69
    :goto_0
    if-eqz v4, :cond_5

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v5, 0x14

    .line 76
    .line 77
    if-lt v0, v5, :cond_4

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    :cond_4
    iput-boolean v3, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    iput-boolean v3, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 84
    .line 85
    :goto_1
    if-eqz v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/k4;->l0(Lcom/join/mgps/dto/GameListAndHeadAdBean;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    .line 93
    .line 94
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/k4;->i0(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    iget p1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 98
    .line 99
    if-gt p1, v2, :cond_7

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->hideLoading()V

    .line 102
    .line 103
    .line 104
    :cond_7
    return-void

    .line 105
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->f0()V

    .line 106
    .line 107
    .line 108
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
    iput-object v0, p0, Lcom/join/mgps/fragment/k4;->f:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/adapter/v4;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/k4;->i:Ljava/util/List;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/fragment/k4;->v:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/adapter/v4;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/k4;->h:Lcom/join/mgps/adapter/v4;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/fragment/k4;->u:Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/v4;->b(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/fragment/k4;->h:Lcom/join/mgps/adapter/v4;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 46
    .line 47
    new-instance v1, Lcom/join/mgps/fragment/k4$a;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/k4$a;-><init>(Lcom/join/mgps/fragment/k4;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/fragment/k4$b;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/k4$b;-><init>(Lcom/join/mgps/fragment/k4;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 66
    .line 67
    new-instance v1, Lcom/join/mgps/fragment/k4$c;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/k4$c;-><init>(Lcom/join/mgps/fragment/k4;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/join/mgps/fragment/k4;->S()V

    .line 81
    .line 82
    .line 83
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
    iget-object p1, p0, Lcom/join/mgps/fragment/k4;->h:Lcom/join/mgps/adapter/v4;

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
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->k:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->j:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method f0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->e0()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method g0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->k:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->j:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method h0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->k:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->j:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->k:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->j:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method i0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->i:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/k4;->updateDownStateList(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 22
    .line 23
    :cond_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->i:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 44
    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/join/mgps/fragment/k4;->e:Z

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/fragment/k4;->g:Lcom/join/mgps/customview/XListView2;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/fragment/k4;->i:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-gtz p1, :cond_3

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/k4;->h:Lcom/join/mgps/adapter/v4;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method isActivityFinish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method j0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headAdList",
            "gameLists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListAndCollectionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-gt v1, v2, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/dto/PaPaBean;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x0

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/join/mgps/dto/GameListAndCollectionInfo;

    .line 55
    .line 56
    const/16 v2, 0x8

    .line 57
    .line 58
    if-lt p2, v2, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance v2, Lcom/join/mgps/dto/PaPaBean;

    .line 62
    .line 63
    invoke-direct {v2}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameListAndCollectionInfo;->getCollection_info()Lcom/join/mgps/dto/CollectionInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sget-object v4, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/join/mgps/dto/PaPaBean;

    .line 86
    .line 87
    invoke-direct {v2}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameListAndCollectionInfo;->getGame_list()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    add-int/lit8 p2, p2, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    :goto_1
    return-object v0
.end method

.method k0(Lcom/join/mgps/dto/GameFactoryListBean;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameFactoryListBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/GameFactoryListBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getHead_ad_pic()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget v2, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lcom/join/mgps/dto/GameHeadAd;

    .line 27
    .line 28
    invoke-direct {v4}, Lcom/join/mgps/dto/GameHeadAd;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/join/mgps/dto/GameHeadAd$GameMain;

    .line 32
    .line 33
    invoke-direct {v5}, Lcom/join/mgps/dto/GameHeadAd$GameMain;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v3}, Lcom/join/mgps/dto/GameHeadAd$GameMain;->setAd_switch(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v1}, Lcom/join/mgps/dto/GameHeadAd$GameMain;->setPic_remote(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/GameHeadAd;->setMain(Lcom/join/mgps/dto/GameHeadAd$GameMain;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/join/mgps/dto/PaPaBean;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    const/16 v4, 0x7f

    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "key_image_header_height"

    .line 77
    .line 78
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PaPaBean;->setImageHeaderParams(Ljava/util/HashMap;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getLogo_info()Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getLogo_info()Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->getIntroduce()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_1

    .line 106
    .line 107
    iget v1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 108
    .line 109
    if-ne v1, v3, :cond_1

    .line 110
    .line 111
    new-instance v1, Lcom/join/mgps/dto/PaPaBean;

    .line 112
    .line 113
    invoke-direct {v1}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getLogo_info()Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/join/mgps/fragment/k4;->p:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->setTitle(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getGame_list()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_3

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getGame_list()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-lez v1, :cond_3

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFactoryListBean;->getGame_list()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 175
    .line 176
    iget v2, p0, Lcom/join/mgps/fragment/k4;->n:I

    .line 177
    .line 178
    const/16 v3, 0x79

    .line 179
    .line 180
    if-ne v2, v3, :cond_2

    .line 181
    .line 182
    const/16 v2, 0x6f

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 188
    .line 189
    .line 190
    :cond_2
    new-instance v2, Lcom/join/mgps/dto/PaPaBean;

    .line 191
    .line 192
    invoke-direct {v2}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 193
    .line 194
    .line 195
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_3
    return-object v0
.end method

.method l0(Lcom/join/mgps/dto/GameListAndHeadAdBean;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headAdBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/GameListAndHeadAdBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/fragment/k4;->d:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-gt v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/join/mgps/dto/PaPaBean;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListAndHeadAdBean;->getHead_ad()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListAndHeadAdBean;->getGame_list()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 54
    .line 55
    new-instance v2, Lcom/join/mgps/dto/PaPaBean;

    .line 56
    .line 57
    invoke-direct {v2}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    return-object v0
.end method

.method m0(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 21
    .line 22
    new-instance v2, Lcom/join/mgps/dto/PaPaBean;

    .line 23
    .line 24
    invoke-direct {v2}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
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
    check-cast p1, Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "type"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/join/mgps/fragment/k4;->c:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    const-string v0, "title"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/fragment/k4;->p:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "isSingle"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/join/mgps/fragment/k4;->q:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "factory_id"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/fragment/k4;->o:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "_from"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p0, Lcom/join/mgps/fragment/k4;->n:I

    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
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
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/fragment/j4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/j4;-><init>(Lcom/join/mgps/fragment/k4;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/join/mgps/fragment/k4;->t:Z

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/join/mgps/fragment/k4;->updateProgressPartly()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
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
    iput p3, p0, Lcom/join/mgps/fragment/k4;->r:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/fragment/k4;->s:I

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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/fragment/k4;->t:Z

    .line 7
    .line 8
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/k4;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/k4;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/k4;->m:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
