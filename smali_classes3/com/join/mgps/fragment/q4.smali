.class public Lcom/join/mgps/fragment/q4;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/join/mgps/callbacks/q;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02d1
.end annotation


# static fields
.field private static final u:I = 0x14

.field private static final v:I = 0x3

.field public static final w:I = 0x1

.field public static final x:I = 0x2

.field public static final y:I = 0x3


# instance fields
.field c:I

.field private d:I

.field private e:Z

.field f:Lcom/join/mgps/rpc/e;

.field g:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/adapter/x4;

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

.field n:Lcom/join/mgps/dto/ExtBean;

.field private o:Lcom/join/mgps/dto/PaPaBean;

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private final t:Landroid/view/View$OnClickListener;


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
    iput v0, p0, Lcom/join/mgps/fragment/q4;->c:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->e:Z

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->p:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->s:Z

    .line 23
    .line 24
    new-instance v0, Lcom/join/mgps/fragment/q4$d;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/q4$d;-><init>(Lcom/join/mgps/fragment/q4;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View$OnClickListener;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/fragment/q4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->W()V

    return-void
.end method

.method static synthetic N(Lcom/join/mgps/fragment/q4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/q4;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/q4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/q4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 2
    .line 3
    return p1
.end method

.method private S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->b0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->R()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->Z()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private V(Lcom/join/mgps/dto/ResultMainBean;)V
    .locals 1
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
            "Lcom/join/mgps/dto/StandAloneListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->isActivityFinish()Z

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->c0()V

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
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_3

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->e:Z

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->e:Z

    .line 61
    .line 62
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/q4;->Q(Ljava/util/List;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/q4;->d0(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->hideLoading()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->a0()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private synthetic W()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->expDiscountGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static X(ILandroid/os/Bundle;)Lcom/join/mgps/fragment/q4;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "args"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/PaPaStandAloneV2Fragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/PaPaStandAloneV2Fragment_;-><init>()V

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
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private expDiscountGame()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/join/mgps/fragment/q4;->p:Z

    .line 9
    .line 10
    if-nez v1, :cond_5

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/join/mgps/fragment/q4;->p:Z

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-gt v3, v2, :cond_5

    .line 23
    .line 24
    iget-object v4, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/join/mgps/dto/PaPaBean;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sget-object v6, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 39
    .line 40
    .line 41
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const-string v7, "discount_game"

    .line 43
    .line 44
    if-ne v5, v6, :cond_2

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    instance-of v5, v5, Ljava/util/List;

    .line 51
    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Lcom/join/mgps/dto/AppBean;

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_0

    .line 81
    .line 82
    invoke-virtual {v5, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 83
    .line 84
    .line 85
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Lcom/join/mgps/dto/AppBean;)Z

    .line 86
    .line 87
    .line 88
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-eqz v6, :cond_1

    .line 90
    .line 91
    :try_start_2
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 92
    .line 93
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v6, v8}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 108
    .line 109
    .line 110
    new-instance v8, Lcom/papa/sim/statistic/Data;

    .line 111
    .line 112
    invoke-direct {v8}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 120
    .line 121
    .line 122
    sget-object v9, Lcom/join/android/app/common/http/c;->a:Landroid/content/Context;

    .line 123
    .line 124
    invoke-static {v9}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    sget-object v10, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 129
    .line 130
    invoke-virtual {v9, v10, v6, v8}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catch_0
    move-exception v6

    .line 135
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v6}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v6, v8, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    sget-object v6, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-ne v5, v6, :cond_4

    .line 175
    .line 176
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    instance-of v5, v5, Lcom/join/mgps/dto/AppBean;

    .line 181
    .line 182
    if-eqz v5, :cond_4

    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Lcom/join/mgps/dto/AppBean;

    .line 189
    .line 190
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_4

    .line 195
    .line 196
    invoke-virtual {v4, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 197
    .line 198
    .line 199
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->n2(Lcom/join/mgps/dto/AppBean;)Z

    .line 200
    .line 201
    .line 202
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    if-eqz v5, :cond_3

    .line 204
    .line 205
    :try_start_4
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 206
    .line 207
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 222
    .line 223
    .line 224
    new-instance v6, Lcom/papa/sim/statistic/Data;

    .line 225
    .line 226
    invoke-direct {v6}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 234
    .line 235
    .line 236
    sget-object v7, Lcom/join/android/app/common/http/c;->a:Landroid/content/Context;

    .line 237
    .line 238
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 243
    .line 244
    invoke-virtual {v7, v8, v5, v6}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :catch_1
    move-exception v5

    .line 249
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 261
    .line 262
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v5, v6, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    .line 276
    .line 277
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :catchall_0
    move-exception v1

    .line 282
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->p:Z

    .line 283
    .line 284
    throw v1

    .line 285
    :catch_2
    :cond_5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->p:Z

    .line 286
    .line 287
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
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
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/PaPaBean;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 52
    .line 53
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ne v1, v2, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/join/mgps/dto/AppBean;

    .line 76
    .line 77
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->h:Lcom/join/mgps/adapter/x4;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 90
    .line 91
    .line 92
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
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->h:Lcom/join/mgps/adapter/x4;

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
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->h:Lcom/join/mgps/adapter/x4;

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
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->h:Lcom/join/mgps/adapter/x4;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private updateDownStateList()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/q4;->updateDownStateList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)V
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
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;)V"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PaPaBean;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v1

    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 7
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result v1

    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AppBean;

    .line 10
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/q4;->r:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/q4;->q:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_9

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

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
    if-eqz v1, :cond_8

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0xc

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    if-ne v2, v3, :cond_4

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/join/mgps/dto/AppBean;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_8

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eq v2, v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ne v2, v4, :cond_8

    .line 55
    .line 56
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 57
    .line 58
    iget v3, p0, Lcom/join/mgps/fragment/q4;->r:I

    .line 59
    .line 60
    sub-int v3, v0, v3

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    instance-of v3, v3, Lcom/join/mgps/adapter/x4$h;

    .line 71
    .line 72
    if-eqz v3, :cond_8

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/join/mgps/adapter/x4$h;

    .line 79
    .line 80
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v3, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_1

    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

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
    iget-object v8, v2, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

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
    iget-object v8, v2, Lcom/join/mgps/adapter/x4$h;->j:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

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
    if-ne v6, v4, :cond_3

    .line 198
    .line 199
    iget-object v4, v2, Lcom/join/mgps/adapter/x4$h;->e:Landroid/widget/ProgressBar;

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    long-to-int v7, v6

    .line 206
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_3
    iget-object v4, v2, Lcom/join/mgps/adapter/x4$h;->f:Landroid/widget/ProgressBar;

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 213
    .line 214
    .line 215
    move-result-wide v6

    .line 216
    long-to-int v7, v6

    .line 217
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

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
    if-ne v1, v5, :cond_8

    .line 225
    .line 226
    iget-object v1, v2, Lcom/join/mgps/adapter/x4$h;->k:Landroid/widget/TextView;

    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

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
    goto/16 :goto_5

    .line 253
    .line 254
    :catch_0
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_5

    .line 259
    .line 260
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    sget-object v3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 265
    .line 266
    invoke-virtual {v3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-ne v2, v3, :cond_8

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, Ljava/util/List;

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-ge v2, v3, :cond_8

    .line 284
    .line 285
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Lcom/join/mgps/dto/AppBean;

    .line 290
    .line 291
    invoke-virtual {v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    if-eqz v3, :cond_7

    .line 296
    .line 297
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-eq v6, v5, :cond_5

    .line 302
    .line 303
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-ne v6, v4, :cond_7

    .line 308
    .line 309
    :cond_5
    iget-object v6, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 310
    .line 311
    iget v7, p0, Lcom/join/mgps/fragment/q4;->r:I

    .line 312
    .line 313
    sub-int v7, v0, v7

    .line 314
    .line 315
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    instance-of v7, v7, Lcom/join/mgps/adapter/x4$j;

    .line 324
    .line 325
    if-eqz v7, :cond_7

    .line 326
    .line 327
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    check-cast v6, Lcom/join/mgps/adapter/x4$j;

    .line 332
    .line 333
    :try_start_2
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v7, v3}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    if-nez v3, :cond_6

    .line 346
    .line 347
    return-void

    .line 348
    :cond_6
    iget-object v6, v6, Lcom/join/mgps/adapter/x4$j;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 349
    .line 350
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    const v7, 0x7f0a054e

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    check-cast v6, Lcom/join/mgps/customview/DownloadNormalView;

    .line 366
    .line 367
    if-eqz v6, :cond_7

    .line 368
    .line 369
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-ne v7, v5, :cond_7

    .line 374
    .line 375
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 376
    .line 377
    .line 378
    move-result-wide v7

    .line 379
    invoke-virtual {v6, v7, v8}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 380
    .line 381
    .line 382
    goto :goto_4

    .line 383
    :catch_1
    move-exception v3

    .line 384
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 385
    .line 386
    .line 387
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 388
    .line 389
    goto :goto_3

    .line 390
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_9
    return-void
.end method


# virtual methods
.method Q(Ljava/util/List;)Ljava/util/List;
    .locals 12
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
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean;",
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
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_11

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_11

    .line 19
    .line 20
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/join/mgps/dto/StandAloneListBean;

    .line 25
    .line 26
    new-instance v4, Lcom/join/mgps/dto/PaPaBean;

    .line 27
    .line 28
    invoke-direct {v4}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getTitle()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    new-instance v6, Lcom/join/mgps/dto/CollectionInfo;

    .line 42
    .line 43
    invoke-direct {v6}, Lcom/join/mgps/dto/CollectionInfo;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v5}, Lcom/join/mgps/dto/CollectionInfo;->setTitle(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v7, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TITLE:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 50
    .line 51
    invoke-virtual {v7}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-virtual {v4, v7}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v6}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getType()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "game_list_h"

    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    const/16 v7, 0x75

    .line 72
    .line 73
    const/16 v8, 0x6b

    .line 74
    .line 75
    const/4 v9, 0x2

    .line 76
    const/4 v10, 0x1

    .line 77
    if-eqz v6, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-lez v6, :cond_4

    .line 94
    .line 95
    iget v6, p0, Lcom/join/mgps/fragment/q4;->c:I

    .line 96
    .line 97
    if-ne v6, v10, :cond_1

    .line 98
    .line 99
    iget-object v6, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 100
    .line 101
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    if-ne v6, v9, :cond_2

    .line 109
    .line 110
    iget v6, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 111
    .line 112
    if-ge v6, v9, :cond_2

    .line 113
    .line 114
    iget-object v6, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 115
    .line 116
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_3

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Lcom/join/mgps/dto/AppBean;

    .line 141
    .line 142
    invoke-virtual {v6, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iget-object v9, p0, Lcom/join/mgps/fragment/q4;->n:Lcom/join/mgps/dto/ExtBean;

    .line 153
    .line 154
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v6, v5}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    new-instance v4, Lcom/join/mgps/dto/PaPaBean;

    .line 163
    .line 164
    invoke-direct {v4}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 165
    .line 166
    .line 167
    sget-object v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_HORIZONTAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto/16 :goto_8

    .line 187
    .line 188
    :cond_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getType()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    const-string v11, "game_list_v"

    .line 193
    .line 194
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_7

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    if-eqz v6, :cond_7

    .line 205
    .line 206
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-lez v6, :cond_7

    .line 215
    .line 216
    iget v6, p0, Lcom/join/mgps/fragment/q4;->c:I

    .line 217
    .line 218
    if-ne v6, v10, :cond_5

    .line 219
    .line 220
    iget-object v6, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 221
    .line 222
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_5
    if-ne v6, v9, :cond_6

    .line 230
    .line 231
    iget v6, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 232
    .line 233
    if-ge v6, v9, :cond_6

    .line 234
    .line 235
    iget-object v6, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 236
    .line 237
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 244
    :goto_4
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-ge v4, v6, :cond_10

    .line 253
    .line 254
    new-instance v6, Lcom/join/mgps/dto/PaPaBean;

    .line 255
    .line 256
    invoke-direct {v6}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 257
    .line 258
    .line 259
    sget-object v9, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_VERTICAL:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 260
    .line 261
    invoke-virtual {v9}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getGame_list()Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    check-cast v9, Lcom/join/mgps/dto/AppBean;

    .line 277
    .line 278
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9, v7}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    iget-object v11, p0, Lcom/join/mgps/fragment/q4;->n:Lcom/join/mgps/dto/ExtBean;

    .line 289
    .line 290
    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-virtual {v10, v5}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v9}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    add-int/lit8 v4, v4, 0x1

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_7
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getType()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    const-string v6, "tag_type"

    .line 311
    .line 312
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_d

    .line 317
    .line 318
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    if-eqz v5, :cond_d

    .line 323
    .line 324
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    if-lez v5, :cond_d

    .line 333
    .line 334
    iget v5, p0, Lcom/join/mgps/fragment/q4;->c:I

    .line 335
    .line 336
    if-ne v5, v10, :cond_8

    .line 337
    .line 338
    iget-object v5, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 339
    .line 340
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_8
    if-ne v5, v9, :cond_9

    .line 348
    .line 349
    iget v5, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 350
    .line 351
    if-ge v5, v9, :cond_9

    .line 352
    .line 353
    iget-object v5, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 354
    .line 355
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    :cond_9
    :goto_5
    new-instance v4, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .line 365
    .line 366
    const/4 v5, 0x0

    .line 367
    :goto_6
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-ge v5, v6, :cond_c

    .line 376
    .line 377
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    check-cast v6, Lcom/join/mgps/dto/StandAloneListBean$ListBean;

    .line 386
    .line 387
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    const/4 v7, 0x3

    .line 395
    if-eq v6, v7, :cond_a

    .line 396
    .line 397
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    sub-int/2addr v6, v10

    .line 406
    if-ne v5, v6, :cond_b

    .line 407
    .line 408
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 414
    .line 415
    .line 416
    new-instance v7, Lcom/join/mgps/dto/PaPaBean;

    .line 417
    .line 418
    invoke-direct {v7}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 419
    .line 420
    .line 421
    sget-object v8, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_TAG:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 422
    .line 423
    invoke-virtual {v8}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    invoke-virtual {v7, v8}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v7, v6}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 437
    .line 438
    .line 439
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_c
    new-instance v3, Lcom/join/mgps/dto/PaPaBean;

    .line 443
    .line 444
    invoke-direct {v3}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 445
    .line 446
    .line 447
    sget-object v4, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_40:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 448
    .line 449
    invoke-virtual {v4}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 454
    .line 455
    .line 456
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_d
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getType()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    const-string v6, "company_type"

    .line 465
    .line 466
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-eqz v5, :cond_10

    .line 471
    .line 472
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    if-eqz v5, :cond_10

    .line 477
    .line 478
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-lez v5, :cond_10

    .line 487
    .line 488
    iget v5, p0, Lcom/join/mgps/fragment/q4;->c:I

    .line 489
    .line 490
    if-ne v5, v10, :cond_e

    .line 491
    .line 492
    iget-object v5, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 493
    .line 494
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    goto :goto_7

    .line 501
    :cond_e
    if-ne v5, v9, :cond_f

    .line 502
    .line 503
    iget v5, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 504
    .line 505
    if-ge v5, v9, :cond_f

    .line 506
    .line 507
    iget-object v5, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 508
    .line 509
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    :cond_f
    :goto_7
    new-instance v4, Lcom/join/mgps/dto/PaPaBean;

    .line 516
    .line 517
    invoke-direct {v4}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 518
    .line 519
    .line 520
    sget-object v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_COMPANY:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 521
    .line 522
    invoke-virtual {v5}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 523
    .line 524
    .line 525
    move-result v5

    .line 526
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3}, Lcom/join/mgps/dto/StandAloneListBean;->getList()Ljava/util/List;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/PaPaBean;->setTypeValue(Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    :cond_10
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :cond_11
    return-object v0
.end method

.method R()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/PaPaBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/PaPaBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 7
    .line 8
    sget-object v1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_STANDSALONE_LINE_20:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/PaPaBean;->setType(I)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/join/mgps/fragment/q4;->c:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/rpc/e;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v2, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getStandAloneTwo(I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->n0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/q4;->V(Lcom/join/mgps/dto/ResultMainBean;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/rpc/e;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getStandAloneOne()Lcom/join/mgps/dto/CommonRequestBean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->W(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/q4;->U(Lcom/join/mgps/dto/ResultMainBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "fetchData exception:"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "PaPaList"

    .line 91
    .line 92
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->a0()V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method T(Lcom/join/mgps/dto/AppBean;)V
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
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

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

.method U(Lcom/join/mgps/dto/ResultMainBean;)V
    .locals 1
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
            "Lcom/join/mgps/dto/StandAloneListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->isActivityFinish()Z

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
    goto :goto_0

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->c0()V

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
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->e:Z

    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/q4;->Q(Ljava/util/List;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/q4;->d0(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->hideLoading()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->a0()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method Y(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->h:Lcom/join/mgps/adapter/x4;

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

.method Z()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

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
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->k:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->j:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method a0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->Z()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->f:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/adapter/x4;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/x4;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->h:Lcom/join/mgps/adapter/x4;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/x4;->e(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 30
    .line 31
    const/16 v1, 0xa

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->h:Lcom/join/mgps/adapter/x4;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 44
    .line 45
    new-instance v1, Lcom/join/mgps/fragment/q4$a;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q4$a;-><init>(Lcom/join/mgps/fragment/q4;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 54
    .line 55
    new-instance v1, Lcom/join/mgps/fragment/q4$b;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q4$b;-><init>(Lcom/join/mgps/fragment/q4;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/fragment/q4$c;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q4$c;-><init>(Lcom/join/mgps/fragment/q4;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->S()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method b0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

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
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->k:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->j:Landroid/widget/LinearLayout;

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

.method c0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/q4;->e:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->k:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->j:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method d0(Ljava/util/List;)V
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v2, p0, Lcom/join/mgps/fragment/q4;->o:Lcom/join/mgps/dto/PaPaBean;

    .line 13
    .line 14
    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/fragment/q4;->e:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/join/mgps/fragment/q4;->d:I

    .line 25
    .line 26
    :cond_1
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/join/mgps/fragment/q4;->e:Z

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-gtz v0, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->updateDownStateList(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->h:Lcom/join/mgps/adapter/x4;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->g:Lcom/join/mgps/customview/XListView2;

    .line 84
    .line 85
    new-instance v0, Lcom/join/mgps/fragment/p4;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4;-><init>(Lcom/join/mgps/fragment/q4;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v1, 0x12c

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

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
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->k:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->j:Landroid/widget/LinearLayout;

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

.method isActivityFinish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

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
    iput-object p1, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
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
    iput v0, p0, Lcom/join/mgps/fragment/q4;->c:I

    .line 22
    .line 23
    const-string v0, "pageExtBean"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/join/mgps/fragment/q4;->n:Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

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
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/q4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/q4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/q4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_6

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/join/mgps/fragment/q4;->s:Z

    .line 57
    .line 58
    if-nez p1, :cond_6

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->updateProgressPartly()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/fragment/q4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/fragment/q4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/q4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/q4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/q4;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_0
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->n:Lcom/join/mgps/dto/ExtBean;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/q4;->n:Lcom/join/mgps/dto/ExtBean;

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
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->expDiscountGame()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->n:Lcom/join/mgps/dto/ExtBean;

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
    iput p3, p0, Lcom/join/mgps/fragment/q4;->q:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/fragment/q4;->r:I

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
    iput-boolean p1, p0, Lcom/join/mgps/fragment/q4;->s:Z

    .line 7
    .line 8
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;->S()V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/q4;->m:Landroid/app/Activity;

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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/q4;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
