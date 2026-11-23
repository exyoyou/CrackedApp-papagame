.class public Lcom/join/mgps/fragment/s1;
.super Lcom/join/mgps/fragment/v1;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d068b
.end annotation


# static fields
.field private static final E:Ljava/lang/String; = "key_groups_data"

.field private static final F:Ljava/lang/String; = "key_groups_id"

.field private static final G:Ljava/lang/String; = "key_groups_name"

.field private static final H:Ljava/lang/String; = "key_fragment_pos"


# instance fields
.field A:I

.field B:Z

.field C:Z

.field D:Lcom/join/mgps/customview/t;

.field private c:I

.field private d:Lcom/join/mgps/dto/RecommenGroupClassify;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/join/mgps/customview/j;

.field private j:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field private k:I

.field private l:Ljava/lang/String;

.field m:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Ljava/lang/String;

.field p:Lcom/join/android/app/component/video/c;

.field q:Lcom/join/mgps/rpc/i;

.field public r:I

.field public s:I

.field t:Lcom/join/mgps/customview/MyFlowLayout;

.field u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/join/mgps/rpc/e;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/v1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ForumGroupPostsFragment"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->o:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->u:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->z:Ljava/util/List;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/join/mgps/fragment/s1;->A:I

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s1;->B:Z

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s1;->C:Z

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->D:Lcom/join/mgps/customview/t;

    .line 53
    .line 54
    return-void
.end method

