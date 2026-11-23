.class public Lcom/join/mgps/fragment/v5;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/v5$d;,
        Lcom/join/mgps/fragment/v5$e;,
        Lcom/join/mgps/fragment/v5$h;,
        Lcom/join/mgps/fragment/v5$g;,
        Lcom/join/mgps/fragment/v5$f;,
        Lcom/join/mgps/fragment/v5$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02df
.end annotation


# static fields
.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3


# instance fields
.field c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroidx/core/widget/NestedScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Lcom/join/mgps/rpc/k;

.field private j:Z

.field private k:Lcom/join/mgps/fragment/v5$d;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/fragment/v5$e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:J

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->m:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/join/mgps/fragment/v5;->n:I

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/fragment/v5;->p:I

    .line 22
    .line 23
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/v5;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/v5;->n:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/v5;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/v5;->n:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/v5;->n:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/v5;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method P(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/join/mgps/fragment/v5;->j:Z

    .line 4
    .line 5
    if-nez v2, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/join/mgps/fragment/v5;->j:Z

    .line 18
    .line 19
    new-instance v2, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, p0, Lcom/join/mgps/fragment/v5;->h:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->setPage(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->setUid(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v4, p0, Lcom/join/mgps/fragment/v5;->p:I

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->setSelectCondition(I)V

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcom/join/mgps/fragment/v5;->h:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->setGameId(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-nez v3, :cond_0

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/EMUApkTable;->getVerCode()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->setPlugVersion(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    .line 90
    .line 91
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/fragment/v5;->i:Lcom/join/mgps/rpc/k;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v2, v3}, Lcom/join/mgps/rpc/k;->e(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_1

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/join/mgps/dto/SimulatorMomentBean;

    .line 127
    .line 128
    invoke-virtual {p0, v2, p1}, Lcom/join/mgps/fragment/v5;->W(Lcom/join/mgps/dto/SimulatorMomentBean;I)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    if-ne p1, v1, :cond_2

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->showLodingFailed()V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/fragment/v5;->j:Z

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    if-ne p1, v1, :cond_4

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->showLodingFailed()V

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const v3, 0x7f12031e

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/v5;->showTost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    goto :goto_3

    .line 162
    :catch_0
    move-exception v2

    .line 163
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    iput-boolean v0, p0, Lcom/join/mgps/fragment/v5;->j:Z

    .line 167
    .line 168
    if-ne p1, v1, :cond_5

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->V()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->V()V

    .line 178
    .line 179
    .line 180
    throw p1
.end method

.method public Q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/v5;->p:I

    .line 2
    .line 3
    return v0
.end method

.method R(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/join/mgps/fragment/v5;->o:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x3e8

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/join/mgps/fragment/v5;->o:J

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/fragment/v5$e;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/fragment/v5$e;->d()Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getDateStr()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setDs(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setUid(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getUid()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setRuid(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/mgps/fragment/v5;->h:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setGameId(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    .line 83
    .line 84
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/fragment/v5;->i:Lcom/join/mgps/rpc/k;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v2, v3}, Lcom/join/mgps/rpc/k;->I0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->setPraised(Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getPraiseCount()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    add-int/2addr v3, v2

    .line 124
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->setPraiseCount(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/v5$e;->l(Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v5;->T(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const v0, 0x7f12031e

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v5;->showTost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_0
    return-void
.end method

.method S(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
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
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/join/mgps/fragment/v5;->o:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x3e8

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/join/mgps/fragment/v5;->o:J

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/fragment/v5$e;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/fragment/v5$e;->d()Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setUid(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getPraiseId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setPraiseId(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getUid()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setRuid(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/mgps/fragment/v5;->h:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setGameId(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getDateStr()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestSimulatorMomentLikeArgs;->setDs(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    .line 90
    .line 91
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/fragment/v5;->i:Lcom/join/mgps/rpc/k;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v2, v3}, Lcom/join/mgps/rpc/k;->h0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->setPraised(Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getPraiseCount()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    add-int/lit8 v3, v3, -0x1

    .line 131
    .line 132
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->setPraiseCount(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/v5$e;->l(Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v5;->T(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const v0, 0x7f12031e

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v5;->showTost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :cond_2
    :goto_0
    return-void
.end method

.method T(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->k:Lcom/join/mgps/fragment/v5$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public U(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chooseType"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/v5;->p:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/join/mgps/fragment/v5;->p:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/join/mgps/fragment/v5;->n:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v5;->P(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method V()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopLoadMore()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method W(Lcom/join/mgps/dto/SimulatorMomentBean;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v7, 0x1

    .line 5
    if-ne p2, v7, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gtz v0, :cond_2

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->showEmpty()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->showMain()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-gtz v0, :cond_4

    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    instance-of v0, v0, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getBasicInfos()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameMainActivity4;->setHeaderData(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    if-ne p2, v7, :cond_6

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->m:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    iget-object v8, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 91
    .line 92
    new-instance v9, Lcom/join/mgps/fragment/v5$e;

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getBasicInfos()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    move-object v0, v9

    .line 102
    move-object v1, p0

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v5$e;-><init>(Lcom/join/mgps/fragment/v5;ILjava/util/List;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v8, 0x0

    .line 114
    if-eqz v0, :cond_a

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-lez v0, :cond_a

    .line 125
    .line 126
    if-ne p2, v7, :cond_7

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Lcom/join/mgps/fragment/v5$b;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/v5$b;-><init>(Lcom/join/mgps/fragment/v5;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    const/4 v6, 0x0

    .line 141
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-ge v6, v0, :cond_a

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    move-object v9, v0

    .line 160
    check-cast v9, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->m:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v9}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getFeDate()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_9

    .line 173
    .line 174
    new-instance v10, Lcom/join/mgps/fragment/v5$e;

    .line 175
    .line 176
    const/4 v2, 0x3

    .line 177
    const/4 v3, 0x0

    .line 178
    const/4 v4, 0x0

    .line 179
    invoke-virtual {v9}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getFeDate()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    move-object v0, v10

    .line 184
    move-object v1, p0

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v5$e;-><init>(Lcom/join/mgps/fragment/v5;ILjava/util/List;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    if-nez v6, :cond_8

    .line 189
    .line 190
    const/4 v0, 0x1

    .line 191
    goto :goto_1

    .line 192
    :cond_8
    const/4 v0, 0x0

    .line 193
    :goto_1
    invoke-virtual {v10, v0}, Lcom/join/mgps/fragment/v5$e;->h(Z)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->m:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v9}, Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;->getFeDate()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :cond_9
    new-instance v10, Lcom/join/mgps/fragment/v5$e;

    .line 211
    .line 212
    const/4 v2, 0x2

    .line 213
    const/4 v3, 0x0

    .line 214
    const/4 v5, 0x0

    .line 215
    move-object v0, v10

    .line 216
    move-object v1, p0

    .line 217
    move-object v4, v9

    .line 218
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/v5$e;-><init>(Lcom/join/mgps/fragment/v5;ILjava/util/List;Lcom/join/mgps/dto/SimulatorMomentBean$UpdatesInfo;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    add-int/lit8 v6, v6, 0x1

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_a
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-eqz v0, :cond_b

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorMomentBean;->getUpdatesInfos()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-gtz v0, :cond_e

    .line 244
    .line 245
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    sub-int/2addr v0, v7

    .line 252
    const/4 v1, 0x0

    .line 253
    :goto_2
    if-ltz v0, :cond_e

    .line 254
    .line 255
    iget-object v2, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lcom/join/mgps/fragment/v5$e;

    .line 262
    .line 263
    invoke-static {v2}, Lcom/join/mgps/fragment/v5$e;->a(Lcom/join/mgps/fragment/v5$e;)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    const/4 v3, 0x2

    .line 268
    if-ne v2, v3, :cond_c

    .line 269
    .line 270
    if-nez v1, :cond_c

    .line 271
    .line 272
    iget-object v2, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    check-cast v2, Lcom/join/mgps/fragment/v5$e;

    .line 279
    .line 280
    invoke-virtual {v2, v7}, Lcom/join/mgps/fragment/v5$e;->i(Z)V

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_c
    iget-object v2, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Lcom/join/mgps/fragment/v5$e;

    .line 291
    .line 292
    invoke-static {v2}, Lcom/join/mgps/fragment/v5$e;->a(Lcom/join/mgps/fragment/v5$e;)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    const/4 v3, 0x3

    .line 297
    if-ne v2, v3, :cond_d

    .line 298
    .line 299
    if-nez v1, :cond_d

    .line 300
    .line 301
    iget-object v1, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Lcom/join/mgps/fragment/v5$e;

    .line 308
    .line 309
    invoke-virtual {v1, v7}, Lcom/join/mgps/fragment/v5$e;->i(Z)V

    .line 310
    .line 311
    .line 312
    const/4 v1, 0x1

    .line 313
    goto :goto_3

    .line 314
    :cond_d
    iget-object v2, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Lcom/join/mgps/fragment/v5$e;

    .line 321
    .line 322
    invoke-virtual {v2, v8}, Lcom/join/mgps/fragment/v5$e;->i(Z)V

    .line 323
    .line 324
    .line 325
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->k:Lcom/join/mgps/fragment/v5$d;

    .line 329
    .line 330
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 331
    .line 332
    .line 333
    return-void
.end method

.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "gameId"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->h:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->i:Lcom/join/mgps/rpc/k;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 26
    .line 27
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/fragment/v5$d;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/fragment/v5;->l:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/v5$d;-><init>(Lcom/join/mgps/fragment/v5;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/fragment/v5;->k:Lcom/join/mgps/fragment/v5$d;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/fragment/v5;->k:Lcom/join/mgps/fragment/v5$d;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 66
    .line 67
    new-instance v1, Lcom/join/mgps/fragment/v5$a;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/v5$a;-><init>(Lcom/join/mgps/fragment/v5;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/v5;->n:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->showLoding()V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/join/mgps/fragment/v5;->n:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v5;->P(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v5;->showLoding()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/v5;->n:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v5;->P(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method setNetwork()V
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
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showEmpty()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->g:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->e:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->d:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->f:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_4
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
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->g:Landroidx/core/widget/NestedScrollView;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->d:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->e:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->f:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_4
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->g:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->e:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->d:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    const/16 v1, 0x8

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->f:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_4
    return-void
.end method

.method showMain()V
    .locals 3
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
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->g:Landroidx/core/widget/NestedScrollView;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->e:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->d:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/v5;->f:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_4
    return-void
.end method

.method showTost(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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
