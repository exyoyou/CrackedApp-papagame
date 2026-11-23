.class public Lcom/join/mgps/fragment/y3;
.super Lcom/join/mgps/fragment/v1;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02af
.end annotation


# static fields
.field private static final F:I = 0xa


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field B:I

.field C:Z

.field D:Z

.field E:Lcom/join/mgps/customview/t;

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Lcom/join/mgps/rpc/i;

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/app/Activity;

.field private n:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field o:Z

.field public p:I

.field public q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/join/mgps/customview/j;

.field t:Ljava/lang/String;

.field u:Lcom/join/android/app/component/video/c;

.field v:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private w:Lcom/join/mgps/rpc/e;

.field private x:Ljava/util/Map;
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

.field z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/v1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "hot"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->o:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

    .line 17
    .line 18
    const-string v1, "LabelFragment"

    .line 19
    .line 20
    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->t:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

    .line 28
    .line 29
    new-instance v1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

    .line 35
    .line 36
    new-instance v1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/join/mgps/fragment/y3;->A:Ljava/util/List;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/join/mgps/fragment/y3;->B:I

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/join/mgps/fragment/y3;->C:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->D:Z

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->E:Lcom/join/mgps/customview/t;

    .line 59
    .line 60
    return-void
.end method

.method static synthetic O(Lcom/join/mgps/fragment/y3;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private P(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
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

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->E:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->E:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private V()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->o0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->W()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->n0()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private e0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->A:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->A:Ljava/util/List;

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
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/fragment/y3;->a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->P(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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

.method private k0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;II)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "posts",
            "page",
            "index"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "newSpan"

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    iget-object v3, v1, Lcom/join/mgps/fragment/y3;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v10, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v3, v1, Lcom/join/mgps/fragment/y3;->g:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ne v3, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    move/from16 v24, v3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v24, 0x0

    .line 40
    .line 41
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-string v8, ""

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    if-nez v3, :cond_6

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_6

    .line 67
    .line 68
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 69
    .line 70
    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT_LABEL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 71
    .line 72
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;

    .line 73
    .line 74
    if-gt v0, v7, :cond_2

    .line 75
    .line 76
    if-ne v0, v7, :cond_1

    .line 77
    .line 78
    if-lez p3, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v12, 0x0

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    :goto_1
    const/4 v12, 0x1

    .line 84
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-lez v6, :cond_3

    .line 89
    .line 90
    const/4 v13, 0x1

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    const/4 v13, 0x0

    .line 93
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-lez v6, :cond_4

    .line 98
    .line 99
    const/4 v14, 0x1

    .line 100
    goto :goto_4

    .line 101
    :cond_4
    const/4 v14, 0x0

    .line 102
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 107
    .line 108
    .line 109
    move-result v16

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-lez v6, :cond_5

    .line 115
    .line 116
    const/16 v18, 0x1

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_5
    const/16 v18, 0x0

    .line 120
    .line 121
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v19

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v20

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v21

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v22

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 153
    .line 154
    .line 155
    move-result v23

    .line 156
    move-object v11, v5

    .line 157
    move/from16 v17, v24

    .line 158
    .line 159
    invoke-direct/range {v11 .. v23}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object v4, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 166
    .line 167
    invoke-virtual {v4, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 168
    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    const/4 v11, 0x1

    .line 172
    goto :goto_6

    .line 173
    :cond_6
    const/4 v3, 0x0

    .line 174
    const/4 v11, 0x0

    .line 175
    :goto_6
    if-nez v3, :cond_c

    .line 176
    .line 177
    if-gt v0, v7, :cond_8

    .line 178
    .line 179
    if-ne v0, v7, :cond_7

    .line 180
    .line 181
    if-lez p3, :cond_7

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_7
    const/4 v12, 0x0

    .line 185
    goto :goto_8

    .line 186
    :cond_8
    :goto_7
    const/4 v12, 0x1

    .line 187
    :goto_8
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 188
    .line 189
    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT_LABEL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 190
    .line 191
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;

    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-lez v4, :cond_9

    .line 198
    .line 199
    const/4 v13, 0x1

    .line 200
    goto :goto_9

    .line 201
    :cond_9
    const/4 v13, 0x0

    .line 202
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-lez v4, :cond_a

    .line 207
    .line 208
    const/4 v14, 0x1

    .line 209
    goto :goto_a

    .line 210
    :cond_a
    const/4 v14, 0x0

    .line 211
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 216
    .line 217
    .line 218
    move-result v16

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-lez v4, :cond_b

    .line 224
    .line 225
    const/16 v18, 0x1

    .line 226
    .line 227
    goto :goto_b

    .line 228
    :cond_b
    const/16 v18, 0x0

    .line 229
    .line 230
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v19

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v20

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v21

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v22

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    .line 262
    .line 263
    .line 264
    move-result v23

    .line 265
    move-object v11, v3

    .line 266
    move/from16 v17, v24

    .line 267
    .line 268
    invoke-direct/range {v11 .. v23}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v2, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 275
    .line 276
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_17

    .line 280
    .line 281
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isUi_expand()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    const/4 v12, 0x0

    .line 286
    if-eqz v0, :cond_15

    .line 287
    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_detail()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_15

    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_detail()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-nez v0, :cond_15

    .line 311
    .line 312
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_d

    .line 321
    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    goto :goto_c

    .line 327
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_e

    .line 336
    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    const/16 v4, 0xa

    .line 350
    .line 351
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    goto :goto_c

    .line 360
    :cond_e
    move-object v0, v8

    .line 361
    :goto_c
    new-instance v3, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .line 365
    .line 366
    new-instance v4, Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_detail()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-static {v5}, Lcom/join/mgps/Util/HtmlDocUtil;->d(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_13

    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPost_detail()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-static {v5}, Lcom/join/mgps/Util/HtmlDocUtil;->c(Ljava/lang/String;)Ljava/util/List;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    const/4 v6, 0x0

    .line 390
    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    if-ge v6, v9, :cond_14

    .line 395
    .line 396
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    check-cast v9, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 401
    .line 402
    sget-object v11, Lcom/join/mgps/fragment/y3$f;->a:[I

    .line 403
    .line 404
    iget-object v13, v9, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 405
    .line 406
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 407
    .line 408
    .line 409
    move-result v13

    .line 410
    aget v11, v11, v13

    .line 411
    .line 412
    if-eq v11, v7, :cond_12

    .line 413
    .line 414
    const/4 v13, 0x2

    .line 415
    if-eq v11, v13, :cond_11

    .line 416
    .line 417
    const/4 v13, 0x3

    .line 418
    if-eq v11, v13, :cond_10

    .line 419
    .line 420
    const/4 v13, 0x4

    .line 421
    if-eq v11, v13, :cond_f

    .line 422
    .line 423
    move-object v11, v12

    .line 424
    goto/16 :goto_e

    .line 425
    .line 426
    :cond_f
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    check-cast v9, Lcom/join/mgps/Util/HtmlDocUtil$e;

    .line 431
    .line 432
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$e;->d()Landroid/text/SpannableStringBuilder;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v9

    .line 440
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v9

    .line 444
    const-string v11, "span"

    .line 445
    .line 446
    invoke-virtual {v9, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    new-instance v11, Lcom/join/mgps/customview/text/a;

    .line 451
    .line 452
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 453
    .line 454
    .line 455
    move-result-object v13

    .line 456
    invoke-direct {v11, v2, v13}, Lcom/join/mgps/customview/text/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 457
    .line 458
    .line 459
    invoke-static {v9, v12, v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    new-instance v11, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 464
    .line 465
    sget-object v13, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_RICH_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 466
    .line 467
    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$t;

    .line 468
    .line 469
    invoke-direct {v14, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$t;-><init>(Landroid/text/Spanned;)V

    .line 470
    .line 471
    .line 472
    invoke-direct {v11, v13, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    goto :goto_e

    .line 476
    :cond_10
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    check-cast v9, Lcom/join/mgps/Util/HtmlDocUtil$d;

    .line 481
    .line 482
    new-instance v11, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 483
    .line 484
    sget-object v13, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 485
    .line 486
    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$u;

    .line 487
    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v15

    .line 492
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$d;->d()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v12

    .line 496
    invoke-virtual {v1, v15, v12}, Lcom/join/mgps/fragment/y3;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v12

    .line 500
    iget-object v9, v9, Lcom/join/mgps/Util/HtmlDocUtil$d;->d:Ljava/lang/String;

    .line 501
    .line 502
    invoke-direct {v14, v12, v9, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-direct {v11, v13, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    goto :goto_e

    .line 509
    :cond_11
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    check-cast v9, Lcom/join/mgps/Util/HtmlDocUtil$b;

    .line 514
    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$b;->e()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v12

    .line 523
    invoke-virtual {v1, v11, v12}, Lcom/join/mgps/fragment/y3;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v11

    .line 527
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    new-instance v11, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 531
    .line 532
    sget-object v12, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_IMAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 533
    .line 534
    new-instance v13, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$r;

    .line 535
    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCdn_url()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v14

    .line 540
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$b;->d()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    invoke-virtual {v1, v14, v9}, Lcom/join/mgps/fragment/y3;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 549
    .line 550
    .line 551
    move-result v14

    .line 552
    sub-int/2addr v14, v7

    .line 553
    invoke-direct {v13, v9, v14, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$r;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 554
    .line 555
    .line 556
    invoke-direct {v11, v12, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    goto :goto_e

    .line 560
    :cond_12
    new-instance v11, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 561
    .line 562
    sget-object v12, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 563
    .line 564
    new-instance v13, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$s;

    .line 565
    .line 566
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v9

    .line 570
    check-cast v9, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 571
    .line 572
    invoke-virtual {v9}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    .line 573
    .line 574
    .line 575
    move-result-object v9

    .line 576
    invoke-direct {v13, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$s;-><init>(Landroid/text/SpannableStringBuilder;)V

    .line 577
    .line 578
    .line 579
    invoke-direct {v11, v12, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    :goto_e
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    add-int/lit8 v6, v6, 0x1

    .line 586
    .line 587
    const/4 v12, 0x0

    .line 588
    goto/16 :goto_d

    .line 589
    .line 590
    :cond_13
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 591
    .line 592
    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 593
    .line 594
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$s;

    .line 595
    .line 596
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 597
    .line 598
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    invoke-direct {v3, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$s;-><init>(Landroid/text/SpannableStringBuilder;)V

    .line 610
    .line 611
    .line 612
    invoke-direct {v0, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    :cond_14
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$e0;

    .line 619
    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    invoke-direct {v0, v2, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$e0;-><init>(ILjava/util/List;)V

    .line 625
    .line 626
    .line 627
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 628
    .line 629
    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->RICH_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 630
    .line 631
    invoke-direct {v2, v3, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 632
    .line 633
    .line 634
    iget-object v0, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 635
    .line 636
    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .line 638
    .line 639
    goto :goto_f

    .line 640
    :catch_0
    move-exception v0

    .line 641
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 642
    .line 643
    .line 644
    :goto_f
    move-object v2, v8

    .line 645
    const/4 v4, 0x1

    .line 646
    goto/16 :goto_19

    .line 647
    .line 648
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    if-nez v0, :cond_20

    .line 657
    .line 658
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-nez v0, :cond_20

    .line 671
    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    if-eqz v0, :cond_17

    .line 677
    .line 678
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-eqz v0, :cond_16

    .line 691
    .line 692
    goto :goto_10

    .line 693
    :cond_16
    const/16 v21, 0x0

    .line 694
    .line 695
    goto :goto_11

    .line 696
    :cond_17
    :goto_10
    const/16 v21, 0x1

    .line 697
    .line 698
    :goto_11
    new-instance v0, Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .line 702
    .line 703
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    const-string v3, "#00FFFFFF"

    .line 708
    .line 709
    const-string v4, "#FFFF6464"

    .line 710
    .line 711
    if-lez v2, :cond_18

    .line 712
    .line 713
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 714
    .line 715
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 716
    .line 717
    .line 718
    const-string v5, "\u7cbe"

    .line 719
    .line 720
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    invoke-interface {v0, v10, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 733
    .line 734
    .line 735
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-lez v2, :cond_19

    .line 740
    .line 741
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 742
    .line 743
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 744
    .line 745
    .line 746
    const-string v5, "\u9876"

    .line 747
    .line 748
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-interface {v0, v10, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 761
    .line 762
    .line 763
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    if-eqz v2, :cond_1a

    .line 768
    .line 769
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 774
    .line 775
    .line 776
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 781
    .line 782
    .line 783
    move-result v2

    .line 784
    if-lez v2, :cond_1b

    .line 785
    .line 786
    const/4 v6, 0x1

    .line 787
    goto :goto_12

    .line 788
    :cond_1b
    const/4 v6, 0x0

    .line 789
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .line 793
    .line 794
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    move-object v3, v9

    .line 809
    move/from16 v5, v21

    .line 810
    .line 811
    const/4 v15, 0x1

    .line 812
    move-object v7, v2

    .line 813
    move-object v2, v8

    .line 814
    move-object v8, v0

    .line 815
    invoke-static/range {v3 .. v8}, Lcom/join/mgps/Util/r0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 816
    .line 817
    .line 818
    move-result-object v22

    .line 819
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;

    .line 820
    .line 821
    xor-int/lit8 v12, v11, 0x1

    .line 822
    .line 823
    if-eqz v21, :cond_1c

    .line 824
    .line 825
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 826
    .line 827
    .line 828
    move-result v3

    .line 829
    if-lez v3, :cond_1c

    .line 830
    .line 831
    const/4 v13, 0x1

    .line 832
    goto :goto_13

    .line 833
    :cond_1c
    const/4 v13, 0x0

    .line 834
    :goto_13
    if-eqz v21, :cond_1d

    .line 835
    .line 836
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    if-lez v3, :cond_1d

    .line 841
    .line 842
    const/4 v14, 0x1

    .line 843
    goto :goto_14

    .line 844
    :cond_1d
    const/4 v14, 0x0

    .line 845
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v3

    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 850
    .line 851
    .line 852
    move-result v16

    .line 853
    if-eqz v21, :cond_1e

    .line 854
    .line 855
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 856
    .line 857
    .line 858
    move-result v4

    .line 859
    if-lez v4, :cond_1e

    .line 860
    .line 861
    const/16 v18, 0x1

    .line 862
    .line 863
    goto :goto_15

    .line 864
    :cond_1e
    const/16 v18, 0x0

    .line 865
    .line 866
    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 867
    .line 868
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .line 870
    .line 871
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 872
    .line 873
    .line 874
    move-result v5

    .line 875
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v19

    .line 885
    if-eqz v21, :cond_1f

    .line 886
    .line 887
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 888
    .line 889
    .line 890
    move-result-object v4

    .line 891
    move-object/from16 v20, v4

    .line 892
    .line 893
    goto :goto_16

    .line 894
    :cond_1f
    const/16 v20, 0x0

    .line 895
    .line 896
    :goto_16
    move-object v11, v0

    .line 897
    const/4 v4, 0x1

    .line 898
    move-object v15, v3

    .line 899
    move/from16 v17, v24

    .line 900
    .line 901
    invoke-direct/range {v11 .. v22}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 902
    .line 903
    .line 904
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 905
    .line 906
    sget-object v5, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 907
    .line 908
    invoke-direct {v3, v5, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 909
    .line 910
    .line 911
    iget-object v5, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 912
    .line 913
    invoke-virtual {v5, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 914
    .line 915
    .line 916
    iget-object v3, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 917
    .line 918
    invoke-virtual {v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->y()Lcom/join/android/app/component/optimizetext/b;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 923
    .line 924
    .line 925
    move-result-object v5

    .line 926
    const v6, 0x7f070ed5

    .line 927
    .line 928
    .line 929
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 930
    .line 931
    .line 932
    move-result v5

    .line 933
    int-to-float v5, v5

    .line 934
    invoke-static {v9, v5}, Lcom/join/mgps/Util/i0;->c(Landroid/content/Context;F)I

    .line 935
    .line 936
    .line 937
    move-result v5

    .line 938
    invoke-virtual {v3, v5}, Lcom/join/android/app/component/optimizetext/b;->j(I)Lcom/join/android/app/component/optimizetext/b;

    .line 939
    .line 940
    .line 941
    move-result-object v3

    .line 942
    invoke-virtual {v3, v0}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 943
    .line 944
    .line 945
    goto :goto_18

    .line 946
    :cond_20
    :goto_17
    move-object v2, v8

    .line 947
    const/4 v4, 0x1

    .line 948
    :goto_18
    const/4 v7, 0x0

    .line 949
    :goto_19
    if-nez v7, :cond_2a

    .line 950
    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    if-eqz v0, :cond_21

    .line 956
    .line 957
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 966
    .line 967
    .line 968
    move-result v0

    .line 969
    if-nez v0, :cond_21

    .line 970
    .line 971
    const/4 v7, 0x1

    .line 972
    goto :goto_1a

    .line 973
    :cond_21
    const/4 v7, 0x0

    .line 974
    :goto_1a
    if-nez v7, :cond_28

    .line 975
    .line 976
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSmall_thumb_pic_list()Ljava/util/List;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    new-instance v3, Ljava/util/ArrayList;

    .line 981
    .line 982
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .line 984
    .line 985
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    .line 986
    .line 987
    .line 988
    move-result v5

    .line 989
    move-object v6, v2

    .line 990
    move-object v8, v6

    .line 991
    :goto_1b
    if-eqz v0, :cond_24

    .line 992
    .line 993
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 994
    .line 995
    .line 996
    move-result v9

    .line 997
    if-ge v10, v9, :cond_24

    .line 998
    .line 999
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v9

    .line 1003
    check-cast v9, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 1004
    .line 1005
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v11

    .line 1009
    const-string v12, "pic"

    .line 1010
    .line 1011
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v11

    .line 1015
    if-eqz v11, :cond_22

    .line 1016
    .line 1017
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v9

    .line 1021
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    goto :goto_1c

    .line 1025
    :cond_22
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v11

    .line 1029
    const-string v12, "video"

    .line 1030
    .line 1031
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v11

    .line 1035
    if-eqz v11, :cond_23

    .line 1036
    .line 1037
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v11

    .line 1041
    if-eqz v11, :cond_23

    .line 1042
    .line 1043
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v6

    .line 1047
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v8

    .line 1051
    move-object/from16 v25, v8

    .line 1052
    .line 1053
    move-object v8, v6

    .line 1054
    move-object/from16 v6, v25

    .line 1055
    .line 1056
    :cond_23
    :goto_1c
    add-int/lit8 v10, v10, 0x1

    .line 1057
    .line 1058
    goto :goto_1b

    .line 1059
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v9

    .line 1063
    invoke-static {v9}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v9

    .line 1067
    if-eqz v9, :cond_25

    .line 1068
    .line 1069
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v9

    .line 1073
    goto :goto_1d

    .line 1074
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v9

    .line 1078
    invoke-static {v9}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v9

    .line 1082
    if-eqz v9, :cond_26

    .line 1083
    .line 1084
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v9

    .line 1088
    goto :goto_1d

    .line 1089
    :cond_26
    move-object v9, v2

    .line 1090
    :goto_1d
    if-eqz v5, :cond_27

    .line 1091
    .line 1092
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 1093
    .line 1094
    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 1095
    .line 1096
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;

    .line 1097
    .line 1098
    invoke-direct {v5, v8, v6, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-direct {v0, v3, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 1102
    .line 1103
    .line 1104
    iget-object v3, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 1105
    .line 1106
    invoke-virtual {v3, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_1e

    .line 1110
    :cond_27
    if-eqz v0, :cond_28

    .line 1111
    .line 1112
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1113
    .line 1114
    .line 1115
    move-result v5

    .line 1116
    if-eqz v5, :cond_28

    .line 1117
    .line 1118
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 1119
    .line 1120
    sget-object v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 1121
    .line 1122
    new-instance v8, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;

    .line 1123
    .line 1124
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 1125
    .line 1126
    .line 1127
    move-result v9

    .line 1128
    invoke-direct {v8, v0, v3, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 1129
    .line 1130
    .line 1131
    invoke-direct {v5, v6, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 1132
    .line 1133
    .line 1134
    iget-object v0, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 1135
    .line 1136
    invoke-virtual {v0, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 1137
    .line 1138
    .line 1139
    :cond_28
    :goto_1e
    if-eqz v7, :cond_2a

    .line 1140
    .line 1141
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/y3;->d0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 1146
    .line 1147
    .line 1148
    sget-object v0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 1149
    .line 1150
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v3

    .line 1154
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v3

    .line 1158
    if-nez v3, :cond_29

    .line 1159
    .line 1160
    sget-object v0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 1161
    .line 1162
    :cond_29
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 1163
    .line 1164
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;

    .line 1165
    .line 1166
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 1172
    .line 1173
    .line 1174
    move-result v7

    .line 1175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v2

    .line 1185
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v6

    .line 1189
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v7

    .line 1193
    invoke-direct {v5, v4, v2, v6, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-direct {v3, v0, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 1197
    .line 1198
    .line 1199
    iget-object v0, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 1200
    .line 1201
    invoke-virtual {v0, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 1202
    .line 1203
    .line 1204
    :cond_2a
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 1205
    .line 1206
    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 1207
    .line 1208
    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;

    .line 1209
    .line 1210
    const/4 v4, 0x1

    .line 1211
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v5

    .line 1215
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getLast_comment_time()Ljava/lang/String;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v6

    .line 1219
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v7

    .line 1223
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 1224
    .line 1225
    .line 1226
    move-result v8

    .line 1227
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 1228
    .line 1229
    .line 1230
    move-result v9

    .line 1231
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 1232
    .line 1233
    .line 1234
    move-result v10

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    .line 1236
    .line 1237
    .line 1238
    move-result v11

    .line 1239
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 1240
    .line 1241
    .line 1242
    move-result v12

    .line 1243
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 1244
    .line 1245
    .line 1246
    move-result v13

    .line 1247
    move-object v3, v14

    .line 1248
    invoke-direct/range {v3 .. v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    .line 1249
    .line 1250
    .line 1251
    invoke-direct {v0, v2, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 1252
    .line 1253
    .line 1254
    iget-object v2, v1, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 1255
    .line 1256
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 1257
    .line 1258
    .line 1259
    return-void
.end method

.method private l0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

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
    invoke-direct {p0, v1, p1, v0}, Lcom/join/mgps/fragment/y3;->k0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;II)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->A:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/y3;->a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/y3;->a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->A:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->Y4(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->A:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/y3;->a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->A:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/y3;->a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

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

.method public Q()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

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

.method S(Ljava/lang/String;)V
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
    iget v1, p0, Lcom/join/mgps/fragment/y3;->B:I

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->w:Lcom/join/mgps/rpc/e;

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
    iget-boolean v0, p0, Lcom/join/mgps/fragment/y3;->C:Z

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y3;->r0(Lcom/join/mgps/dto/DetailResultBean;)V

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
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/y3;->showToast(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/y3;->showToast(Ljava/lang/String;)V
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
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/y3;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_1
    iput v1, p0, Lcom/join/mgps/fragment/y3;->B:I

    .line 115
    .line 116
    iput-boolean v1, p0, Lcom/join/mgps/fragment/y3;->C:Z

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :goto_2
    iput v1, p0, Lcom/join/mgps/fragment/y3;->B:I

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/join/mgps/fragment/y3;->C:Z

    .line 122
    .line 123
    throw p1

    .line 124
    :cond_5
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/y3;->showToast(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_3
    return-void
.end method

.method U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cdnUrl",
            "imgUrl"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const-string v0, "http"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method W()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/y3;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_9

    .line 12
    .line 13
    :try_start_0
    iget v2, p0, Lcom/join/mgps/fragment/y3;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    const/4 v11, -0x1

    .line 16
    if-ne v2, v11, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->s0()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    if-ne v2, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->s0()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :try_start_1
    iput v0, p0, Lcom/join/mgps/fragment/y3;->q:I

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

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
    move-result-object v3

    .line 40
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->h:Lcom/join/mgps/rpc/i;

    .line 51
    .line 52
    iget v4, p0, Lcom/join/mgps/fragment/y3;->d:I

    .line 53
    .line 54
    const/16 v6, 0xa

    .line 55
    .line 56
    iget v7, p0, Lcom/join/mgps/fragment/y3;->f:I

    .line 57
    .line 58
    iget-object v8, p0, Lcom/join/mgps/fragment/y3;->c:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v10, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/lang/String;

    .line 61
    .line 62
    move v5, v0

    .line 63
    invoke-interface/range {v2 .. v10}, Lcom/join/mgps/rpc/i;->y(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 68
    .line 69
    if-eqz v3, :cond_7

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_7

    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    if-eqz v2, :cond_6

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/util/List;

    .line 100
    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    iput v0, p0, Lcom/join/mgps/fragment/y3;->p:I

    .line 111
    .line 112
    invoke-virtual {p0, v2, v0}, Lcom/join/mgps/fragment/y3;->u0(Ljava/util/List;I)V

    .line 113
    .line 114
    .line 115
    if-gt v0, v1, :cond_8

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->hideLoading()V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    :goto_0
    iput v11, p0, Lcom/join/mgps/fragment/y3;->q:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->s0()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    :goto_1
    if-gt v0, v1, :cond_8

    .line 128
    .line 129
    :try_start_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->n0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->s0()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    goto :goto_4

    .line 139
    :catch_0
    move-exception v2

    .line 140
    :try_start_3
    const-string v3, "Label"

    .line 141
    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v5, "getListData Exception:"

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v3, v2}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    if-gt v0, v1, :cond_8

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->n0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->s0()V

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->s0()V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :cond_9
    if-gt v0, v1, :cond_a

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->n0()V

    .line 182
    .line 183
    .line 184
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->q0()V

    .line 185
    .line 186
    .line 187
    :goto_5
    return-void
.end method

.method public X()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->w:Lcom/join/mgps/rpc/e;

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

.method public Y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/y3;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method Z()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method a0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y3;->t0(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->h:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

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
    iget-object v3, p0, Lcom/join/mgps/fragment/y3;->t:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v3, p0, Lcom/join/mgps/fragment/y3;->e:I

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->b1(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/fragment/y3$c;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/y3$c;-><init>(Lcom/join/mgps/fragment/y3;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f1(Lw6/f;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->t:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v2, p0, Lcom/join/mgps/fragment/y3;->e:I

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C0(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 87
    .line 88
    new-instance v1, Lcom/join/mgps/fragment/y3$d;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/y3$d;-><init>(Lcom/join/mgps/fragment/y3;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->I0(Lcom/join/mgps/adapter/ForumBaseAdapter$t0;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 104
    .line 105
    const/16 v1, 0xa

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/join/mgps/fragment/y3$e;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/y3$e;-><init>(Lcom/join/mgps/fragment/y3;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->s:Lcom/join/mgps/customview/j;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->i0()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->W()V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method b0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

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

.method c0(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->h:Lcom/join/mgps/rpc/i;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/y3;->h0(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->m0()V

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
    iget-object p2, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/y3;->y:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/y3;->z:Ljava/util/Map;

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

.method d0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->A:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->x:Ljava/util/Map;

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

.method public f0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->o0()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->s:Lcom/join/mgps/customview/j;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->q0()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public g0(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "order",
            "force"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/y3;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->i0()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->o0()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->s:Lcom/join/mgps/customview/j;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/join/mgps/customview/j;->onRefresh()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->q0()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method h0(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->notifyDataSetChanged()V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->v:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

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

.method i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/fragment/y3$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/y3$b;-><init>(Lcom/join/mgps/fragment/y3;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public j0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openPostsFilter"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/y3;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method m0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method n0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->v:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method declared-synchronized notifyDataSetChanged()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/y3;->p:I

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/y3;->l0(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method

.method o0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->v:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
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
    iput-object p1, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method

.method public onBackPressedMy()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/y3;->t:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/join/mgps/fragment/y3;->e:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "tag_id"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/join/mgps/fragment/y3;->d:I

    .line 15
    .line 16
    const-string v0, "type"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/join/mgps/fragment/y3;->f:I

    .line 23
    .line 24
    const-string v0, "position"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/join/mgps/fragment/y3;->e:I

    .line 31
    .line 32
    const-string v0, "fid"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/join/mgps/fragment/y3;->g:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

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
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/y3;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    const/16 p1, 0x8

    .line 44
    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_3
    const/4 p1, 0x7

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_4
    const/4 p1, 0x4

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_5
    const/4 p1, 0x3

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_6
    const/4 p1, 0x6

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_7
    const/4 p1, 0x5

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_8
    const/4 p1, 0x2

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_9
    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/y3;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->D:Z

    .line 13
    .line 14
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
    instance-of v1, v0, Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast v0, Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->getCurrentItem()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/join/mgps/fragment/y3;->e:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->D:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->k:Lcom/join/mgps/customview/XListView2;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->Z()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/join/mgps/fragment/y3;->D:Z

    .line 35
    .line 36
    :cond_1
    :goto_0
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
    iget-boolean v0, p0, Lcom/join/mgps/fragment/y3;->D:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

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
    iget-boolean v0, p0, Lcom/join/mgps/fragment/y3;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_2

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->u:Lcom/join/android/app/component/video/c;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method p0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->l:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->j:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->i:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->v:Landroid/widget/ImageView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method q0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f12031e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method r0(Lcom/join/mgps/dto/DetailResultBean;)V
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
    iget-object v3, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

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
    iget-object v3, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/y3;->t0(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-lez v1, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    const/4 v1, 0x5

    .line 132
    if-ne p1, v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_1
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/y3;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method s0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/fragment/y3$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/y3$a;-><init>(Lcom/join/mgps/fragment/y3;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x64

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

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

.method showToast(Ljava/lang/String;)V
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

.method t0(Ljava/util/List;)V
    .locals 0
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
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method u0(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "datas",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p2, v0, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->p0()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/y3;->i0()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    :cond_1
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ltz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->r:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ge v0, v1, :cond_2

    .line 60
    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 66
    .line 67
    invoke-direct {p0, v1, p2, v0}, Lcom/join/mgps/fragment/y3;->k0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;II)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/y3;->n:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 76
    .line 77
    .line 78
    :cond_3
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
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/y3;->e0()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/y3;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
    invoke-direct {p0}, Lcom/join/mgps/fragment/y3;->e0()V

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

.method v0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/y3;->P(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/y3;->m:Landroid/app/Activity;

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
