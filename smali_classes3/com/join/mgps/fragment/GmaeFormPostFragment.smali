.class public Lcom/join/mgps/fragment/GmaeFormPostFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/GmaeFormPostFragment$MediaCmd;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d06c8
.end annotation


# static fields
.field private static final V1:Ljava/lang/String;

.field static a2:I = 0x0

.field public static final b2:Ljava/lang/String; = "key_mediacmd"

.field public static final c2:Ljava/lang/String; = "key_mediacmd_params"

.field static d2:Lcom/join/android/app/component/video/MyVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field static e2:Z


# instance fields
.field A:Landroid/content/Context;

.field B:I

.field C:Lcom/join/android/app/component/video/c;

.field D:Lcom/join/mgps/rpc/e;

.field E:Landroid/app/Dialog;

.field F:Lcom/join/mgps/customview/e$d;

.field G:Lcom/join/mgps/customview/e;

.field H:Landroid/view/View;

.field I:I

.field J:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field K:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field L:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public L1:I

.field M:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field N:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field O:Lcom/join/android/app/component/video/MediaController;

.field P:I

.field Q:Ljava/lang/String;

.field R:Ljava/lang/String;

.field public R1:I

.field S:Z

.field T:I

.field U:I

.field V:I

.field W:Lcom/join/mgps/customview/t;

.field X:Landroid/view/GestureDetector;

.field Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field b1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private f1:I

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

.field private i1:I

.field j:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/rpc/i;

.field private l1:Lcom/join/mgps/rpc/e;

.field private m:Lcom/join/mgps/dialog/x0;

.field n:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

.field o:Landroid/os/Handler;

.field private p:I

.field p0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field p1:I

.field private q:I

.field q1:Z

.field private final r:I

.field public r1:Landroid/widget/AbsListView;

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field public v1:I

.field private final w:I

.field private final x:I

.field private y:I

.field z:Lcom/wufan/user/service/protobuf/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V1:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$k;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->n:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/fragment/GmaeFormPostFragment$o;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$o;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->o:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p:I

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 22
    .line 23
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->r:I

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->s:I

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t:I

    .line 32
    .line 33
    const/16 v1, 0x11

    .line 34
    .line 35
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->u:I

    .line 36
    .line 37
    const/16 v1, 0x12

    .line 38
    .line 39
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->v:I

    .line 40
    .line 41
    const/16 v1, 0x14

    .line 42
    .line 43
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->w:I

    .line 44
    .line 45
    const/16 v1, 0x18

    .line 46
    .line 47
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->x:I

    .line 48
    .line 49
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 50
    .line 51
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->B:I

    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$g;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$g;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->F:Lcom/join/mgps/customview/e$d;

    .line 59
    .line 60
    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:I

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S:Z

    .line 64
    .line 65
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->T:I

    .line 66
    .line 67
    iput v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->U:I

    .line 68
    .line 69
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V:I

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->W:Lcom/join/mgps/customview/t;

    .line 73
    .line 74
    new-instance v1, Landroid/view/GestureDetector;

    .line 75
    .line 76
    new-instance v2, Lcom/join/mgps/fragment/GmaeFormPostFragment$n;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$n;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->X:Landroid/view/GestureDetector;

    .line 85
    .line 86
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 92
    .line 93
    new-instance v1, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

    .line 99
    .line 100
    new-instance v1, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

    .line 106
    .line 107
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f1:I

    .line 108
    .line 109
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i1:I

    .line 110
    .line 111
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p1:I

    .line 112
    .line 113
    iput-boolean v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q1:Z

    .line 114
    .line 115
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->v1:I

    .line 116
    .line 117
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L1:I

    .line 118
    .line 119
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->R1:I

    .line 120
    .line 121
    return-void
.end method

.method private G0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

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
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->w0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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

