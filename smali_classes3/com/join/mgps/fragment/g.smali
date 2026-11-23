.class public Lcom/join/mgps/fragment/g;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d012b
.end annotation


# instance fields
.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/rpc/e;

.field g:Landroid/content/Context;

.field h:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p:Lcom/join/mgps/adapter/e;

.field private q:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/e$i0;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/g;->j:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/fragment/g;->k:I

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/fragment/g;->l:I

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/fragment/g;->m:I

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic O(Lcom/join/mgps/fragment/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/g;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/g;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 2
    .line 3
    return p0
.end method

.method private X()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/g;->m:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->p:Lcom/join/mgps/adapter/e;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/e;->C(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g;->Y(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method R(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

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
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u7cbe\u9009\u54e6~"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 35
    .line 36
    new-instance v0, Lcom/join/mgps/fragment/g$f;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g$f;-><init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 68
    .line 69
    const v0, 0x7f080edb

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 80
    .line 81
    new-instance v0, Lcom/join/mgps/fragment/g$e;

    .line 82
    .line 83
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g$e;-><init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25~"

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 101
    .line 102
    new-instance v0, Lcom/join/mgps/fragment/g$g;

    .line 103
    .line 104
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g$g;-><init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 120
    .line 121
    new-instance v0, Lcom/join/mgps/fragment/g$d;

    .line 122
    .line 123
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/g$d;-><init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->e0()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->e0()V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/fragment/g;->e:Lcom/join/mgps/customview/ForumLoadingView;

    .line 149
    .line 150
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 151
    .line 152
    .line 153
    :goto_0
    return-void
.end method

.method public S()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->p:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/adapter/e;->d()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method U()Lcom/join/mgps/dto/HomeGameCarefullyBean;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lt6/t;->p()Lt6/t;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomeGameCarefully:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lt6/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs2()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-class v4, Lcom/join/mgps/dto/HomeGameCarefullyBean;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    new-array v5, v5, [Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/mgps/dto/HomeGameCarefullyBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    move-object v0, v1

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-object v0
.end method

.method V()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/g;->p:Lcom/join/mgps/adapter/e;

    .line 11
    .line 12
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/g;->q:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->p:Lcom/join/mgps/adapter/e;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 34
    .line 35
    const/16 v1, 0xa

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/join/mgps/fragment/g$a;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/g$a;-><init>(Lcom/join/mgps/fragment/g;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/mgps/fragment/g;->s:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method W()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->U()Lcom/join/mgps/dto/HomeGameCarefullyBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1, v1}, Lcom/join/mgps/fragment/g;->d0(Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V

    .line 7
    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/g;->R(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method Y(I)V
    .locals 7
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
    iget v0, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->f0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iput p1, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_f

    .line 22
    .line 23
    const v0, 0x7f12027d

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    iget-object v4, p0, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget v5, p0, Lcom/join/mgps/fragment/g;->k:I

    .line 35
    .line 36
    iget-object v6, p0, Lcom/join/mgps/fragment/g;->i:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v4, p1, v5, v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getHomeGameCarefullyRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/join/mgps/fragment/g;->f:Lcom/join/mgps/rpc/e;

    .line 43
    .line 44
    invoke-interface {v5, v4}, Lcom/join/mgps/rpc/e;->o1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-nez v4, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->showMessage(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/g;->R(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    iget p1, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 67
    .line 68
    if-eq p1, v1, :cond_3

    .line 69
    .line 70
    iput v3, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->f0()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    const/4 v6, 0x1

    .line 81
    if-ne v5, v6, :cond_a

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_a

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_a

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Lcom/join/mgps/dto/HomeGameCarefullyBean;

    .line 108
    .line 109
    if-ne p1, v6, :cond_5

    .line 110
    .line 111
    iput p1, p0, Lcom/join/mgps/fragment/g;->m:I

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    invoke-virtual {v4}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    if-eqz v5, :cond_7

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-lez v5, :cond_7

    .line 129
    .line 130
    iput p1, p0, Lcom/join/mgps/fragment/g;->m:I

    .line 131
    .line 132
    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/join/mgps/fragment/g;->c0(Lcom/join/mgps/dto/HomeGameCarefullyBean;I)V

    .line 133
    .line 134
    .line 135
    if-ne p1, v6, :cond_6

    .line 136
    .line 137
    invoke-virtual {p0, v4}, Lcom/join/mgps/fragment/g;->Z(Lcom/join/mgps/dto/HomeGameCarefullyBean;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    const/4 p1, 0x2

    .line 141
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->R(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    iput v1, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 146
    .line 147
    if-ne p1, v6, :cond_8

    .line 148
    .line 149
    const/16 p1, 0xa

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->R(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    :cond_8
    iget p1, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 155
    .line 156
    if-eq p1, v1, :cond_9

    .line 157
    .line 158
    iput v3, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 159
    .line 160
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->f0()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_a
    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_b

    .line 169
    .line 170
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->showMessage(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_b
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/g;->R(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .line 179
    .line 180
    :goto_1
    iget p1, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 181
    .line 182
    if-eq p1, v1, :cond_d

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :catchall_0
    move-exception p1

    .line 186
    goto :goto_3

    .line 187
    :catch_0
    move-exception p1

    .line 188
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_c

    .line 196
    .line 197
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->showMessage(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_c
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/g;->R(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    .line 206
    .line 207
    iget p1, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 208
    .line 209
    if-eq p1, v1, :cond_d

    .line 210
    .line 211
    :goto_2
    iput v3, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 212
    .line 213
    :cond_d
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->f0()V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :goto_3
    iget v0, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 218
    .line 219
    if-eq v0, v1, :cond_e

    .line 220
    .line 221
    iput v3, p0, Lcom/join/mgps/fragment/g;->n:I

    .line 222
    .line 223
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->f0()V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_10

    .line 232
    .line 233
    const p1, 0x7f12031e

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_10
    const/16 p1, 0x9

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/g;->R(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->f0()V

    .line 249
    .line 250
    .line 251
    :goto_4
    return-void
.end method

.method Z(Lcom/join/mgps/dto/HomeGameCarefullyBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v1, Lcom/join/mgps/db/tables/ForumTable;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/join/mgps/db/tables/ForumTable;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomeGameCarefully:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/ForumTable;->setType(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/db/tables/ForumTable;->setArgs1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/join/mgps/db/tables/ForumTable;->setArgs2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const-wide/16 v4, 0x3e8

    .line 36
    .line 37
    div-long/2addr v2, v4

    .line 38
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/join/mgps/db/tables/ForumTable;->setTime(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lt6/t;->p()Lt6/t;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v1}, Lt6/t;->u(Lcom/join/mgps/db/tables/ForumTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method a0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa/sim/statistic/Where;->index:Lcom/papa/sim/statistic/Where;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v2

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
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->d:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const v1, 0x7f1203cc

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    :cond_0
    const-string v0, ""

    .line 56
    .line 57
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method afterViews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/g;->f:Lcom/join/mgps/rpc/e;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/p1;->a(Landroid/content/Context;)Lcom/join/mgps/dto/FirstIntentData;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/fragment/g;->h:Lcom/join/mgps/pref/PrefDef_;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isShowEditorRecoomand()Lorg/androidannotations/api/sharedpreferences/d;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isIntent()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/join/mgps/fragment/g;->i:Ljava/lang/String;

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/join/mgps/fragment/g;->j:Z

    .line 74
    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->V()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/g;->R(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->h:Lcom/join/mgps/pref/PrefDef_;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstRunGameCarefullyLong()Lorg/androidannotations/api/sharedpreferences/k;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-wide/16 v4, 0x0

    .line 92
    .line 93
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v0, v4}, Lorg/androidannotations/api/sharedpreferences/k;->j(Ljava/lang/Long;)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    sub-long/2addr v2, v4

    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 107
    .line 108
    const-wide/16 v4, 0x1

    .line 109
    .line 110
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    cmp-long v0, v2, v4

    .line 115
    .line 116
    if-gtz v0, :cond_2

    .line 117
    .line 118
    iget-boolean v0, p0, Lcom/join/mgps/fragment/g;->j:Z

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    :cond_2
    iput v1, p0, Lcom/join/mgps/fragment/g;->k:I

    .line 123
    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->loading()V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public b0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->p:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/e;->C(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method c0(Lcom/join/mgps/dto/HomeGameCarefullyBean;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p2, v1, :cond_1

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/fragment/g;->k:I

    .line 6
    .line 7
    if-ne v2, v1, :cond_0

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/fragment/g;->k:I

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/g;->h:Lcom/join/mgps/pref/PrefDef_;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->isFirstRunGameCarefullyLong()Lorg/androidannotations/api/sharedpreferences/k;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/fragment/g;->d0(Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method d0(Lcom/join/mgps/dto/HomeGameCarefullyBean;II)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "page",
            "fromDb"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v2, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 18
    .line 19
    :cond_1
    const/4 v3, 0x6

    .line 20
    const/16 v5, 0x68

    .line 21
    .line 22
    const/4 v6, 0x5

    .line 23
    const/4 v7, 0x7

    .line 24
    const-string v8, ""

    .line 25
    .line 26
    const/4 v9, 0x2

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x1

    .line 29
    move/from16 v12, p2

    .line 30
    .line 31
    if-ne v12, v11, :cond_16

    .line 32
    .line 33
    :try_start_0
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->h:Lcom/join/mgps/pref/PrefDef_;

    .line 39
    .line 40
    invoke-virtual {v12}, Lcom/join/mgps/pref/PrefDef_;->isShowEditorRecoomand()Lorg/androidannotations/api/sharedpreferences/d;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    invoke-virtual {v12}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    check-cast v12, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    if-eqz v12, :cond_2

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getVisitor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    if-eqz v12, :cond_2

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getVisitor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    if-nez v12, :cond_2

    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getVisitor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->h:Lcom/join/mgps/pref/PrefDef_;

    .line 81
    .line 82
    invoke-virtual {v13}, Lcom/join/mgps/pref/PrefDef_;->isShowEditorRecoomand()Lorg/androidannotations/api/sharedpreferences/d;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v13, v14}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const/4 v13, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getEditor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    const/4 v13, 0x0

    .line 98
    :goto_0
    if-eqz v12, :cond_3

    .line 99
    .line 100
    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    if-nez v14, :cond_3

    .line 109
    .line 110
    const/16 v14, 0x65

    .line 111
    .line 112
    invoke-virtual {v12, v14}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 113
    .line 114
    .line 115
    iget-object v14, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 116
    .line 117
    new-instance v15, Lcom/join/mgps/adapter/e$i0;

    .line 118
    .line 119
    invoke-direct {v15, v11, v12}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v15, v13}, Lcom/join/mgps/adapter/e$i0;->k(I)Lcom/join/mgps/adapter/e$i0;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 130
    .line 131
    new-instance v14, Lcom/join/mgps/adapter/e$i0;

    .line 132
    .line 133
    invoke-direct {v14, v9, v12}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    if-eq v0, v11, :cond_3

    .line 140
    .line 141
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v13}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {v13}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    invoke-virtual {v13}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v16

    .line 161
    const-string v17, "eidtButton"

    .line 162
    .line 163
    const-string v18, ""

    .line 164
    .line 165
    const-string v19, "\u7f16\u8f91\u63a8\u8350"

    .line 166
    .line 167
    invoke-virtual/range {v14 .. v19}, Lcom/papa/sim/statistic/t;->n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBuy_advert_recommend()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    if-eqz v12, :cond_4

    .line 175
    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBuy_advert_recommend()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    const/16 v13, 0x66

    .line 181
    .line 182
    invoke-virtual {v12, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 183
    .line 184
    .line 185
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 186
    .line 187
    new-instance v14, Lcom/join/mgps/adapter/e$i0;

    .line 188
    .line 189
    invoke-direct {v14, v11, v12}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v14, v9}, Lcom/join/mgps/adapter/e$i0;->k(I)Lcom/join/mgps/adapter/e$i0;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 200
    .line 201
    new-instance v14, Lcom/join/mgps/adapter/e$i0;

    .line 202
    .line 203
    const/4 v15, 0x3

    .line 204
    invoke-direct {v14, v15, v12}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 211
    .line 212
    new-instance v14, Lcom/join/mgps/adapter/e$i0;

    .line 213
    .line 214
    const/4 v15, 0x4

    .line 215
    invoke-direct {v14, v15, v12}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    if-eq v0, v11, :cond_4

    .line 222
    .line 223
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 224
    .line 225
    invoke-static {v13}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 226
    .line 227
    .line 228
    move-result-object v14

    .line 229
    iget-object v13, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 230
    .line 231
    invoke-static {v13}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    invoke-virtual {v13}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v16

    .line 243
    const-string v17, "adButton"

    .line 244
    .line 245
    const-string v18, ""

    .line 246
    .line 247
    const-string v19, "\u5e7f\u544a\u8d5e\u52a9"

    .line 248
    .line 249
    invoke-virtual/range {v14 .. v19}, Lcom/papa/sim/statistic/t;->n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    const/4 v13, 0x0

    .line 257
    if-eqz v12, :cond_9

    .line 258
    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-lez v12, :cond_9

    .line 268
    .line 269
    new-instance v12, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 270
    .line 271
    invoke-direct {v12}, Lcom/join/mgps/dto/TodayWufunEmuClassify;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/g;->S()I

    .line 275
    .line 276
    .line 277
    move-result v14

    .line 278
    const/4 v15, 0x0

    .line 279
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v16

    .line 283
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-ge v15, v2, :cond_8

    .line 288
    .line 289
    if-nez v14, :cond_5

    .line 290
    .line 291
    if-nez v15, :cond_5

    .line 292
    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 302
    .line 303
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/g;->b0(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    check-cast v12, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 319
    .line 320
    move v14, v2

    .line 321
    goto :goto_2

    .line 322
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    check-cast v2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 331
    .line 332
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getId()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-ne v14, v2, :cond_6

    .line 337
    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 347
    .line 348
    move-object v12, v2

    .line 349
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    check-cast v2, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 358
    .line 359
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v16

    .line 363
    if-eqz v16, :cond_7

    .line 364
    .line 365
    invoke-virtual {v2}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    .line 375
    .line 376
    move-result v16

    .line 377
    if-eqz v16, :cond_7

    .line 378
    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v16

    .line 383
    move-object/from16 v9, v16

    .line 384
    .line 385
    check-cast v9, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 386
    .line 387
    const/16 v4, 0x67

    .line 388
    .line 389
    invoke-virtual {v9, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 390
    .line 391
    .line 392
    const/4 v9, 0x2

    .line 393
    goto :goto_3

    .line 394
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 395
    .line 396
    const/4 v9, 0x2

    .line 397
    goto :goto_1

    .line 398
    :cond_8
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 399
    .line 400
    new-instance v4, Lcom/join/mgps/adapter/e$i0;

    .line 401
    .line 402
    invoke-direct {v4, v10, v13}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 409
    .line 410
    new-instance v4, Lcom/join/mgps/adapter/e$i0;

    .line 411
    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_prefecture()Ljava/util/List;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    const/16 v14, 0x10

    .line 417
    .line 418
    invoke-direct {v4, v14, v9}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 425
    .line 426
    new-instance v4, Lcom/join/mgps/adapter/e$i0;

    .line 427
    .line 428
    const/16 v9, 0x11

    .line 429
    .line 430
    invoke-direct {v4, v9, v12}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    .line 437
    .line 438
    .line 439
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    const-string v4, "1-"

    .line 441
    .line 442
    if-eqz v2, :cond_f

    .line 443
    .line 444
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    if-nez v2, :cond_a

    .line 453
    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    if-eqz v2, :cond_f

    .line 463
    .line 464
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    iget-object v9, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 469
    .line 470
    new-instance v12, Lcom/join/mgps/adapter/e$i0;

    .line 471
    .line 472
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getAddTimes()J

    .line 473
    .line 474
    .line 475
    move-result-wide v14

    .line 476
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 477
    .line 478
    .line 479
    move-result-object v14

    .line 480
    invoke-direct {v12, v6, v14}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    if-eqz v9, :cond_d

    .line 491
    .line 492
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 493
    .line 494
    .line 495
    move-result-object v9

    .line 496
    invoke-virtual {v9, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 497
    .line 498
    .line 499
    new-instance v9, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 515
    .line 516
    new-instance v14, Lcom/join/mgps/adapter/e$i0;

    .line 517
    .line 518
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 519
    .line 520
    .line 521
    move-result-object v15

    .line 522
    invoke-direct {v14, v3, v15}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v14, v9}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 526
    .line 527
    .line 528
    move-result-object v14

    .line 529
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 533
    .line 534
    new-instance v14, Lcom/join/mgps/adapter/e$i0;

    .line 535
    .line 536
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 537
    .line 538
    .line 539
    move-result-object v15

    .line 540
    invoke-direct {v14, v7, v15}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v14, v9}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 544
    .line 545
    .line 546
    move-result-object v14

    .line 547
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    if-eq v0, v11, :cond_c

    .line 551
    .line 552
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 553
    .line 554
    invoke-static {v12}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 555
    .line 556
    .line 557
    move-result-object v19

    .line 558
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 559
    .line 560
    invoke-static {v12}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 561
    .line 562
    .line 563
    move-result-object v12

    .line 564
    invoke-virtual {v12}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v20

    .line 568
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 569
    .line 570
    .line 571
    move-result-object v12

    .line 572
    if-eqz v12, :cond_b

    .line 573
    .line 574
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 575
    .line 576
    .line 577
    move-result-object v12

    .line 578
    invoke-virtual {v12}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v12

    .line 582
    move-object/from16 v21, v12

    .line 583
    .line 584
    goto :goto_4

    .line 585
    :cond_b
    move-object/from16 v21, v8

    .line 586
    .line 587
    :goto_4
    const-string v22, "todayButton"

    .line 588
    .line 589
    const-string v24, "\u4eca\u65e5\u609f\u996d"

    .line 590
    .line 591
    move-object/from16 v23, v9

    .line 592
    .line 593
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/t;->n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    :cond_c
    const/4 v9, 0x1

    .line 597
    goto :goto_5

    .line 598
    :cond_d
    const/4 v9, 0x0

    .line 599
    :goto_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    .line 600
    .line 601
    .line 602
    move-result-object v12

    .line 603
    if-eqz v12, :cond_10

    .line 604
    .line 605
    new-instance v12, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    add-int/lit8 v9, v9, 0x1

    .line 614
    .line 615
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v12

    .line 622
    iget-object v14, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 623
    .line 624
    new-instance v15, Lcom/join/mgps/adapter/e$i0;

    .line 625
    .line 626
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    .line 627
    .line 628
    .line 629
    move-result-object v10

    .line 630
    const/16 v7, 0xd

    .line 631
    .line 632
    invoke-direct {v15, v7, v10}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    const/4 v7, 0x2

    .line 636
    invoke-virtual {v15, v7}, Lcom/join/mgps/adapter/e$i0;->i(I)Lcom/join/mgps/adapter/e$i0;

    .line 637
    .line 638
    .line 639
    move-result-object v10

    .line 640
    invoke-virtual {v10, v12}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 641
    .line 642
    .line 643
    move-result-object v7

    .line 644
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    iget-object v7, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 648
    .line 649
    new-instance v10, Lcom/join/mgps/adapter/e$i0;

    .line 650
    .line 651
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    .line 652
    .line 653
    .line 654
    move-result-object v14

    .line 655
    const/16 v15, 0xe

    .line 656
    .line 657
    invoke-direct {v10, v15, v14}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    const/4 v14, 0x2

    .line 661
    invoke-virtual {v10, v14}, Lcom/join/mgps/adapter/e$i0;->i(I)Lcom/join/mgps/adapter/e$i0;

    .line 662
    .line 663
    .line 664
    move-result-object v10

    .line 665
    invoke-virtual {v10, v12}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 666
    .line 667
    .line 668
    move-result-object v10

    .line 669
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    if-eq v0, v11, :cond_10

    .line 673
    .line 674
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 675
    .line 676
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 677
    .line 678
    .line 679
    move-result-object v19

    .line 680
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 681
    .line 682
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v20

    .line 690
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    if-eqz v0, :cond_e

    .line 695
    .line 696
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    move-object/from16 v21, v0

    .line 705
    .line 706
    goto :goto_6

    .line 707
    :cond_e
    move-object/from16 v21, v8

    .line 708
    .line 709
    :goto_6
    const-string v22, "todayButton"

    .line 710
    .line 711
    const-string v24, "\u4eca\u65e5\u609f\u996d"

    .line 712
    .line 713
    move-object/from16 v23, v12

    .line 714
    .line 715
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/t;->n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    goto :goto_7

    .line 719
    :cond_f
    const/4 v9, 0x0

    .line 720
    :cond_10
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getCarefully_special()Ljava/util/List;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    const/16 v2, 0xc

    .line 725
    .line 726
    if-eqz v0, :cond_12

    .line 727
    .line 728
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getCarefully_special()Ljava/util/List;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    if-lez v0, :cond_12

    .line 737
    .line 738
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 739
    .line 740
    new-instance v7, Lcom/join/mgps/adapter/e$i0;

    .line 741
    .line 742
    const/16 v10, 0x8

    .line 743
    .line 744
    invoke-direct {v7, v10, v13}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    const/4 v0, 0x0

    .line 751
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getCarefully_special()Ljava/util/List;

    .line 752
    .line 753
    .line 754
    move-result-object v7

    .line 755
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 756
    .line 757
    .line 758
    move-result v7

    .line 759
    if-ge v0, v7, :cond_11

    .line 760
    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getCarefully_special()Ljava/util/List;

    .line 762
    .line 763
    .line 764
    move-result-object v7

    .line 765
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v7

    .line 769
    check-cast v7, Lcom/join/mgps/dto/BannerBean;

    .line 770
    .line 771
    new-instance v10, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    add-int/lit8 v9, v9, 0x1

    .line 780
    .line 781
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v10

    .line 788
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 789
    .line 790
    new-instance v14, Lcom/join/mgps/adapter/e$i0;

    .line 791
    .line 792
    const/16 v15, 0x9

    .line 793
    .line 794
    invoke-direct {v14, v15, v7}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v14, v0}, Lcom/join/mgps/adapter/e$i0;->j(I)Lcom/join/mgps/adapter/e$i0;

    .line 798
    .line 799
    .line 800
    move-result-object v14

    .line 801
    invoke-virtual {v14, v10}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 802
    .line 803
    .line 804
    move-result-object v14

    .line 805
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 809
    .line 810
    invoke-static {v12}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 811
    .line 812
    .line 813
    move-result-object v19

    .line 814
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 815
    .line 816
    invoke-static {v12}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 817
    .line 818
    .line 819
    move-result-object v12

    .line 820
    invoke-virtual {v12}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v20

    .line 824
    invoke-virtual {v7}, Lcom/join/mgps/dto/BannerBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v21

    .line 828
    const-string v22, "todayButton"

    .line 829
    .line 830
    const-string v24, "\u7cbe\u9009\u4e13\u9898"

    .line 831
    .line 832
    move-object/from16 v23, v10

    .line 833
    .line 834
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/t;->n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    add-int/lit8 v0, v0, 0x1

    .line 838
    .line 839
    goto :goto_8

    .line 840
    :cond_11
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 841
    .line 842
    new-instance v7, Lcom/join/mgps/adapter/e$i0;

    .line 843
    .line 844
    invoke-direct {v7, v2, v13}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 845
    .line 846
    .line 847
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_bespeak_recommend()Ljava/util/List;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    if-eqz v0, :cond_15

    .line 855
    .line 856
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_bespeak_recommend()Ljava/util/List;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-lez v0, :cond_15

    .line 865
    .line 866
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 867
    .line 868
    new-instance v7, Lcom/join/mgps/adapter/e$i0;

    .line 869
    .line 870
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBespeak_list_url()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v10

    .line 874
    const/16 v12, 0xa

    .line 875
    .line 876
    invoke-direct {v7, v12, v10}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 877
    .line 878
    .line 879
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    const/4 v0, 0x0

    .line 883
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_bespeak_recommend()Ljava/util/List;

    .line 884
    .line 885
    .line 886
    move-result-object v7

    .line 887
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 888
    .line 889
    .line 890
    move-result v7

    .line 891
    if-ge v0, v7, :cond_14

    .line 892
    .line 893
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getGame_bespeak_recommend()Ljava/util/List;

    .line 894
    .line 895
    .line 896
    move-result-object v7

    .line 897
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v7

    .line 901
    check-cast v7, Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 902
    .line 903
    new-instance v10, Ljava/lang/StringBuilder;

    .line 904
    .line 905
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    add-int/2addr v9, v11

    .line 912
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v10

    .line 919
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 920
    .line 921
    new-instance v14, Lcom/join/mgps/adapter/e$i0;

    .line 922
    .line 923
    const/16 v15, 0xb

    .line 924
    .line 925
    invoke-direct {v14, v15, v7}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v14, v0}, Lcom/join/mgps/adapter/e$i0;->j(I)Lcom/join/mgps/adapter/e$i0;

    .line 929
    .line 930
    .line 931
    move-result-object v14

    .line 932
    invoke-virtual {v14, v10}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 933
    .line 934
    .line 935
    move-result-object v14

    .line 936
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 940
    .line 941
    invoke-static {v12}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 942
    .line 943
    .line 944
    move-result-object v19

    .line 945
    iget-object v12, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 946
    .line 947
    invoke-static {v12}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 948
    .line 949
    .line 950
    move-result-object v12

    .line 951
    invoke-virtual {v12}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v20

    .line 955
    if-eqz v7, :cond_13

    .line 956
    .line 957
    invoke-virtual {v7}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v7

    .line 961
    move-object/from16 v21, v7

    .line 962
    .line 963
    goto :goto_a

    .line 964
    :cond_13
    move-object/from16 v21, v8

    .line 965
    .line 966
    :goto_a
    const-string v22, "todayButton"

    .line 967
    .line 968
    const-string v24, "\u65b0\u6e38\u9884\u7ea6"

    .line 969
    .line 970
    move-object/from16 v23, v10

    .line 971
    .line 972
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/t;->n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    add-int/lit8 v0, v0, 0x1

    .line 976
    .line 977
    goto :goto_9

    .line 978
    :cond_14
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 979
    .line 980
    new-instance v4, Lcom/join/mgps/adapter/e$i0;

    .line 981
    .line 982
    invoke-direct {v4, v2, v13}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 983
    .line 984
    .line 985
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    .line 987
    .line 988
    :cond_15
    iput v11, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 989
    .line 990
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    if-eqz v0, :cond_1c

    .line 995
    .line 996
    const/4 v10, 0x0

    .line 997
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1002
    .line 1003
    .line 1004
    move-result v0

    .line 1005
    if-ge v10, v0, :cond_1c

    .line 1006
    .line 1007
    iget v0, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1008
    .line 1009
    add-int/2addr v0, v11

    .line 1010
    iput v0, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1011
    .line 1012
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/HomeGameCarefullyBean;->getBefore_refresh()Ljava/util/List;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    check-cast v0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    .line 1021
    .line 1022
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 1023
    .line 1024
    new-instance v4, Lcom/join/mgps/adapter/e$i0;

    .line 1025
    .line 1026
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getAddTimes()J

    .line 1027
    .line 1028
    .line 1029
    move-result-wide v12

    .line 1030
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v7

    .line 1034
    invoke-direct {v4, v6, v7}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v2

    .line 1044
    if-eqz v2, :cond_18

    .line 1045
    .line 1046
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v2

    .line 1050
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 1051
    .line 1052
    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1056
    .line 1057
    .line 1058
    iget v4, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1059
    .line 1060
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    const-string v4, "-1"

    .line 1064
    .line 1065
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 1073
    .line 1074
    new-instance v7, Lcom/join/mgps/adapter/e$i0;

    .line 1075
    .line 1076
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v9

    .line 1080
    invoke-direct {v7, v3, v9}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v7, v2}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v7

    .line 1087
    iget v9, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1088
    .line 1089
    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/e$i0;->m(I)Lcom/join/mgps/adapter/e$i0;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v7

    .line 1093
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 1097
    .line 1098
    new-instance v7, Lcom/join/mgps/adapter/e$i0;

    .line 1099
    .line 1100
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v9

    .line 1104
    const/4 v12, 0x7

    .line 1105
    invoke-direct {v7, v12, v9}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v7, v2}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v7

    .line 1112
    iget v9, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1113
    .line 1114
    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/e$i0;->m(I)Lcom/join/mgps/adapter/e$i0;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v7

    .line 1118
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    iget v4, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1122
    .line 1123
    const/4 v7, 0x7

    .line 1124
    if-gt v4, v7, :cond_18

    .line 1125
    .line 1126
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 1127
    .line 1128
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v19

    .line 1132
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 1133
    .line 1134
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v4

    .line 1138
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v20

    .line 1142
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v4

    .line 1146
    if-eqz v4, :cond_17

    .line 1147
    .line 1148
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v4

    .line 1152
    invoke-virtual {v4}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v4

    .line 1156
    move-object/from16 v21, v4

    .line 1157
    .line 1158
    goto :goto_c

    .line 1159
    :cond_17
    move-object/from16 v21, v8

    .line 1160
    .line 1161
    :goto_c
    const-string v22, "todayButton"

    .line 1162
    .line 1163
    const-string v24, "\u4eca\u65e5\u609f\u996d"

    .line 1164
    .line 1165
    move-object/from16 v23, v2

    .line 1166
    .line 1167
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/t;->n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    :cond_18
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v2

    .line 1174
    if-eqz v2, :cond_1a

    .line 1175
    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1179
    .line 1180
    .line 1181
    iget v4, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1182
    .line 1183
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    const-string v4, "-2"

    .line 1187
    .line 1188
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 1196
    .line 1197
    new-instance v7, Lcom/join/mgps/adapter/e$i0;

    .line 1198
    .line 1199
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v9

    .line 1203
    const/16 v12, 0xd

    .line 1204
    .line 1205
    invoke-direct {v7, v12, v9}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 1206
    .line 1207
    .line 1208
    const/4 v9, 0x2

    .line 1209
    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/e$i0;->i(I)Lcom/join/mgps/adapter/e$i0;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v7

    .line 1213
    invoke-virtual {v7, v2}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v7

    .line 1217
    iget v9, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1218
    .line 1219
    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/e$i0;->m(I)Lcom/join/mgps/adapter/e$i0;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v7

    .line 1223
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 1227
    .line 1228
    new-instance v7, Lcom/join/mgps/adapter/e$i0;

    .line 1229
    .line 1230
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_information()Lcom/join/mgps/dto/InformationListDataBean;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v9

    .line 1234
    const/16 v13, 0xe

    .line 1235
    .line 1236
    invoke-direct {v7, v13, v9}, Lcom/join/mgps/adapter/e$i0;-><init>(ILjava/lang/Object;)V

    .line 1237
    .line 1238
    .line 1239
    const/4 v9, 0x2

    .line 1240
    invoke-virtual {v7, v9}, Lcom/join/mgps/adapter/e$i0;->i(I)Lcom/join/mgps/adapter/e$i0;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v7

    .line 1244
    invoke-virtual {v7, v2}, Lcom/join/mgps/adapter/e$i0;->l(Ljava/lang/String;)Lcom/join/mgps/adapter/e$i0;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v7

    .line 1248
    iget v14, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1249
    .line 1250
    invoke-virtual {v7, v14}, Lcom/join/mgps/adapter/e$i0;->m(I)Lcom/join/mgps/adapter/e$i0;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v7

    .line 1254
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    iget v4, v1, Lcom/join/mgps/fragment/g;->l:I

    .line 1258
    .line 1259
    const/4 v7, 0x7

    .line 1260
    if-gt v4, v7, :cond_1b

    .line 1261
    .line 1262
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 1263
    .line 1264
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v19

    .line 1268
    iget-object v4, v1, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

    .line 1269
    .line 1270
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v4

    .line 1274
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v20

    .line 1278
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v4

    .line 1282
    if-eqz v4, :cond_19

    .line 1283
    .line 1284
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    move-object/from16 v21, v0

    .line 1293
    .line 1294
    goto :goto_d

    .line 1295
    :cond_19
    move-object/from16 v21, v8

    .line 1296
    .line 1297
    :goto_d
    const-string v22, "todayButton"

    .line 1298
    .line 1299
    const-string v24, "\u4eca\u65e5\u609f\u996d"

    .line 1300
    .line 1301
    move-object/from16 v23, v2

    .line 1302
    .line 1303
    invoke-virtual/range {v19 .. v24}, Lcom/papa/sim/statistic/t;->n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1304
    .line 1305
    .line 1306
    goto :goto_e

    .line 1307
    :cond_1a
    const/4 v7, 0x7

    .line 1308
    const/4 v9, 0x2

    .line 1309
    const/16 v12, 0xd

    .line 1310
    .line 1311
    const/16 v13, 0xe

    .line 1312
    .line 1313
    :cond_1b
    :goto_e
    add-int/lit8 v10, v10, 0x1

    .line 1314
    .line 1315
    goto/16 :goto_b

    .line 1316
    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    :cond_1c
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->p:Lcom/join/mgps/adapter/e;

    .line 1325
    .line 1326
    iget-object v2, v1, Lcom/join/mgps/fragment/g;->r:Ljava/util/List;

    .line 1327
    .line 1328
    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/e;->D(Ljava/util/List;)V

    .line 1329
    .line 1330
    .line 1331
    iget-object v0, v1, Lcom/join/mgps/fragment/g;->p:Lcom/join/mgps/adapter/e;

    .line 1332
    .line 1333
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1334
    .line 1335
    .line 1336
    return-void
.end method

.method e0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/join/mgps/fragment/g$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g$c;-><init>(Lcom/join/mgps/fragment/g;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x320

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method f0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->o:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/join/mgps/fragment/g$b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/g$b;-><init>(Lcom/join/mgps/fragment/g;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x320

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method loading()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/g;->W()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/fragment/g;->X()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/g;->g:Landroid/content/Context;

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