.method static synthetic O(Lcom/join/mgps/fragment/s1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/s1;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s1;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/s1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/s1;->c:I

    .line 2
    .line 3
    return p0
.end method

.method private R(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private V()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->D:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->D:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private X()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_groups_data"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "key_fragment_pos"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "key_groups_id"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "key_groups_name"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-class v5, Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 52
    .line 53
    invoke-virtual {v4, v0, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->d:Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 60
    .line 61
    :cond_0
    iput v1, p0, Lcom/join/mgps/fragment/s1;->c:I

    .line 62
    .line 63
    iput v2, p0, Lcom/join/mgps/fragment/s1;->k:I

    .line 64
    .line 65
    iput-object v3, p0, Lcom/join/mgps/fragment/s1;->l:Ljava/lang/String;

    .line 66
    .line 67
    return-void
.end method

.method public static Z(ILjava/lang/String;Lcom/join/mgps/dto/RecommenGroupClassify;I)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fid",
            "fname",
            "data",
            "pos"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/ForumGroupPostsFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/ForumGroupPostsFragment_;-><init>()V

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
    const-string v2, "key_groups_data"

    .line 12
    .line 13
    invoke-static {p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const-string p2, "key_fragment_pos"

    .line 21
    .line 22
    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string p2, "key_groups_id"

    .line 26
    .line 27
    invoke-virtual {v1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string p0, "key_groups_name"

    .line 31
    .line 32
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method private b0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/fragment/s1$c;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s1$c;-><init>(Lcom/join/mgps/fragment/s1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/fragment/s1$d;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/s1$d;-><init>(Lcom/join/mgps/fragment/s1;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->i:Lcom/join/mgps/customview/j;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/join/mgps/fragment/s1;->o:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v3, p0, Lcom/join/mgps/fragment/s1;->c:I

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 60
    .line 61
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 66
    .line 67
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 71
    .line 72
    new-instance v1, Lcom/join/mgps/fragment/s1$e;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s1$e;-><init>(Lcom/join/mgps/fragment/s1;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f1(Lw6/f;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/join/mgps/fragment/s1;->o:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v2, p0, Lcom/join/mgps/fragment/s1;->c:I

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C0(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 105
    .line 106
    new-instance v1, Lcom/join/mgps/fragment/s1$f;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s1$f;-><init>(Lcom/join/mgps/fragment/s1;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->I0(Lcom/join/mgps/adapter/ForumBaseAdapter$t0;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 120
    .line 121
    new-instance v1, Lcom/join/mgps/fragment/s1$g;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s1$g;-><init>(Lcom/join/mgps/fragment/s1;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setOnOverScrolled(Lcom/join/mgps/customview/XListView2$e;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s1;->U(I)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method private e0(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0274

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    const/4 v3, -0x2

    .line 16
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x1

    .line 28
    const/high16 v5, 0x41a00000    # 20.0f

    .line 29
    .line 30
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    float-to-int v3, v3

    .line 35
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/high16 v5, 0x41200000    # 10.0f

    .line 46
    .line 47
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    float-to-int v3, v3

    .line 52
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x7f0a167a

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 65
    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_0
    const v2, 0x7f0604e5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    const-string v2, "#3CA4FD"

    .line 76
    .line 77
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v3, "#"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lcom/join/mgps/fragment/s1$j;

    .line 112
    .line 113
    invoke-direct {v2, p0, p1, v1}, Lcom/join/mgps/fragment/s1$j;-><init>(Lcom/join/mgps/fragment/s1;Lcom/join/mgps/dto/RecommendLabelTag;Landroid/widget/TextView;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    return-object v0
.end method

.method private isLogined(Landroid/content/Context;)Z
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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s1;->R(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private k0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->z:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->z:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x4

    .line 33
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/fragment/s1;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private m0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

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
    const/4 v1, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/customview/MyFlowLayout;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/MyFlowLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 53
    .line 54
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/s1;->e0(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/s1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-void

    .line 68
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-lez v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->t:Lcom/join/mgps/customview/MyFlowLayout;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 81
    .line 82
    .line 83
    :cond_5
    return-void
.end method

.method private n0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 14
    .line 15
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_FLOW_LAYOUT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 16
    .line 17
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;

    .line 18
    .line 19
    iget v3, p0, Lcom/join/mgps/fragment/s1;->k:I

    .line 20
    .line 21
    iget-object v4, p0, Lcom/join/mgps/fragment/s1;->l:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

    .line 24
    .line 25
    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private o0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 30
    .line 31
    sget-object v5, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 32
    .line 33
    new-instance v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;

    .line 34
    .line 35
    const/16 v19, 0x1

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-lez v6, :cond_0

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v8, 0x0

    .line 46
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-lez v6, :cond_1

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v9, 0x0

    .line 55
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-lez v6, :cond_2

    .line 72
    .line 73
    const/4 v13, 0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    const/4 v13, 0x0

    .line 76
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v17

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v18

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 108
    .line 109
    .line 110
    move-result v20

    .line 111
    move-object v6, v15

    .line 112
    move/from16 v7, v19

    .line 113
    .line 114
    move-object v3, v15

    .line 115
    move-object/from16 v15, v16

    .line 116
    .line 117
    move-object/from16 v16, v17

    .line 118
    .line 119
    move-object/from16 v17, v18

    .line 120
    .line 121
    move/from16 v18, v20

    .line 122
    .line 123
    invoke-direct/range {v6 .. v18}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v5, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, v0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 130
    .line 131
    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    const/4 v1, 0x0

    .line 137
    const/16 v19, 0x0

    .line 138
    .line 139
    :goto_3
    if-nez v1, :cond_7

    .line 140
    .line 141
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 142
    .line 143
    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 144
    .line 145
    new-instance v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;

    .line 146
    .line 147
    const/4 v6, 0x1

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-lez v5, :cond_4

    .line 153
    .line 154
    const/4 v7, 0x1

    .line 155
    goto :goto_4

    .line 156
    :cond_4
    const/4 v7, 0x0

    .line 157
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-lez v5, :cond_5

    .line 162
    .line 163
    const/4 v8, 0x1

    .line 164
    goto :goto_5

    .line 165
    :cond_5
    const/4 v8, 0x0

    .line 166
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-lez v5, :cond_6

    .line 183
    .line 184
    const/4 v12, 0x1

    .line 185
    goto :goto_6

    .line 186
    :cond_6
    const/4 v12, 0x0

    .line 187
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v17

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 219
    .line 220
    .line 221
    move-result v18

    .line 222
    move-object v5, v15

    .line 223
    move-object v4, v15

    .line 224
    move-object/from16 v15, v16

    .line 225
    .line 226
    move-object/from16 v16, v17

    .line 227
    .line 228
    move/from16 v17, v18

    .line 229
    .line 230
    invoke-direct/range {v5 .. v17}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iget-object v3, v0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 237
    .line 238
    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_f

    .line 242
    .line 243
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-eqz v1, :cond_9

    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_8

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_8
    const/4 v13, 0x0

    .line 265
    goto :goto_8

    .line 266
    :cond_9
    :goto_7
    const/4 v13, 0x1

    .line 267
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-nez v1, :cond_12

    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_12

    .line 290
    .line 291
    new-instance v8, Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    const-string v3, "#00FFFFFF"

    .line 301
    .line 302
    if-lez v1, :cond_a

    .line 303
    .line 304
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 305
    .line 306
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v4, "\u7cbe"

    .line 310
    .line 311
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v4, "#FF8378FF"

    .line 318
    .line 319
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const/4 v4, 0x0

    .line 326
    invoke-interface {v8, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-lez v1, :cond_b

    .line 334
    .line 335
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 336
    .line 337
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 338
    .line 339
    .line 340
    const-string v4, "\u9876"

    .line 341
    .line 342
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v3, "#FFFF6464"

    .line 349
    .line 350
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const/4 v15, 0x0

    .line 357
    invoke-interface {v8, v15, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_b
    const/4 v15, 0x0

    .line 362
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    if-eqz v1, :cond_c

    .line 367
    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    .line 374
    .line 375
    :cond_c
    iget-object v3, v0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 376
    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-lez v1, :cond_d

    .line 386
    .line 387
    const/4 v6, 0x1

    .line 388
    goto :goto_a

    .line 389
    :cond_d
    const/4 v6, 0x0

    .line 390
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    move v5, v13

    .line 410
    invoke-static/range {v3 .. v8}, Lcom/join/mgps/Util/r0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 411
    .line 412
    .line 413
    move-result-object v14

    .line 414
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;

    .line 415
    .line 416
    const/4 v3, 0x1

    .line 417
    xor-int/lit8 v4, v19, 0x1

    .line 418
    .line 419
    if-eqz v13, :cond_e

    .line 420
    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-lez v3, :cond_e

    .line 426
    .line 427
    const/4 v5, 0x1

    .line 428
    goto :goto_b

    .line 429
    :cond_e
    const/4 v5, 0x0

    .line 430
    :goto_b
    if-eqz v13, :cond_f

    .line 431
    .line 432
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-lez v3, :cond_f

    .line 437
    .line 438
    const/4 v6, 0x1

    .line 439
    goto :goto_c

    .line 440
    :cond_f
    const/4 v6, 0x0

    .line 441
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-eqz v13, :cond_10

    .line 454
    .line 455
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-lez v3, :cond_10

    .line 460
    .line 461
    const/4 v10, 0x1

    .line 462
    goto :goto_d

    .line 463
    :cond_10
    const/4 v10, 0x0

    .line 464
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v11

    .line 483
    if-eqz v13, :cond_11

    .line 484
    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    goto :goto_e

    .line 490
    :cond_11
    const/4 v3, 0x0

    .line 491
    :goto_e
    move-object v12, v3

    .line 492
    move-object v3, v1

    .line 493
    invoke-direct/range {v3 .. v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 494
    .line 495
    .line 496
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 497
    .line 498
    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 499
    .line 500
    invoke-direct {v3, v4, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    iget-object v4, v0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 504
    .line 505
    invoke-virtual {v4, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 506
    .line 507
    .line 508
    iget-object v3, v0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 509
    .line 510
    if-eqz v3, :cond_13

    .line 511
    .line 512
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_13

    .line 517
    .line 518
    iget-object v3, v0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 519
    .line 520
    invoke-virtual {v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->y()Lcom/join/android/app/component/optimizetext/b;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    iget-object v4, v0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 525
    .line 526
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    const v6, 0x7f070ed5

    .line 531
    .line 532
    .line 533
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    int-to-float v5, v5

    .line 538
    invoke-static {v4, v5}, Lcom/join/mgps/Util/i0;->c(Landroid/content/Context;F)I

    .line 539
    .line 540
    .line 541
    move-result v4

    .line 542
    invoke-virtual {v3, v4}, Lcom/join/android/app/component/optimizetext/b;->j(I)Lcom/join/android/app/component/optimizetext/b;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-virtual {v3, v1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 547
    .line 548
    .line 549
    goto :goto_10

    .line 550
    :cond_12
    :goto_f
    const/4 v15, 0x0

    .line 551
    :cond_13
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    if-eqz v1, :cond_14

    .line 556
    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-nez v1, :cond_14

    .line 570
    .line 571
    const/4 v4, 0x1

    .line 572
    goto :goto_11

    .line 573
    :cond_14
    const/4 v4, 0x0

    .line 574
    :goto_11
    if-nez v4, :cond_1b

    .line 575
    .line 576
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSmall_thumb_pic_list()Ljava/util/List;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    new-instance v3, Ljava/util/ArrayList;

    .line 581
    .line 582
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .line 584
    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    move-object v6, v2

    .line 590
    move-object v7, v6

    .line 591
    :goto_12
    if-eqz v1, :cond_17

    .line 592
    .line 593
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 594
    .line 595
    .line 596
    move-result v8

    .line 597
    if-ge v15, v8, :cond_17

    .line 598
    .line 599
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v8

    .line 603
    check-cast v8, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 604
    .line 605
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    const-string v10, "pic"

    .line 610
    .line 611
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v9

    .line 615
    if-eqz v9, :cond_15

    .line 616
    .line 617
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v8

    .line 621
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    goto :goto_13

    .line 625
    :cond_15
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v9

    .line 629
    const-string v10, "video"

    .line 630
    .line 631
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v9

    .line 635
    if-eqz v9, :cond_16

    .line 636
    .line 637
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v9

    .line 641
    if-eqz v9, :cond_16

    .line 642
    .line 643
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v6

    .line 647
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v7

    .line 651
    :cond_16
    :goto_13
    add-int/lit8 v15, v15, 0x1

    .line 652
    .line 653
    goto :goto_12

    .line 654
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v8

    .line 658
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 659
    .line 660
    .line 661
    move-result v8

    .line 662
    if-eqz v8, :cond_18

    .line 663
    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v8

    .line 668
    goto :goto_14

    .line 669
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v8

    .line 673
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 674
    .line 675
    .line 676
    move-result v8

    .line 677
    if-eqz v8, :cond_19

    .line 678
    .line 679
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    goto :goto_14

    .line 684
    :cond_19
    move-object v8, v2

    .line 685
    :goto_14
    if-eqz v5, :cond_1a

    .line 686
    .line 687
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 688
    .line 689
    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 690
    .line 691
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;

    .line 692
    .line 693
    invoke-direct {v5, v6, v7, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-direct {v1, v3, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    iget-object v3, v0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 700
    .line 701
    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 702
    .line 703
    .line 704
    goto :goto_15

    .line 705
    :cond_1a
    if-eqz v1, :cond_1b

    .line 706
    .line 707
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 708
    .line 709
    .line 710
    move-result v5

    .line 711
    if-eqz v5, :cond_1b

    .line 712
    .line 713
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 714
    .line 715
    sget-object v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 716
    .line 717
    new-instance v7, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;

    .line 718
    .line 719
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 720
    .line 721
    .line 722
    move-result v8

    .line 723
    invoke-direct {v7, v1, v3, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 724
    .line 725
    .line 726
    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    iget-object v1, v0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 730
    .line 731
    invoke-virtual {v1, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 732
    .line 733
    .line 734
    :cond_1b
    :goto_15
    if-eqz v4, :cond_1c

    .line 735
    .line 736
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/s1;->j0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 741
    .line 742
    .line 743
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 744
    .line 745
    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 746
    .line 747
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;

    .line 748
    .line 749
    new-instance v5, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .line 753
    .line 754
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 755
    .line 756
    .line 757
    move-result v6

    .line 758
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v6

    .line 776
    const/4 v7, 0x1

    .line 777
    invoke-direct {v4, v7, v2, v5, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    iget-object v2, v0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 784
    .line 785
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 786
    .line 787
    .line 788
    :cond_1c
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 789
    .line 790
    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 791
    .line 792
    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;

    .line 793
    .line 794
    const/4 v4, 0x1

    .line 795
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v5

    .line 799
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getLast_comment_time()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v7

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 808
    .line 809
    .line 810
    move-result v8

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 812
    .line 813
    .line 814
    move-result v9

    .line 815
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 816
    .line 817
    .line 818
    move-result v10

    .line 819
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    .line 820
    .line 821
    .line 822
    move-result v11

    .line 823
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 824
    .line 825
    .line 826
    move-result v12

    .line 827
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 828
    .line 829
    .line 830
    move-result v13

    .line 831
    move-object v3, v14

    .line 832
    invoke-direct/range {v3 .. v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    .line 833
    .line 834
    .line 835
    invoke-direct {v1, v2, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 836
    .line 837
    .line 838
    iget-object v2, v0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 839
    .line 840
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 841
    .line 842
    .line 843
    return-void
.end method

.method private p0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/s1;->o0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
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
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->z:Ljava/util/List;

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
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/s1;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/s1;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->z:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->Y4(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->z:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/s1;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->z:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/s1;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public C(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    long-to-int p3, p2

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public S()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method U(I)V
    .locals 4
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
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

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
    if-eq p1, v1, :cond_8

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_7

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_6

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-eq p1, v1, :cond_5

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    if-eq p1, v1, :cond_4

    .line 22
    .line 23
    const/16 v0, 0xa

    .line 24
    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->d:Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroupClassify;->getGname()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p1, ""

    .line 39
    .line 40
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    const-string p1, "\u5e16\u5b50"

    .line 47
    .line 48
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "\u6ca1\u6709\u66f4\u591a"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "\u5e16\u54e6~"

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 76
    .line 77
    new-instance v1, Lcom/join/mgps/fragment/s1$a;

    .line 78
    .line 79
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/s1$a;-><init>(Lcom/join/mgps/fragment/s1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 97
    .line 98
    const/16 v0, 0x8

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 109
    .line 110
    const v0, 0x7f080edb

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 121
    .line 122
    new-instance v0, Lcom/join/mgps/fragment/s1$k;

    .line 123
    .line 124
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/s1$k;-><init>(Lcom/join/mgps/fragment/s1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    const-string p1, "\u52a0\u8f7d\u5931\u8d25~"

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 142
    .line 143
    new-instance v0, Lcom/join/mgps/fragment/s1$b;

    .line 144
    .line 145
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/s1$b;-><init>(Lcom/join/mgps/fragment/s1;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_7
    if-eqz v0, :cond_9

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_8
    if-eqz v0, :cond_9

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 180
    .line 181
    .line 182
    :cond_9
    :goto_1
    return-void
.end method

.method W(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
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
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 10
    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    iget v1, p0, Lcom/join/mgps/fragment/s1;->A:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v0, p1, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->v:Lcom/join/mgps/rpc/e;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->I0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 80
    .line 81
    iget-boolean v0, p0, Lcom/join/mgps/fragment/s1;->B:Z

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/s1;->s0(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception p1

    .line 108
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_1
    iput v1, p0, Lcom/join/mgps/fragment/s1;->A:I

    .line 115
    .line 116
    iput-boolean v1, p0, Lcom/join/mgps/fragment/s1;->B:Z

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :goto_2
    iput v1, p0, Lcom/join/mgps/fragment/s1;->A:I

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/join/mgps/fragment/s1;->B:Z

    .line 122
    .line 123
    throw p1

    .line 124
    :cond_5
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_3
    return-void
.end method

.method Y(I)V
    .locals 12
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
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, -0x1

    .line 12
    :try_start_0
    iget v3, p0, Lcom/join/mgps/fragment/s1;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-ne v3, v2, :cond_1

    .line 15
    .line 16
    if-eq v3, v2, :cond_0

    .line 17
    .line 18
    iput v1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-ne v3, p1, :cond_3

    .line 25
    .line 26
    if-eq v3, v2, :cond_2

    .line 27
    .line 28
    iput v1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 35
    .line 36
    iget-object v3, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    iget-object v3, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    iget-object v3, p0, Lcom/join/mgps/fragment/s1;->d:Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecommenGroupClassify;->getGid()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iget-object v4, p0, Lcom/join/mgps/fragment/s1;->q:Lcom/join/mgps/rpc/i;

    .line 63
    .line 64
    iget v5, p0, Lcom/join/mgps/fragment/s1;->k:I

    .line 65
    .line 66
    sget v8, Lcom/join/mgps/activity/ForumActivity;->orderBy:I

    .line 67
    .line 68
    sget v9, Lcom/join/mgps/Util/r0;->d:I

    .line 69
    .line 70
    move v7, p1

    .line 71
    invoke-interface/range {v4 .. v11}, Lcom/join/mgps/rpc/i;->e0(IIIIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_9

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_9

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-nez v4, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s1;->U(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    iget p1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 93
    .line 94
    if-eq p1, v2, :cond_4

    .line 95
    .line 96
    iput v1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 97
    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_7

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_6

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {p0, p1, v3}, Lcom/join/mgps/fragment/s1;->r0(ILcom/join/mgps/dto/ForumData$HomepageRecommendLabel;)V

    .line 126
    .line 127
    .line 128
    iput p1, p0, Lcom/join/mgps/fragment/s1;->r:I

    .line 129
    .line 130
    const/4 v3, 0x2

    .line 131
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/s1;->U(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    :goto_0
    iput v2, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 136
    .line 137
    const/16 v3, 0xa

    .line 138
    .line 139
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/s1;->U(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .line 141
    .line 142
    iget p1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 143
    .line 144
    if-eq p1, v2, :cond_8

    .line 145
    .line 146
    iput v1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 147
    .line 148
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_9
    :goto_1
    iget p1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 153
    .line 154
    if-eq p1, v2, :cond_b

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    goto :goto_3

    .line 159
    :catch_0
    move-exception v3

    .line 160
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 164
    .line 165
    .line 166
    const/4 v3, 0x1

    .line 167
    if-ne p1, v3, :cond_a

    .line 168
    .line 169
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 170
    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 174
    .line 175
    .line 176
    :cond_a
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s1;->U(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .line 178
    .line 179
    iget p1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 180
    .line 181
    if-eq p1, v2, :cond_b

    .line 182
    .line 183
    :goto_2
    iput v1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 184
    .line 185
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :goto_3
    iget v0, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 190
    .line 191
    if-eq v0, v2, :cond_c

    .line 192
    .line 193
    iput v1, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 194
    .line 195
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :cond_d
    const p1, 0x7f12031e

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const/16 p1, 0x9

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/s1;->U(I)V

    .line 212
    .line 213
    .line 214
    :goto_4
    return-void
.end method

.method public a0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->v:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->q:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/fragment/s1;->X()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->a0()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/fragment/s1;->b0()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/join/mgps/fragment/s1;->s:I

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/fragment/s1;->r:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->loading()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method c0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f12031e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x9

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s1;->U(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->t0()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "from"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p2, v1, :cond_9

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p2, v1, :cond_8

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p2, v1, :cond_6

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-eq p2, v1, :cond_5

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    if-eq p2, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    .line 27
    const/16 p1, 0xb

    .line 28
    .line 29
    if-eq p2, p1, :cond_7

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_b

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_b

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_b

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 115
    .line 116
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_b

    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 129
    .line 130
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_a

    .line 149
    .line 150
    iget-object p2, p0, Lcom/join/mgps/fragment/s1;->x:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_b

    .line 162
    .line 163
    iget-object p2, p0, Lcom/join/mgps/fragment/s1;->y:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_0
    return-void
.end method

.method d0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method f0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/s1;->n0()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/fragment/s1;->p0()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->d0()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "event"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 64
    .line 65
    .line 66
    or-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->f0()V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method h0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->j:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public i(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method i0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curPid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/join/mgps/Util/r0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, ""

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->q:Lcom/join/mgps/rpc/i;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->R(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v3, 0x2c2

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/s1;->l0(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->q0()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1}, Lcom/join/mgps/Util/r0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method j0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameInfo"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->z:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->w:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method l0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v2, p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    xor-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->f0()V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method loading()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s1;->Y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onBackPressedMy()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/join/mgps/fragment/s1;->o:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lcom/join/mgps/fragment/s1;->c:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->F()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 3
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
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/s1;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "zip DownloadStatus ="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :pswitch_0
    goto :goto_0

    .line 37
    :pswitch_1
    const/16 p1, 0x9

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    const/16 p1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_3
    const/4 p1, 0x7

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_4
    const/4 p1, 0x4

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_5
    const/4 p1, 0x3

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_6
    const/4 p1, 0x6

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_7
    const/4 p1, 0x5

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_8
    const/4 p1, 0x2

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_9
    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/s1;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s1;->C:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/join/mgps/activity/ForumActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast v0, Lcom/join/mgps/activity/ForumActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumActivity;->getCurrentItem()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/join/mgps/fragment/s1;->c:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s1;->C:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->d0()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s1;->C:Z

    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->m:Lcom/join/mgps/customview/ForumLoadingView;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/s1;->U(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/fragment/s1;->C:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
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
    iget-boolean v0, p0, Lcom/join/mgps/fragment/s1;->C:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->P()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->c0()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->p:Lcom/join/android/app/component/video/c;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method q0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method r0(ILcom/join/mgps/dto/ForumData$HomepageRecommendLabel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "page",
            "data"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getRecommend_tags()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 30
    .line 31
    :cond_1
    const/4 v1, 0x1

    .line 32
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-lez p1, :cond_2

    .line 51
    .line 52
    new-instance p1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/join/mgps/dto/RecommendLabelTag;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v1, -0x1

    .line 58
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RecommendLabelTag;->setTag_id(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const v2, 0x7f1202bd

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RecommendLabelTag;->setTag_name(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->g:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->f0()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->n:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/join/mgps/fragment/s1$i;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s1$i;-><init>(Lcom/join/mgps/fragment/s1;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->i:Lcom/join/mgps/customview/j;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method s0(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detialResultBean"
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
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v1, v3, :cond_2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/join/mgps/fragment/s1;->h:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 73
    .line 74
    .line 75
    or-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s1;->f0()V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-lez v1, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const/4 v1, 0x5

    .line 126
    if-ne p1, v1, :cond_6

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_1
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
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

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

.method t0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/fragment/s1$h;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s1$h;-><init>(Lcom/join/mgps/fragment/s1;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x5dc

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method u0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/s1;->R(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s1;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    return v0
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
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s1;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s1;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/s1;->k0()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s1;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/s1;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x4

    .line 28
    if-eq p2, p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/fragment/s1;->k0()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
