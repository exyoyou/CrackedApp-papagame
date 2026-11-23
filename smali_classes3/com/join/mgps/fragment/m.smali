.class public Lcom/join/mgps/fragment/m;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lw6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/m$h;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0287
.end annotation


# instance fields
.field A:Z

.field private B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field F:Lcom/join/mgps/dto/ArchiveNumDataBean;

.field G:I

.field H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/content/IntentFilter;

.field n:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private o:Lcom/wufan/user/service/protobuf/UserInfo;

.field p:I

.field q:I

.field r:Ljava/lang/String;

.field s:I

.field t:I

.field u:Lcom/join/mgps/rpc/d;

.field v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/join/mgps/fragment/m$h;

.field x:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field y:Lcom/join/mgps/activity/GameMainActivity3;

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/m;->c:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/fragment/m;->z:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/fragment/m;->A:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/fragment/m;->B:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/fragment/m;->C:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/fragment/m;->D:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/join/mgps/fragment/m;->E:Z

    .line 21
    .line 22
    iput v0, p0, Lcom/join/mgps/fragment/m;->G:I

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/join/mgps/fragment/m;->H:Ljava/util/List;

    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/join/mgps/fragment/m;->I:Ljava/util/List;

    .line 37
    .line 38
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/m;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/m;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/m;->B:Z

    .line 2
    .line 3
    return p1
.end method