.method static synthetic M(Lcom/join/mgps/fragment/GmaeFormPostFragment;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/GmaeFormPostFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/GmaeFormPostFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic P(Lcom/join/mgps/fragment/GmaeFormPostFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p:I

    .line 2
    .line 3
    return p0
.end method

.method private P0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 26
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
    const/4 v2, 0x0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v12, ""

    .line 13
    .line 14
    const/4 v13, 0x1

    .line 15
    const/4 v14, 0x0

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 33
    .line 34
    sget-object v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 35
    .line 36
    new-instance v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;

    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-lez v5, :cond_0

    .line 43
    .line 44
    const/16 v17, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v17, 0x0

    .line 48
    .line 49
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v18

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 54
    .line 55
    .line 56
    move-result v19

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 58
    .line 59
    .line 60
    move-result v20

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-lez v5, :cond_1

    .line 66
    .line 67
    const/16 v21, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/16 v21, 0x0

    .line 71
    .line 72
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v22

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v23

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v24

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v25

    .line 103
    const/16 v16, 0x0

    .line 104
    .line 105
    move-object v15, v4

    .line 106
    invoke-direct/range {v15 .. v25}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;-><init>(ZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/4 v1, 0x0

    .line 120
    :goto_2
    if-nez v1, :cond_5

    .line 121
    .line 122
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 123
    .line 124
    sget-object v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 125
    .line 126
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-lez v4, :cond_3

    .line 133
    .line 134
    const/16 v17, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    const/16 v17, 0x0

    .line 138
    .line 139
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v18

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 144
    .line 145
    .line 146
    move-result v19

    .line 147
    const/16 v20, 0x0

    .line 148
    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-lez v4, :cond_4

    .line 154
    .line 155
    const/16 v21, 0x1

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_4
    const/16 v21, 0x0

    .line 159
    .line 160
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v22

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v23

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v24

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v25

    .line 191
    const/16 v16, 0x0

    .line 192
    .line 193
    move-object v15, v3

    .line 194
    invoke-direct/range {v15 .. v25}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$f;-><init>(ZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iget-object v2, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto/16 :goto_b

    .line 206
    .line 207
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_7

    .line 212
    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_6

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_6
    const/4 v10, 0x0

    .line 229
    goto :goto_6

    .line 230
    :cond_7
    :goto_5
    const/4 v10, 0x1

    .line 231
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-nez v1, :cond_c

    .line 240
    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_c

    .line 254
    .line 255
    iget-object v3, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 256
    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-lez v1, :cond_8

    .line 266
    .line 267
    const/4 v6, 0x1

    .line 268
    goto :goto_7

    .line 269
    :cond_8
    const/4 v6, 0x0

    .line 270
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    move v5, v10

    .line 294
    invoke-static/range {v3 .. v8}, Lcom/join/mgps/Util/r0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    new-instance v15, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;

    .line 299
    .line 300
    if-eqz v10, :cond_9

    .line 301
    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-lez v1, :cond_9

    .line 307
    .line 308
    const/4 v3, 0x1

    .line 309
    goto :goto_8

    .line 310
    :cond_9
    const/4 v3, 0x0

    .line 311
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    const/4 v6, 0x0

    .line 320
    if-eqz v10, :cond_a

    .line 321
    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-lez v1, :cond_a

    .line 327
    .line 328
    const/4 v7, 0x1

    .line 329
    goto :goto_9

    .line 330
    :cond_a
    const/4 v7, 0x0

    .line 331
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    if-eqz v10, :cond_b

    .line 351
    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    goto :goto_a

    .line 357
    :cond_b
    const/4 v1, 0x0

    .line 358
    :goto_a
    move-object v9, v1

    .line 359
    move-object v1, v15

    .line 360
    invoke-direct/range {v1 .. v11}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$e;-><init>(ZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 361
    .line 362
    .line 363
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 364
    .line 365
    sget-object v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 366
    .line 367
    invoke-direct {v1, v2, v15}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    iget-object v2, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 371
    .line 372
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 376
    .line 377
    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j()Lcom/join/android/app/component/optimizetext/b;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v1, v15}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 382
    .line 383
    .line 384
    :cond_c
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    if-eqz v1, :cond_d

    .line 389
    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-nez v1, :cond_d

    .line 403
    .line 404
    const/4 v1, 0x1

    .line 405
    goto :goto_c

    .line 406
    :cond_d
    const/4 v1, 0x0

    .line 407
    :goto_c
    if-nez v1, :cond_14

    .line 408
    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    move-object v5, v12

    .line 423
    move-object v6, v5

    .line 424
    :goto_d
    if-eqz v2, :cond_10

    .line 425
    .line 426
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    if-ge v14, v7, :cond_10

    .line 431
    .line 432
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    check-cast v7, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 437
    .line 438
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    const-string v9, "pic"

    .line 443
    .line 444
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v8

    .line 448
    if-eqz v8, :cond_e

    .line 449
    .line 450
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    goto :goto_e

    .line 458
    :cond_e
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    const-string v9, "video"

    .line 463
    .line 464
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    if-eqz v8, :cond_f

    .line 469
    .line 470
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 471
    .line 472
    .line 473
    move-result v8

    .line 474
    if-eqz v8, :cond_f

    .line 475
    .line 476
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    :cond_f
    :goto_e
    add-int/lit8 v14, v14, 0x1

    .line 485
    .line 486
    goto :goto_d

    .line 487
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result v7

    .line 495
    if-eqz v7, :cond_11

    .line 496
    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    goto :goto_f

    .line 502
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    if-eqz v7, :cond_12

    .line 511
    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    goto :goto_f

    .line 517
    :cond_12
    move-object v7, v12

    .line 518
    :goto_f
    if-eqz v4, :cond_13

    .line 519
    .line 520
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 521
    .line 522
    sget-object v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 523
    .line 524
    new-instance v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;

    .line 525
    .line 526
    invoke-direct {v4, v5, v6, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    iget-object v3, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 533
    .line 534
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    goto :goto_10

    .line 538
    :cond_13
    if-eqz v2, :cond_14

    .line 539
    .line 540
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    if-eqz v4, :cond_14

    .line 545
    .line 546
    new-instance v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 547
    .line 548
    sget-object v5, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 549
    .line 550
    new-instance v6, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;

    .line 551
    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 553
    .line 554
    .line 555
    move-result v7

    .line 556
    invoke-direct {v6, v2, v3, v7}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$d;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 557
    .line 558
    .line 559
    invoke-direct {v4, v5, v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    iget-object v2, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 563
    .line 564
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    :cond_14
    :goto_10
    if-eqz v1, :cond_15

    .line 568
    .line 569
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->E0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 574
    .line 575
    .line 576
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 577
    .line 578
    sget-object v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 579
    .line 580
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;

    .line 581
    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 588
    .line 589
    .line 590
    move-result v5

    .line 591
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    invoke-direct {v3, v13, v4, v5}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$i;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 606
    .line 607
    .line 608
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    iget-object v2, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 612
    .line 613
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    :cond_15
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 617
    .line 618
    sget-object v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 619
    .line 620
    new-instance v14, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;

    .line 621
    .line 622
    const/4 v4, 0x1

    .line 623
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getLast_comment_time()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v6

    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v7

    .line 635
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 636
    .line 637
    .line 638
    move-result v8

    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 640
    .line 641
    .line 642
    move-result v9

    .line 643
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 644
    .line 645
    .line 646
    move-result v10

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    .line 648
    .line 649
    .line 650
    move-result v11

    .line 651
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 652
    .line 653
    .line 654
    move-result v12

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 656
    .line 657
    .line 658
    move-result v13

    .line 659
    move-object v3, v14

    .line 660
    invoke-direct/range {v3 .. v13}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    .line 661
    .line 662
    .line 663
    invoke-direct {v1, v2, v14}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    iget-object v2, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 667
    .line 668
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/GmaeFormPostFragment;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 2
    .line 3
    return-object p0
.end method

.method private Q0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 20
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
    const-string v2, ""

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 28
    .line 29
    sget-object v5, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 30
    .line 31
    new-instance v14, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-lez v6, :cond_0

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v7, 0x0

    .line 42
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-lez v6, :cond_1

    .line 59
    .line 60
    const/4 v11, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v11, 0x0

    .line 63
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    move-object v6, v14

    .line 87
    invoke-direct/range {v6 .. v13}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$m;-><init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v5, v14}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v5, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    const/4 v1, 0x0

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 122
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_9

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_9

    .line 145
    .line 146
    iget-object v5, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-lez v7, :cond_5

    .line 157
    .line 158
    const/4 v8, 0x1

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    const/4 v8, 0x0

    .line 161
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    move v7, v1

    .line 185
    invoke-static/range {v5 .. v10}, Lcom/join/mgps/Util/r0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 186
    .line 187
    .line 188
    move-result-object v19

    .line 189
    new-instance v5, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;

    .line 190
    .line 191
    if-eqz v1, :cond_6

    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-lez v6, :cond_6

    .line 198
    .line 199
    const/4 v12, 0x1

    .line 200
    goto :goto_5

    .line 201
    :cond_6
    const/4 v12, 0x0

    .line 202
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    if-eqz v1, :cond_7

    .line 215
    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-lez v6, :cond_7

    .line 221
    .line 222
    const/16 v16, 0x1

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_7
    const/16 v16, 0x0

    .line 226
    .line 227
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v17

    .line 246
    if-eqz v1, :cond_8

    .line 247
    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    goto :goto_7

    .line 253
    :cond_8
    const/4 v1, 0x0

    .line 254
    :goto_7
    move-object/from16 v18, v1

    .line 255
    .line 256
    move-object v11, v5

    .line 257
    invoke-direct/range {v11 .. v19}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$l;-><init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Landroid/text/SpannableStringBuilder;)V

    .line 258
    .line 259
    .line 260
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 261
    .line 262
    sget-object v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 263
    .line 264
    invoke-direct {v1, v4, v5}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    iget-object v4, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 268
    .line 269
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 273
    .line 274
    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->j()Lcom/join/android/app/component/optimizetext/b;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1, v5}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 279
    .line 280
    .line 281
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    move-object v6, v2

    .line 295
    move-object v7, v6

    .line 296
    :goto_8
    if-eqz v1, :cond_c

    .line 297
    .line 298
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-ge v3, v8, :cond_c

    .line 303
    .line 304
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    check-cast v8, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 309
    .line 310
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    const-string v10, "pic"

    .line 315
    .line 316
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    if-eqz v9, :cond_a

    .line 321
    .line 322
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_a
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    const-string v10, "video"

    .line 335
    .line 336
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    if-eqz v9, :cond_b

    .line 341
    .line 342
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    if-eqz v9, :cond_b

    .line 347
    .line 348
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    :cond_b
    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 357
    .line 358
    goto :goto_8

    .line 359
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_d

    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    goto :goto_a

    .line 374
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-eqz v3, :cond_e

    .line 383
    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    :cond_e
    :goto_a
    if-eqz v5, :cond_f

    .line 389
    .line 390
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 391
    .line 392
    sget-object v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 393
    .line 394
    new-instance v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;

    .line 395
    .line 396
    invoke-direct {v4, v6, v7, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    iget-object v2, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 403
    .line 404
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    goto :goto_b

    .line 408
    :cond_f
    if-eqz v1, :cond_10

    .line 409
    .line 410
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-eqz v2, :cond_10

    .line 415
    .line 416
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 417
    .line 418
    sget-object v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 419
    .line 420
    new-instance v5, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;

    .line 421
    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    invoke-direct {v5, v1, v4, v6}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$k;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 427
    .line 428
    .line 429
    invoke-direct {v2, v3, v5}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    iget-object v1, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 433
    .line 434
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    :cond_10
    :goto_b
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 438
    .line 439
    sget-object v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 440
    .line 441
    new-instance v12, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;

    .line 442
    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 460
    .line 461
    .line 462
    move-result v8

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 464
    .line 465
    .line 466
    move-result v9

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 468
    .line 469
    .line 470
    move-result v10

    .line 471
    const/4 v11, 0x0

    .line 472
    move-object v3, v12

    .line 473
    invoke-direct/range {v3 .. v11}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$h;-><init>(IILjava/lang/String;IIIZZ)V

    .line 474
    .line 475
    .line 476
    invoke-direct {v1, v2, v12}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    iget-object v2, v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 480
    .line 481
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    return-void
.end method

.method static synthetic R(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private R0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;",
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
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_3

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M0(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O0(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x2

    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M0(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    :goto_2
    return-void
.end method

.method private S(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
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

.method private X0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/x0;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 13
    .line 14
    const-string v1, "\u786e\u5b9a"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 20
    .line 21
    const-string v1, "\u53d6\u6d88"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->b(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 34
    .line 35
    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u8be5\u5e16\u5417\uff1f"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$a;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$a;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 50
    .line 51
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;

    .line 52
    .line 53
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment$b;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m:Lcom/join/mgps/dialog/x0;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method private Z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->W:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->W:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method static d1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e2:Z

    .line 6
    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setFullScreen(Z)V

    .line 10
    .line 11
    .line 12
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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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

.method private j0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private loading()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->o0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->r0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const v0, 0x7f12031e

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x11

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private m0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u6211\u7684\u6536\u85cf"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 21
    .line 22
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$p;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$p;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$q;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 53
    .line 54
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 57
    .line 58
    sget-object v2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V1:Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C:Lcom/join/android/app/component/video/c;

    .line 64
    .line 65
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C:Lcom/join/android/app/component/video/c;

    .line 70
    .line 71
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->n:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->M(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 94
    .line 95
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$r;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$r;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 104
    .line 105
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$s;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$s;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 114
    .line 115
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$t;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$t;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private playVideo()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Q:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->R:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->N:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 26
    .line 27
    const/16 v4, 0x8

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Lcom/join/android/app/component/video/MediaController;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 34
    .line 35
    invoke-direct {v2, v5}, Lcom/join/android/app/component/video/MediaController;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->q()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object v2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    sget-object v2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    sget-object v2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 84
    .line 85
    sget-object v4, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 91
    .line 92
    sget-object v4, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V

    .line 95
    .line 96
    .line 97
    sget-object v2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 98
    .line 99
    iget-object v4, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 100
    .line 101
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MyVideoView;->setMediaController(Lcom/join/android/app/component/video/MediaController;)V

    .line 102
    .line 103
    .line 104
    sget-object v2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    sget-object v1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L0()V

    .line 129
    .line 130
    .line 131
    const-string v0, "play a last video ..."

    .line 132
    .line 133
    filled-new-array {v0}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    sget-object v1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/MyVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v0, "play a new video ..."

    .line 147
    .line 148
    filled-new-array {v0}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 156
    .line 157
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$h;

    .line 158
    .line 159
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$h;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 166
    .line 167
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$i;

    .line 168
    .line 169
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$i;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 176
    .line 177
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$j;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$j;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 186
    .line 187
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$l;

    .line 188
    .line 189
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$l;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setScreenChangedListener(Lcom/join/android/app/component/video/MyVideoView$h;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M:Landroid/widget/ImageView;

    .line 196
    .line 197
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$m;

    .line 198
    .line 199
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment$m;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method private r0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q0(I)V

    .line 3
    .line 4
    .line 5
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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

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
    const/4 v0, 0x2

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 55
    .line 56
    .line 57
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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->Y4(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 59
    .line 60
    .line 61
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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

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
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f1:I

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-le v2, v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i1:I

    .line 18
    .line 19
    :goto_0
    iget v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f1:I

    .line 20
    .line 21
    if-gt v1, v2, :cond_6

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItemViewType(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sget-object v3, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->GAME_ITEM:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eq v2, v3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->getItem(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;->a()Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const/4 v5, 0x2

    .line 90
    if-eq v4, v5, :cond_4

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/16 v5, 0xc

    .line 97
    .line 98
    if-ne v4, v5, :cond_5

    .line 99
    .line 100
    :cond_4
    iget v4, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i1:I

    .line 101
    .line 102
    sub-int v4, v1, v4

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    instance-of v5, v5, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;

    .line 113
    .line 114
    if-eqz v5, :cond_5

    .line 115
    .line 116
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5, v2}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;

    .line 129
    .line 130
    invoke-virtual {p0, v4, v3, v2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f1(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 131
    .line 132
    .line 133
    const/4 v3, 0x4

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    return-void
.end method

.method public static y0(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a2:I

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    .line 16
    sput-boolean v1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e2:Z

    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d1()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return v1
.end method


# virtual methods
.method A0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/2addr v0, v2

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method B0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoUrl",
            "coverUrl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Q:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A0()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Q:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L0()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Q:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->R:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 71
    .line 72
    const/16 p2, 0x8

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->playVideo()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method C0(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
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
    sget-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "key_mediacmd"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "key_mediacmd_params"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->X(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method D0(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->l:Lcom/join/mgps/rpc/i;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J0(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V0()V

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

.method E0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

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

.method F0(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "postsList",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method H0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method I0(Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "pid"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v2, "view"

    .line 12
    .line 13
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v3, "comment"

    .line 18
    .line 19
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string v4, "praise"

    .line 24
    .line 25
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const-string v5, "isPraise"

    .line 30
    .line 31
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v5, "isFavorite"

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_4

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    const/4 v8, 0x2

    .line 68
    if-ne v7, v8, :cond_2

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-ne v7, v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {v6, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setView(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setCommit(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 96
    .line 97
    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {p1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method J0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

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
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ne v2, p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    add-int/lit8 p1, p1, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    :goto_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    xor-int/lit8 p1, p1, 0x1

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 82
    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method K0()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    .line 15
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->K:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 36
    .line 37
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->setTop(I)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method L0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->N:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->start()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->playVideo()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method M0(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->FAVORITE_ITEM_HEADER:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 7
    .line 8
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getFav_time()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v2, v4, v3, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$a;-><init>(ZILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method N0(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    return-void
.end method

.method O0(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->N0(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;

    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;->GAME_ITEM:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;

    .line 7
    .line 8
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0$b;-><init>(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$ViewType;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method S0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->K:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i0(Landroid/content/Context;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f070ed4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const v3, 0x7f070ed0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const v4, 0x7f070ecf

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const/4 v4, -0x2

    .line 66
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->K:Landroid/widget/RelativeLayout;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public T(Landroid/widget/AbsListView;III)V
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
    iget p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->v1:I

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->v1:I

    .line 9
    .line 10
    iput p3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L1:I

    .line 11
    .line 12
    iput p4, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->R1:I

    .line 13
    .line 14
    return-void
.end method

.method T0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

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

.method public U(Landroid/widget/AbsListView;I)V
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
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V(Landroid/widget/AbsListView;)V

    .line 5
    .line 6
    .line 7
    :goto_0
    return-void
.end method

.method U0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->H:Landroid/view/View;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0a0215

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->H:Landroid/view/View;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G:Lcom/join/mgps/customview/e;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/customview/f;->z(Landroid/content/Context;)Lcom/join/mgps/customview/f;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G:Lcom/join/mgps/customview/e;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G:Lcom/join/mgps/customview/e;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->F:Lcom/join/mgps/customview/e$d;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/e;->m(Lcom/join/mgps/customview/e$d;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G:Lcom/join/mgps/customview/e;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G:Lcom/join/mgps/customview/e;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->H:Landroid/view/View;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aput-object p1, v2, v3

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/e;->p(Landroid/view/View;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public V(Landroid/widget/AbsListView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/c;->l()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ltz p1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->L1:I

    .line 29
    .line 30
    if-ge v0, v1, :cond_5

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v2, 0x7f0a1b6a

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/join/android/app/component/video/StandardVideoView;

    .line 62
    .line 63
    new-instance v2, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "child="

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, ", videoHeight="

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, ", rect.top:"

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v5, ", rect.bottom:"

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    if-nez v4, :cond_4

    .line 119
    .line 120
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 121
    .line 122
    if-ne v2, v3, :cond_4

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    .line 130
    const/4 v2, 0x7

    .line 131
    if-ne v0, v2, :cond_3

    .line 132
    .line 133
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "currentState="

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, " -->performClick"

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->k(Landroid/content/Context;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_3

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->r1:Landroid/widget/AbsListView;

    .line 163
    .line 164
    :cond_3
    return-void

    .line 165
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_5
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :goto_1
    return-void
.end method

.method V0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method W()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method W0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    return-void
.end method

.method public X(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "key_mediacmd"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "key_mediacmd_params"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "cmd="

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "params="

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "callbackPlayVideo"

    .line 57
    .line 58
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    move-object v1, v0

    .line 81
    const/4 v4, 0x0

    .line 82
    :goto_0
    array-length v5, p1

    .line 83
    if-ge v4, v5, :cond_5

    .line 84
    .line 85
    aget-object v5, p1, v4

    .line 86
    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    if-eq v4, v3, :cond_2

    .line 92
    .line 93
    const/4 v6, 0x2

    .line 94
    if-eq v4, v6, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move-object v1, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v0, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget v6, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P:I

    .line 106
    .line 107
    if-ne v5, v6, :cond_4

    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1()V

    .line 111
    .line 112
    .line 113
    iput v5, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P:I

    .line 114
    .line 115
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "videoUrl="

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v5, "coverUrl="

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const-string v5, "CMD_PLAY"

    .line 153
    .line 154
    filled-new-array {v5, p1, v4}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iput-boolean v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S:Z

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S0()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->B0(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :cond_6
    sget-object v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_a

    .line 187
    .line 188
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P:I

    .line 189
    .line 190
    const/4 v1, -0x1

    .line 191
    if-ne v0, v1, :cond_7

    .line 192
    .line 193
    return-void

    .line 194
    :cond_7
    aget-object p1, p1, v2

    .line 195
    .line 196
    check-cast p1, Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 205
    .line 206
    const/16 v0, 0x8

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iput-boolean v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S:Z

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1()V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :cond_8
    iget p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P:I

    .line 219
    .line 220
    if-ne p1, v1, :cond_9

    .line 221
    .line 222
    return-void

    .line 223
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 224
    .line 225
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    iput-boolean v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S:Z

    .line 229
    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :cond_a
    sget-object v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_PAUSE:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_b

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A0()V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_4

    .line 248
    .line 249
    :cond_b
    sget-object v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_STOP:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_c

    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1()V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_4

    .line 265
    .line 266
    :cond_c
    sget-object v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_FULLSCREEN:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_10

    .line 277
    .line 278
    const-string v0, "false"

    .line 279
    .line 280
    const/4 v1, 0x0

    .line 281
    :goto_2
    array-length v4, p1

    .line 282
    if-ge v1, v4, :cond_f

    .line 283
    .line 284
    if-nez v1, :cond_d

    .line 285
    .line 286
    aget-object v0, p1, v2

    .line 287
    .line 288
    check-cast v0, Ljava/lang/String;

    .line 289
    .line 290
    :cond_d
    if-ne v1, v3, :cond_e

    .line 291
    .line 292
    aget-object v4, p1, v3

    .line 293
    .line 294
    check-cast v4, Ljava/lang/String;

    .line 295
    .line 296
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f0()V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_10
    sget-object v1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/ForumProfileFavoritesActivity$MediaCmd;

    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_14

    .line 317
    .line 318
    const-string v0, "0"

    .line 319
    .line 320
    move-object v1, v0

    .line 321
    const/4 v4, 0x0

    .line 322
    :goto_3
    array-length v5, p1

    .line 323
    if-ge v4, v5, :cond_13

    .line 324
    .line 325
    if-nez v4, :cond_11

    .line 326
    .line 327
    aget-object v0, p1, v2

    .line 328
    .line 329
    check-cast v0, Ljava/lang/String;

    .line 330
    .line 331
    :cond_11
    if-ne v4, v3, :cond_12

    .line 332
    .line 333
    aget-object v1, p1, v3

    .line 334
    .line 335
    check-cast v1, Ljava/lang/String;

    .line 336
    .line 337
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string v2, "top="

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    const-string v3, "offset="

    .line 371
    .line 372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    const-string v3, "CMD_TRANSLATE_Y"

    .line 383
    .line 384
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->x0(II)V

    .line 392
    .line 393
    .line 394
    :cond_14
    :goto_4
    return-void
.end method

.method Y(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->B:I

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :cond_1
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 49
    .line 50
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "_"

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    const-string v1, ""

    .line 78
    .line 79
    :goto_1
    new-instance v3, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    .line 80
    .line 81
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v1, 0x1

    .line 111
    if-eq p1, v1, :cond_5

    .line 112
    .line 113
    const/4 v1, 0x2

    .line 114
    if-eq p1, v1, :cond_4

    .line 115
    .line 116
    const/4 v1, 0x3

    .line 117
    if-eq p1, v1, :cond_3

    .line 118
    .line 119
    const/4 v1, 0x4

    .line 120
    if-eq p1, v1, :cond_2

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->D:Lcom/join/mgps/rpc/e;

    .line 125
    .line 126
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->M0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->D:Lcom/join/mgps/rpc/e;

    .line 132
    .line 133
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->g(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->D:Lcom/join/mgps/rpc/e;

    .line 139
    .line 140
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->n(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->D:Lcom/join/mgps/rpc/e;

    .line 146
    .line 147
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->j1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_2
    if-eqz v0, :cond_6

    .line 152
    .line 153
    invoke-virtual {p0, v0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const p2, 0x7f120159

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const p2, 0x7f12033f

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_3
    return-void
.end method

.method Y0(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->E:Landroid/app/Dialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 12
    .line 13
    const-string v3, "\u53d6\u6d88\u6536\u85cf"

    .line 14
    .line 15
    const-string v4, "\u786e\u5b9a\u8981\u53d6\u6d88\u6536\u85cf\u5417\uff1f"

    .line 16
    .line 17
    const-string v5, "\u53d6\u6d88"

    .line 18
    .line 19
    const-string v6, "\u786e\u5b9a"

    .line 20
    .line 21
    new-instance v7, Lcom/join/mgps/fragment/GmaeFormPostFragment$u;

    .line 22
    .line 23
    invoke-direct {v7, p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment$u;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/g0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/callbacks/e;)Landroid/app/Dialog;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->E:Landroid/app/Dialog;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->E:Landroid/app/Dialog;

    .line 33
    .line 34
    const v1, 0x7f0a04b8

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/Button;

    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$v;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment$v;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->E:Landroid/app/Dialog;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->E:Landroid/app/Dialog;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method Z(I)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iput v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_2
    or-int/2addr p1, v1

    .line 39
    iput p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 40
    .line 41
    const/16 p1, -0xb

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a0(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 50
    .line 51
    const/16 v3, 0x10

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iput v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 63
    .line 64
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$c;

    .line 65
    .line 66
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment$c;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_3
    const/16 p1, 0x16

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a0(I)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iput v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 90
    .line 91
    const-string v0, "\u8fd8\u6ca1\u6709\u6536\u85cf\u5185\u5bb9~"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 97
    .line 98
    new-instance v0, Lcom/join/mgps/fragment/GmaeFormPostFragment$d;

    .line 99
    .line 100
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment$d;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 107
    .line 108
    const/16 v0, 0xa

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 119
    .line 120
    const v0, 0x7f080edb

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/16 p1, 0x1f

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a0(I)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_6

    .line 134
    .line 135
    const/16 p1, 0x1a

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a0(I)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_5

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    const/16 p1, 0x11

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a0(I)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_7

    .line 151
    .line 152
    iput v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 160
    .line 161
    new-instance v1, Lcom/join/mgps/fragment/GmaeFormPostFragment$f;

    .line 162
    .line 163
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment$f;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_6
    :goto_0
    iput v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 178
    .line 179
    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 185
    .line 186
    new-instance v0, Lcom/join/mgps/fragment/GmaeFormPostFragment$e;

    .line 187
    .line 188
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment$e;-><init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 195
    .line 196
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 197
    .line 198
    .line 199
    :cond_7
    :goto_1
    return-void
.end method

.method a0(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method a1(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 4
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
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->w0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v1, 0x5

    .line 55
    if-ne p1, v1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->l:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->D:Lcom/join/mgps/rpc/e;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v1, "uid"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->B:I

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 43
    .line 44
    sput v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a2:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->z:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->k0()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->m0()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->loading()V
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
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method b1()V
    .locals 4

    .line 1
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P:I

    .line 16
    .line 17
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d2:Lcom/join/android/app/component/video/MyVideoView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->N:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->O:Lcom/join/android/app/component/video/MediaController;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->M:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    if-ne v0, v3, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S:Z

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d1()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method c0(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "pid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, p2}, Lcom/join/mgps/Util/r0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->l:Lcom/join/mgps/rpc/i;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/join/mgps/Util/r0;->c0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsDeleteRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/i;->I(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsDeleteData;->isResult()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->u0(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    throw p1

    .line 49
    :catch_0
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->u0(IZ)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_2
    return-void
.end method

.method c1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->o:Landroid/os/Handler;

    .line 13
    .line 14
    const-wide/16 v2, 0x7d0

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->o:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    .line 24
    .line 25
    :cond_1
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
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateDownloadView()V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method e0(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p1:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

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
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->B:I

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2, p1, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->l1:Lcom/join/mgps/rpc/e;

    .line 52
    .line 53
    invoke-interface {v2, p1}, Lcom/join/mgps/rpc/e;->I0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q1:Z

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a1(Lcom/join/mgps/dto/DetailResultBean;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    if-eqz p1, :cond_4

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    goto :goto_2

    .line 113
    :catch_0
    move-exception p1

    .line 114
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_1
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p1:I

    .line 121
    .line 122
    iput-boolean v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q1:Z

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :goto_2
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p1:I

    .line 126
    .line 127
    iput-boolean v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q1:Z

    .line 128
    .line 129
    throw p1

    .line 130
    :cond_6
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_3
    return-void
.end method

.method e1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    sget-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V1:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "event="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "downloadTask="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h0(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    if-eqz p2, :cond_3

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    if-eq p2, v1, :cond_3

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    if-eq p2, v1, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    if-eq p2, v1, :cond_1

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    if-eq p2, v1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 p1, 0x0

    .line 79
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sput-boolean v3, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e2:Z

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z0()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S0()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v3, v3}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->x0(II)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sput-boolean v2, Lcom/join/mgps/fragment/GmaeFormPostFragment;->e2:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j0()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->K0()Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method

.method f1(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "downloadTask",
            "taskProgress"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 13
    .line 14
    mul-double v0, v0, v2

    .line 15
    .line 16
    mul-double v0, v0, v2

    .line 17
    .line 18
    double-to-long v0, v0

    .line 19
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    const-string v6, "/"

    .line 26
    .line 27
    cmp-long v7, v2, v4

    .line 28
    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    :try_start_1
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->j:Landroid/widget/TextView;

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/16 v1, 0xc

    .line 107
    .line 108
    if-ne v0, v1, :cond_2

    .line 109
    .line 110
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->m:Landroid/widget/ProgressBar;

    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    long-to-int v2, v1

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->l:Landroid/widget/ProgressBar;

    .line 122
    .line 123
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    long-to-int v2, v1

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    const/4 v0, 0x2

    .line 136
    if-ne p2, v0, :cond_3

    .line 137
    .line 138
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$w;->k:Landroid/widget/TextView;

    .line 139
    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p3, "/S"

    .line 153
    .line 154
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    :cond_3
    :goto_2
    return-void
.end method

.method g0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x2

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ne p1, v2, :cond_1

    .line 45
    .line 46
    :cond_2
    return-object v1
.end method

.method g1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "type",
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p2, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h0(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->h1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p2}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getError_info()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->r()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lq5/f;->q()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1:Ljava/util/Map;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateDownloadView()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method h0(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crcLinkTypeVal"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
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
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    return-object p1
.end method

.method h1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->S(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

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

.method i0(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    const v1, 0x7f070ed4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    mul-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    sub-int/2addr v0, p1

    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    mul-float v0, v0, p1

    .line 33
    .line 34
    const p1, 0x3fe66666    # 1.8f

    .line 35
    .line 36
    .line 37
    div-float/2addr v0, p1

    .line 38
    float-to-int p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->V:I

    .line 42
    .line 43
    return p1
.end method

.method public i1(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->k:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method j1(Landroid/widget/AbsListView;III)V
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method k0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->getDownloadTaskInfo()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Y:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->l1:Lcom/join/mgps/rpc/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method k1(Landroid/widget/AbsListView;I)V
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->n0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C0(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->P()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->c0()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public l0()V
    .locals 0

    .line 1
    return-void
.end method

.method n0()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:I

    .line 21
    .line 22
    sub-int/2addr v0, v2

    .line 23
    if-lt v3, v0, :cond_1

    .line 24
    .line 25
    if-gt v3, v1, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    :cond_1
    return v2
.end method

.method o0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x3

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I0(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i1(Landroid/content/res/Configuration;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C:Lcom/join/android/app/component/video/c;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->F()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b0()V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 19
    .line 20
    .line 21
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
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    goto :goto_0

    .line 20
    :pswitch_1
    const/16 p1, 0x9

    .line 21
    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_2
    const/16 p1, 0x8

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    const/4 p1, 0x7

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z:Ljava/util/Map;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateProgressPartly()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    const/4 p1, 0x3

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_6
    const/4 p1, 0x6

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_7
    const/4 p1, 0x5

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_8
    const/4 p1, 0x2

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_9
    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    return-void

    .line 76
    nop

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
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->H()V

    .line 9
    .line 10
    .line 11
    :cond_0
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
    add-int v0, p2, p3

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f1:I

    .line 6
    .line 7
    iput p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i1:I

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j1(Landroid/widget/AbsListView;III)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C:Lcom/join/android/app/component/video/c;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->k1(Landroid/widget/AbsListView;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method p0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lt6/t;->p()Lt6/t;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->MyProfileFavorites:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lt6/t;->o(Lcom/join/mgps/dto/ForumBean$ForumEvent;)Lcom/join/mgps/db/tables/ForumTable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/ForumTable;->getArgs1()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->J(Ljava/lang/String;)Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;->getFavorites_list()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    int-to-float v2, v2

    .line 56
    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    .line 58
    mul-float v2, v2, v3

    .line 59
    .line 60
    sget v3, Lcom/join/mgps/Util/r0;->d:I

    .line 61
    .line 62
    int-to-float v3, v3

    .line 63
    div-float/2addr v2, v3

    .line 64
    float-to-double v2, v2

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    double-to-int v2, v2

    .line 70
    iput v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p:I

    .line 71
    .line 72
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->F0(Ljava/util/List;I)V

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x20

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception v1

    .line 86
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method

.method q0(I)V
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
    const-string v5, ""

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v9, -0x1

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-ne v0, v9, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 24
    .line 25
    const/16 v10, 0x18

    .line 26
    .line 27
    const/4 v11, 0x1

    .line 28
    if-le p1, v11, :cond_2

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->W0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    move-object v6, v0

    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    move-object v6, v5

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_a

    .line 63
    .line 64
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->B:I

    .line 65
    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->z:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :cond_3
    move v1, v0

    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->l:Lcom/join/mgps/rpc/i;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->z:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget v4, Lcom/join/mgps/Util/r0;->d:I

    .line 84
    .line 85
    const/4 v7, 0x2

    .line 86
    move v3, p1

    .line 87
    invoke-interface/range {v0 .. v7}, Lcom/join/mgps/rpc/i;->X(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;

    .line 98
    .line 99
    if-ne p1, v11, :cond_4

    .line 100
    .line 101
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->s1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    if-eqz v0, :cond_7

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesDatas;->getFavorites_list()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    iput p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p:I

    .line 119
    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->F0(Ljava/util/List;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iput v9, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 125
    .line 126
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    if-ne p1, v11, :cond_6

    .line 133
    .line 134
    const/16 p1, 0x14

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    const/16 p1, 0x20

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    iget p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 147
    .line 148
    if-eq p1, v9, :cond_8

    .line 149
    .line 150
    iput v8, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 151
    .line 152
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_9
    :try_start_3
    iput v8, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    .line 158
    iput v8, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_a
    :try_start_4
    invoke-virtual {p0, v10}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    .line 166
    .line 167
    :goto_3
    iget p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 168
    .line 169
    if-eq p1, v9, :cond_b

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :goto_4
    :try_start_5
    invoke-virtual {p0, v10}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    .line 177
    .line 178
    iget p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 179
    .line 180
    if-eq p1, v9, :cond_b

    .line 181
    .line 182
    :goto_5
    iput v8, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 183
    .line 184
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :goto_6
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 189
    .line 190
    if-eq v0, v9, :cond_c

    .line 191
    .line 192
    iput v8, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 193
    .line 194
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_d
    iget p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 199
    .line 200
    if-eq p1, v9, :cond_e

    .line 201
    .line 202
    iput v8, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q:I

    .line 203
    .line 204
    :cond_e
    const p1, 0x7f12031e

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/16 p1, 0x11

    .line 215
    .line 216
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 220
    .line 221
    .line 222
    :goto_7
    return-void
.end method

.method s0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->P(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    :cond_0
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
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    :cond_0
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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

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

.method declared-synchronized t0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->R0(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->s0()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->y:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f:Lcom/join/mgps/customview/ForumLoadingView;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/16 v0, 0x16

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_3
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    monitor-exit p0

    .line 55
    throw v0
.end method

.method u0(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pid",
            "success"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v2, v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ne v2, p1, :cond_0

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 63
    .line 64
    .line 65
    :cond_1
    new-instance p2, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 66
    .line 67
    invoke-direct {p2}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setType(I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setPost(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lcom/join/mgps/Util/r0;->h1(Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "\u5220\u9664\u6210\u529f"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->A:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string p2, "\u5220\u9664\u5931\u8d25"

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method updateDownloadView()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

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

    .annotation build Lorg/androidannotations/annotations/UiThread;
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
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->G0()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void

    .line 27
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

.method v0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:I

    .line 22
    .line 23
    add-int/lit8 v4, v0, 0x0

    .line 24
    .line 25
    if-lt v3, v4, :cond_1

    .line 26
    .line 27
    if-gt v3, v2, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C0(Z)V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:I

    .line 34
    .line 35
    sub-int/2addr v2, v0

    .line 36
    add-int/2addr v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C0(Z)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->j:Lcom/join/mgps/customview/XListView2;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    new-instance v2, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object v3, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v4, "key_mediacmd"

    .line 77
    .line 78
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ""

    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "key_mediacmd_params"

    .line 118
    .line 119
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->X(Landroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method w0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p2, v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getGame()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x2

    .line 65
    if-ne v2, v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;->getPost()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_1

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_1

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    or-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->t0()V

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void
.end method

.method x0(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "top",
            "offsetY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    neg-int p1, p1

    .line 28
    int-to-float p1, p1

    .line 29
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iput p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->T:I

    .line 34
    .line 35
    iput p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->U:I

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string p2, "mTop="

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->T:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "mOffsetY="

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->U:I

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string v0, "offsetContainer"

    .line 76
    .line 77
    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Landroid/widget/FrameLayout;

    .line 85
    .line 86
    iget p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->U:I

    .line 87
    .line 88
    int-to-float p2, p2

    .line 89
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method z0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method
