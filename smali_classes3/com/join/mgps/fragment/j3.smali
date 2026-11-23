.class public Lcom/join/mgps/fragment/j3;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/j3$c;,
        Lcom/join/mgps/fragment/j3$g;,
        Lcom/join/mgps/fragment/j3$d;,
        Lcom/join/mgps/fragment/j3$f;,
        Lcom/join/mgps/fragment/j3$e;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02a6
.end annotation


# instance fields
.field c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/fragment/j3$c;

.field f:Landroid/content/Context;

.field g:Landroid/widget/Button;
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

.field j:Lcom/join/mgps/rpc/b;

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/fragment/j3$g;",
            ">;"
        }
    .end annotation
.end field

.field o:Z

.field p:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:I

.field r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;",
            ">;"
        }
    .end annotation
.end field

.field t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/fragment/j3;->o:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/join/mgps/fragment/j3;->q:I

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/join/mgps/fragment/j3;->r:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/fragment/j3;->t:Z

    .line 15
    .line 16
    return-void
.end method

.method private N(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/join/mgps/activity/GameDetailActivity_;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "fromid"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string p1, "_from"

    .line 18
    .line 19
    const/16 v1, 0x2b5f

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p1, "groupuid"

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string p1, "gameid"

    .line 30
    .line 31
    iget-object p2, p0, Lcom/join/mgps/fragment/j3;->m:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string p1, "company_id"

    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/fragment/j3;->l:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/j3;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/j3;->V(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/j3;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/j3;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/j3;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/j3;->N(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private V(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "pn"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setType(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p1, p2}, Lb7/i;->V0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p2, Lcom/join/mgps/fragment/j3$b;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Lcom/join/mgps/fragment/j3$b;-><init>(Lcom/join/mgps/fragment/j3;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static W(I)Lcom/join/mgps/fragment/j3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rankingtype"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isRanking"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const-string v1, "rankingType"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/join/mgps/fragment/k3;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/fragment/k3;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public static X(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/fragment/j3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "company_id",
            "gameid"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "company_id"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "gameid"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lcom/join/mgps/fragment/k3;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/mgps/fragment/k3;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method M()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->n:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->j:Lcom/join/mgps/rpc/b;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/join/mgps/fragment/j3$c;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/j3$c;-><init>(Lcom/join/mgps/fragment/j3;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/join/mgps/fragment/j3;->e:Lcom/join/mgps/fragment/j3$c;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 32
    .line 33
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/fragment/j3;->e:Lcom/join/mgps/fragment/j3$c;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 54
    .line 55
    .line 56
    const-string v1, "company_id"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/join/mgps/fragment/j3;->l:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "gameid"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->m:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, ""

    .line 73
    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    iput-object v1, p0, Lcom/join/mgps/fragment/j3;->m:Ljava/lang/String;

    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->l:Ljava/lang/String;

    .line 79
    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    iput-object v1, p0, Lcom/join/mgps/fragment/j3;->l:Ljava/lang/String;

    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 91
    .line 92
    const/16 v1, 0xa

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 98
    .line 99
    new-instance v1, Lcom/join/mgps/fragment/j3$a;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/j3$a;-><init>(Lcom/join/mgps/fragment/j3;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "isRanking"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput-boolean v0, p0, Lcom/join/mgps/fragment/j3;->r:Z

    .line 118
    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "rankingType"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iput v0, p0, Lcom/join/mgps/fragment/j3;->q:I

    .line 132
    .line 133
    iget v1, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 134
    .line 135
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/fragment/j3;->V(II)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->T()V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void
.end method

.method O()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->d:Landroid/widget/LinearLayout;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->U()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method S()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->n:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->e:Lcom/join/mgps/fragment/j3$c;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method T()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->showLoding()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v0, ""

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lorg/springframework/util/LinkedMultiValueMap;

    .line 29
    .line 30
    invoke-direct {v3}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "page"

    .line 34
    .line 35
    iget v5, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 36
    .line 37
    add-int/lit8 v6, v5, 0x1

    .line 38
    .line 39
    iput v6, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v3, v4, v5}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string v4, "company_id"

    .line 49
    .line 50
    iget-object v5, p0, Lcom/join/mgps/fragment/j3;->l:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const-string v4, "game_id"

    .line 56
    .line 57
    iget-object v5, p0, Lcom/join/mgps/fragment/j3;->m:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, v4, v5}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string v4, "device_id"

    .line 63
    .line 64
    invoke-virtual {v3, v4, v0}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "version"

    .line 68
    .line 69
    invoke-virtual {v3, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/fragment/j3;->j:Lcom/join/mgps/rpc/b;

    .line 78
    .line 79
    invoke-interface {v2, v3}, Lcom/join/mgps/rpc/b;->U(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromPopoWinBeanV2;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v3, 0x2

    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2;->getError()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_5

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2;->getData()Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-eqz v4, :cond_5

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2;->getData()Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;->getFav_list()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_5

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2;->getData()Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;->getFav_list()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-lez v4, :cond_5

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->U()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->a0()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2;->getData()Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;->getFav_list()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iget v5, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 137
    .line 138
    if-ne v5, v3, :cond_1

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2;->getData()Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$ResultDataBean;->getFamous_list()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, p0, Lcom/join/mgps/fragment/j3;->s:Ljava/util/List;

    .line 149
    .line 150
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/16 v5, 0xa

    .line 155
    .line 156
    if-ge v2, v5, :cond_2

    .line 157
    .line 158
    iput-boolean v1, p0, Lcom/join/mgps/fragment/j3;->t:Z

    .line 159
    .line 160
    :cond_2
    const/4 v1, 0x0

    .line 161
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ge v1, v2, :cond_4

    .line 166
    .line 167
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 172
    .line 173
    new-instance v11, Lcom/join/mgps/fragment/j3$g;

    .line 174
    .line 175
    const/4 v8, 0x1

    .line 176
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    move-object v5, v11

    .line 185
    move-object v6, p0

    .line 186
    move-object v7, v2

    .line 187
    invoke-direct/range {v5 .. v10}, Lcom/join/mgps/fragment/j3$g;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    if-nez v1, :cond_3

    .line 194
    .line 195
    iget-object v5, p0, Lcom/join/mgps/fragment/j3;->s:Ljava/util/List;

    .line 196
    .line 197
    if-eqz v5, :cond_3

    .line 198
    .line 199
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-lez v5, :cond_3

    .line 204
    .line 205
    iget v5, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 206
    .line 207
    if-ne v5, v3, :cond_3

    .line 208
    .line 209
    new-instance v5, Lcom/join/mgps/fragment/j3$g;

    .line 210
    .line 211
    iget-object v8, p0, Lcom/join/mgps/fragment/j3;->s:Ljava/util/List;

    .line 212
    .line 213
    const/4 v9, 0x2

    .line 214
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    move-object v6, v5

    .line 223
    move-object v7, p0

    .line 224
    invoke-direct/range {v6 .. v11}, Lcom/join/mgps/fragment/j3$g;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/j3;->Z(Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_5
    iget v0, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 238
    .line 239
    if-ne v0, v3, :cond_6

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->O()V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->Y()V

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->showLodingFailed()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    .line 259
    .line 260
    :goto_1
    return-void
.end method

.method U()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/j3;->i:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->i:Landroid/widget/LinearLayout;

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

.method Y()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method Z(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listData2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/fragment/j3$g;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->n:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->U()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->a0()V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->n:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/j3;->e:Lcom/join/mgps/fragment/j3$c;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-boolean p1, p0, Lcom/join/mgps/fragment/j3;->t:Z

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->Y()V

    .line 41
    .line 42
    .line 43
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->n:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ""

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method a0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

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
    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/fragment/j3;->r:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->showLoding()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "rankingType"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/join/mgps/fragment/j3;->q:I

    .line 22
    .line 23
    iget v1, p0, Lcom/join/mgps/fragment/j3;->k:I

    .line 24
    .line 25
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/fragment/j3;->V(II)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j3;->T()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->f:Landroid/content/Context;

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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->h:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->i:Landroid/widget/LinearLayout;

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
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->i:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->h:Landroid/widget/LinearLayout;

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
    return-void
.end method