.method private W(Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "isMarcket"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/join/mgps/Util/z;->i:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/join/mgps/Util/z;->h:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const/4 v0, 0x1

    .line 67
    if-ne p2, v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    sget-object v0, Lcom/papa/sim/statistic/Event;->VipArchive_download_page:Lcom/papa/sim/statistic/Event;

    .line 78
    .line 79
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 80
    .line 81
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 94
    .line 95
    const-string v0, "com.cloud.game.main.downCloud"

    .line 96
    .line 97
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "downCloud"

    .line 101
    .line 102
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private X()Lcom/join/mgps/dto/ArchiveBuyArgs;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 45
    .line 46
    iget v4, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 47
    .line 48
    add-int/lit8 v5, v4, 0x1

    .line 49
    .line 50
    iput v5, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ArchiveBuyArgs;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method private Y()Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method private Z(Lcom/join/mgps/dto/CloudListDataBean;I)Lcom/join/mgps/dto/ArchiveevaluateArgs;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "commentType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/m;->q:I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ""

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveEvaluate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ArchiveevaluateArgs;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method private a0()Lcom/join/mgps/dto/ArchiveshopArgs;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ""

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    iget-object v4, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 18
    .line 19
    iget v5, p0, Lcom/join/mgps/fragment/m;->t:I

    .line 20
    .line 21
    iget v6, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 22
    .line 23
    add-int/lit8 v0, v6, 0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 26
    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveshop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ArchiveshopArgs;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ""

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v4, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 70
    .line 71
    iget v5, p0, Lcom/join/mgps/fragment/m;->t:I

    .line 72
    .line 73
    iget v6, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 74
    .line 75
    add-int/lit8 v0, v6, 0x1

    .line 76
    .line 77
    iput v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 78
    .line 79
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveshop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ArchiveshopArgs;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method

.method private c0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->H:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->showLoding()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/m;->d0(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private e0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_1
    const/4 v0, 0x1

    .line 59
    return v0
.end method


# virtual methods
.method public B(Lcom/join/mgps/dto/CloudListDataBean;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "dataBean",
            "isMarcket"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->e0()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {p2}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_6

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x1

    .line 56
    if-ne v0, v1, :cond_2

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    int-to-long v4, p2

    .line 79
    cmp-long p2, v2, v4

    .line 80
    .line 81
    if-gez p2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "\u5269\u4f59\u94dc\u677f\u4e0d\u8db3\uff0c\u53bb\u7b7e\u5230\u9886\u53d6\u66f4\u591a\u94dc\u677f\u5427"

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/fragment/m;->n:Lcom/join/mgps/pref/PrefDef_;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNoticeMarcket()Lorg/androidannotations/api/sharedpreferences/d;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_5

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-eqz p2, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-nez p2, :cond_4

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_4
    new-instance p2, Lcom/join/mgps/dialog/w;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const v2, 0x7f1301b0

    .line 140
    .line 141
    .line 142
    invoke-direct {p2, v0, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    .line 143
    .line 144
    .line 145
    const-string v0, "\u83b7\u53d6\u987b\u77e5"

    .line 146
    .line 147
    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v2, "\u609f\u996d\u5e73\u53f0\u4f1a\u5458\u53ef\u514d\u8d39\u4e0b\u8f7d\u8be5\u5b58\u6863\u3002\u5982\u679c\u4f60\u4e0d\u60f3\u6210\u4e3a\u4f1a\u5458\uff0c\u53ef\u4ee5\u9009\u62e9\u6263\u9664"

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v2, "\u94dc\u677f\u7684\u65b9\u5f0f\u8fdb\u884c\u4e0b\u8f7d\uff0c\u94dc\u677f\u5c06\u8fd4\u8fd8\u81f3\u5b58\u6863\u4f5c\u8005\u3002"

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v2, "\u4e0b\u8f7d(\u6263\u9664"

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCoin()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, ")"

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    const-string v0, "\u4f1a\u5458\u514d\u8d39\u4e0b\u8f7d"

    .line 212
    .line 213
    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    new-instance v0, Lcom/join/mgps/fragment/m$g;

    .line 218
    .line 219
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/m$g;-><init>(Lcom/join/mgps/fragment/m;Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, v0}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    new-instance p2, Lcom/join/mgps/fragment/m$f;

    .line 227
    .line 228
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/m$f;-><init>(Lcom/join/mgps/fragment/m;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    new-instance p2, Lcom/join/mgps/fragment/m$e;

    .line 236
    .line 237
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/m$e;-><init>(Lcom/join/mgps/fragment/m;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1, v1}, Lcom/join/mgps/dialog/w;->h(Z)Lcom/join/mgps/dialog/w;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    new-instance p2, Lcom/join/mgps/fragment/m$d;

    .line 249
    .line 250
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/m$d;-><init>(Lcom/join/mgps/fragment/m;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/w;->i(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->b0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->b0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method public G(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "commentType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->e0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/m;->O(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method M(Lcom/join/mgps/dto/ArchiveShopDataBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shopDataBean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->f0()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x258

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->q0()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/m;->V(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/join/mgps/fragment/m;->A:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->showLodingFailed()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method N()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method O(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dataBean",
            "commentType"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 3
    .line 4
    const-string v2, "701"

    .line 5
    .line 6
    const/16 v3, 0x258

    .line 7
    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/m;->Z(Lcom/join/mgps/dto/CloudListDataBean;I)Lcom/join/mgps/dto/ArchiveevaluateArgs;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/join/mgps/fragment/m;->u:Lcom/join/mgps/rpc/d;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveevaluateArgs;->getArgs()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/d;->a(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveEvaluteDataBean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getCode()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ne p2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveEvaluteDataBean$DataInfoBean;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean$DataInfoBean;->getMsg()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->m0()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getCode()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/4 v0, -0x1

    .line 51
    if-ne p2, v0, :cond_9

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getMsg()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->o0()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveEvaluteDataBean;->getMsg()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const-string v4, "id"

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :goto_0
    const-string v0, "uid"

    .line 113
    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v5, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v5, ""

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-string v0, "token"

    .line 141
    .line 142
    iget-object v4, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->u:Lcom/join/mgps/rpc/d;

    .line 152
    .line 153
    invoke-interface {v0, p2}, Lcom/join/mgps/rpc/d;->d(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    if-eqz p2, :cond_7

    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveResponseMain;->getCode()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-ne v0, v3, :cond_7

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-eqz p2, :cond_4

    .line 170
    .line 171
    new-instance p2, Ljava/io/File;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-eqz p2, :cond_4

    .line 185
    .line 186
    new-instance p2, Ljava/io/File;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 196
    .line 197
    .line 198
    :cond_4
    invoke-static {}, Lt6/i;->o()Lt6/i;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p2, v0}, Lt6/i;->n(Ljava/lang/String;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_6

    .line 217
    .line 218
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Lcom/join/mgps/db/tables/CloudDownRecoderTable;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/CloudDownRecoderTable;->getMd5()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_5

    .line 237
    .line 238
    invoke-static {}, Lt6/i;->o()Lt6/i;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_6
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->t0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_7
    if-eqz p2, :cond_9

    .line 251
    .line 252
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-eqz p1, :cond_8

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->o0()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_8
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    :cond_9
    :goto_2
    return-void
.end method

.method P()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    return-void
.end method

.method S(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->x0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method T(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    const-string v2, "id"

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :goto_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ""

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "uid"

    .line 65
    .line 66
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v2, "token"

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->u:Lcom/join/mgps/rpc/d;

    .line 79
    .line 80
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->b(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveResponseMain;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getCode()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/16 v2, 0x258

    .line 91
    .line 92
    if-ne v1, v2, :cond_1

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->u0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    if-eqz v0, :cond_3

    .line 99
    .line 100
    const-string p1, "701"

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->o0()V

    .line 113
    .line 114
    .line 115
    const-string p1, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveResponseMain;->getMsg()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_2
    return-void
.end method

.method U()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->H:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->H:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->I:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    sub-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/join/mgps/fragment/m;->G:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->showLoding()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/m;->s0(I)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method V(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listDataReplace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->x0()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/join/mgps/fragment/m;->A:Z

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/16 v0, 0xa

    .line 43
    .line 44
    if-ge p1, v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->p0()V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->h0()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->x0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->showLodingFailed()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_2
    return-void
.end method

.method afterView()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "type"

    .line 6
    .line 7
    const/16 v2, 0x9

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/join/mgps/fragment/m;->p:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "typeIndex"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/fragment/m;->q:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "gameid"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->x:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 62
    .line 63
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->k()Lcom/join/mgps/rpc/impl/c;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->u:Lcom/join/mgps/rpc/d;

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 75
    .line 76
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/join/mgps/fragment/m$h;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/m$h;-><init>(Lcom/join/mgps/fragment/m;Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->w:Lcom/join/mgps/fragment/m$h;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/join/mgps/activity/GameMainActivity3;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->y:Lcom/join/mgps/activity/GameMainActivity3;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->w:Lcom/join/mgps/fragment/m$h;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    .line 108
    .line 109
    iget v0, p0, Lcom/join/mgps/fragment/m;->p:I

    .line 110
    .line 111
    const/4 v1, 0x3

    .line 112
    const/4 v2, 0x1

    .line 113
    if-ne v0, v2, :cond_0

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/join/mgps/fragment/m;->t:I

    .line 117
    .line 118
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->c0()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    const/4 v3, 0x2

    .line 123
    if-ne v0, v3, :cond_1

    .line 124
    .line 125
    iput v3, p0, Lcom/join/mgps/fragment/m;->t:I

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->c0()V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    if-ne v0, v1, :cond_2

    .line 132
    .line 133
    iput v2, p0, Lcom/join/mgps/fragment/m;->t:I

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->c0()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iput v1, p0, Lcom/join/mgps/fragment/m;->t:I

    .line 140
    .line 141
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->c0()V

    .line 142
    .line 143
    .line 144
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 145
    .line 146
    new-instance v2, Lcom/join/mgps/fragment/m$a;

    .line 147
    .line 148
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/m$a;-><init>(Lcom/join/mgps/fragment/m;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 155
    .line 156
    new-instance v2, Lcom/join/mgps/fragment/m$b;

    .line 157
    .line 158
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/m$b;-><init>(Lcom/join/mgps/fragment/m;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->P()V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 168
    .line 169
    new-instance v2, Lcom/join/mgps/fragment/m$c;

    .line 170
    .line 171
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/m$c;-><init>(Lcom/join/mgps/fragment/m;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method b0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/join/mgps/fragment/m;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    const-string v4, "id"

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :goto_0
    const-string v2, "uid"

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, ""

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string v2, "token"

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->u:Lcom/join/mgps/rpc/d;

    .line 76
    .line 77
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->e(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveDownDataBean;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/16 v2, 0x258

    .line 88
    .line 89
    if-ne v1, v2, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->getDownloadUrl()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFile(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean$DataInfoBean;->getArchiveFileName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFileName(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/fragment/m;->W(Lcom/join/mgps/dto/CloudListDataBean;Z)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    if-eqz v0, :cond_3

    .line 138
    .line 139
    const-string p1, "701"

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getMsg()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_2

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->o0()V

    .line 152
    .line 153
    .line 154
    const-string p1, "\u4f60\u7684\u767b\u9646\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u9646\u3002"

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveDownDataBean;->getMsg()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_3
    const-string p1, "\u8d2d\u4e70\u5931\u8d25"

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->showMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    :goto_1
    return-void
.end method

.method d0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pns"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/join/mgps/fragment/m;->A:Z

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/fragment/m;->A:Z

    .line 7
    .line 8
    iget p1, p0, Lcom/join/mgps/fragment/m;->q:I

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->a0()Lcom/join/mgps/dto/ArchiveshopArgs;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->u:Lcom/join/mgps/rpc/d;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveshopArgs;->getArgs()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->f(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->v0()V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

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
    if-nez v0, :cond_1

    .line 62
    .line 63
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 64
    .line 65
    if-ne v0, v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->M(Lcom/join/mgps/dto/ArchiveShopDataBean;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->X()Lcom/join/mgps/dto/ArchiveBuyArgs;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v2, ""

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->u:Lcom/join/mgps/rpc/d;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBuyArgs;->getArgs()Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->h(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->v0()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getCode()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const/4 v2, -0x1

    .line 141
    if-ne v0, v2, :cond_4

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getMsg()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v2, "701"

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_4

    .line 168
    .line 169
    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/join/mgps/fragment/m;->A:Z

    .line 171
    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->o0()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_5

    .line 204
    .line 205
    iget v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 206
    .line 207
    if-ne v0, v1, :cond_5

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_5
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->M(Lcom/join/mgps/dto/ArchiveShopDataBean;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->showLodingFailed()V

    .line 226
    .line 227
    .line 228
    :cond_7
    :goto_1
    return-void
.end method

.method f0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->i:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->i:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method g0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method h0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method i0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->n:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method j0(Landroid/content/Intent;)V
    .locals 1
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
            "com.join.android.app.mgsim.wufun.com.cloud.delete"
        }
    .end annotation

    .line 1
    const-string v0, "cloud"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->T(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public k(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataBean",
            "type"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->T(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public k0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVBA"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/m;->C:Z

    .line 2
    .line 3
    return-void
.end method

.method public l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->m0()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public m0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->showLoding()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->x0()V

    .line 21
    .line 22
    .line 23
    iput v1, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->N()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->i0()V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/m;->d0(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput v1, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->N()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->i0()V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/m;->d0(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public n0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method o0()V
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
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

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
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/m;->c:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onEventMain(Lcom/join/mgps/event/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/m;->p:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/fragment/m;->z:Z

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/join/mgps/fragment/m;->q:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v1, v2, :cond_3

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/join/mgps/dto/CloudListDataBean;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->H:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-lez p1, :cond_3

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ge p1, v1, :cond_3

    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->x0()V

    .line 111
    .line 112
    .line 113
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/i;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->w:Lcom/join/mgps/fragment/m$h;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v1, v2, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v5, v2

    .line 35
    check-cast v5, Lcom/join/mgps/dto/CloudListDataBean;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->a()Lcom/join/mgps/dto/CloudListDataBean;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v5}, Lcom/join/mgps/dto/CloudListDataBean;->getFileMd5()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/event/i;->e()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget-object v3, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-lt v1, v2, :cond_2

    .line 75
    .line 76
    if-gt v1, v3, :cond_2

    .line 77
    .line 78
    iget-object v3, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 79
    .line 80
    sub-int v2, v1, v2

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/join/mgps/fragment/m$h$a;

    .line 91
    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    iget-object v3, v2, Lcom/join/mgps/fragment/m$h$a;->a:Lcom/join/mgps/customview/ClouldItemView3;

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    iget-object v4, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 99
    .line 100
    iget v6, p0, Lcom/join/mgps/fragment/m;->q:I

    .line 101
    .line 102
    iget v7, p0, Lcom/join/mgps/fragment/m;->p:I

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const/4 v9, 0x1

    .line 112
    sub-int/2addr v2, v9

    .line 113
    if-ne v2, v1, :cond_1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    const/4 v9, 0x0

    .line 117
    :goto_1
    move-object v10, p0

    .line 118
    invoke-virtual/range {v3 .. v10}, Lcom/join/mgps/customview/ClouldItemView3;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLw6/c;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    return-void

    .line 125
    :cond_4
    :goto_2
    iget p1, p0, Lcom/join/mgps/fragment/m;->p:I

    .line 126
    .line 127
    const/4 v0, 0x4

    .line 128
    if-ne p1, v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V

    .line 131
    .line 132
    .line 133
    :cond_5
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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->U()Z

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/join/mgps/fragment/m;->q:I

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->l0()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/m;->o:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    return-void
.end method

.method p0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method q0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :try_start_0
    iput-boolean v1, p0, Lcom/join/mgps/fragment/m;->A:Z

    .line 15
    .line 16
    iget v1, p0, Lcom/join/mgps/fragment/m;->s:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/join/mgps/fragment/m;->q:I

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->g:Landroid/widget/TextView;

    .line 33
    .line 34
    const-string v1, "\u4ece\u672c\u5730\u6311\u4e00\u4e2a\u5206\u4eab\u5427"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->g:Landroid/widget/TextView;

    .line 41
    .line 42
    const-string v1, "\u53bb\u63a8\u8350\u4e0b\u8f7d\u4e00\u4e2a\u5427"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    return-void
.end method

.method r0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->f0()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/fragment/m;->A:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->d:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/join/mgps/fragment/m;->q:I

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->g:Landroid/widget/TextView;

    .line 27
    .line 28
    const-string v1, "\u4ece\u672c\u5730\u6311\u4e00\u4e2a\u5206\u4eab\u5427"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->g:Landroid/widget/TextView;

    .line 35
    .line 36
    const-string v1, "\u53bb\u63a8\u8350\u4e0b\u8f7d\u4e00\u4e2a\u5427"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    return-void
.end method

.method s0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/m;->a0()Lcom/join/mgps/dto/ArchiveshopArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ArchiveshopArgs;->setPn(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->u:Lcom/join/mgps/rpc/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveshopArgs;->getArgs()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->f(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveShopDataBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    add-int/2addr p1, v1

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/fragment/m;->I:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/join/mgps/fragment/m;->G:I

    .line 62
    .line 63
    if-gt p1, v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->s0(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->I:Ljava/util/List;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/m;->S(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->f0()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->f0()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->f0()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->f0()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->showLodingFailed()V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/fragment/m;->I:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/fragment/m;->H:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->h:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->i:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->i:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->h:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public t(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    return-void
.end method

.method t0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/event/i;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/event/i;-><init>(Lcom/join/mgps/dto/CloudListDataBean;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/m;->w:Lcom/join/mgps/fragment/m$h;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->m0()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method u0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->w0()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->v:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->r0()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/m;->m0()V

    .line 52
    .line 53
    .line 54
    :goto_0
    new-instance v0, Lcom/join/mgps/event/m;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Lcom/join/mgps/event/m;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method v0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->e:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method public w(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    return-void
.end method

.method w0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/m;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->w:Lcom/join/mgps/fragment/m$h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public x(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getIsVip()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lcom/papa/sim/statistic/Event;->VipArchive_startover_page:Lcom/papa/sim/statistic/Event;

    .line 17
    .line 18
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/fragment/m;->r:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    instance-of p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/join/mgps/activity/DocumentManageActivity;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/activity/DocumentManageActivity;->isFromEMU()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method x0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/m;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/m;->w:Lcom/join/mgps/fragment/m$h;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method
