.class public Lcom/join/mgps/activity/posting/PostingActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/posting/PostingActivity$m;,
        Lcom/join/mgps/activity/posting/PostingActivity$l;,
        Lcom/join/mgps/activity/posting/PostingActivity$n;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0092
.end annotation


# static fields
.field public static final ACTIVITY_RESULT_POSTING:I = 0x4444

.field public static final FROM_TYPE_MAIN_LABEL:I = 0x64

.field static final MAX_POSTS_IMAGE:I = 0x9

.field static final MAX_POSTS_IMAGE_WITH_ADD:Z = false

.field private static final REQUEST_SEARCH_LABEL:I = 0x1111

.field public static final TYPE_POSTING_COMMON:I = 0x1

.field public static final TYPE_POSTING_GAME_RES:I = 0x6

.field public static final TYPE_POSTING_HELP:I = 0x3

.field public static final TYPE_POSTING_RAIDERS:I = 0x2

.field public static final TYPE_POSTING_REC_GAME:I = 0x4


# instance fields
.field accountUtil:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btnSubmit:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_selectedCoins:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_selectedGames:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fid:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field fl_insert_label:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fl_posting_type_container:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fromType:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameTagBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field game_id:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isFirstInitPostingGroup:Z

.field isGetPostingAuthority:Z

.field iv_posting_location:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_posting_select:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field label:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field ll_bottom:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_help_posting:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_posting_rec_game:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_top_center:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mCompressListener:Lnet/bither/util/b$e;

.field mFormRequestServer:Lcom/join/mgps/rpc/i;

.field mGroupPop:Lcom/join/mgps/customview/i0;

.field private mLoginDialog:Landroid/app/Dialog;

.field mPicsAdapter:Lcom/join/mgps/activity/posting/PostingActivity$n;

.field private final mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

.field private mSelectCoinsDialog:Lcom/join/mgps/dialog/y1;

.field private mSelectGameDialog:Lcom/join/mgps/dialog/z1;

.field private mSelectedCoins:I

.field private mSelectedGame:Lcom/join/mgps/dto/CollectionBeanSub;

.field private mSelectedGameInfo:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private mSelectedGroupInfo:Lcom/join/mgps/dto/GroupInfoBean;

.field mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLabelLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/LabelBean;",
            ">;"
        }
    .end annotation
.end field

.field private mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

.field mUploadImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field postingGroup:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field postingType:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field posts_content:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field posts_res_line:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field posts_res_link:Lcom/join/mgps/customview/CustomEdittext;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field posts_title:Lcom/join/mgps/customview/CustomEdittext;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_main:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tag_id:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field tag_name:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field toggleSendOn:I

.field tv_coins:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_posting_group:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_rec_game:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedCoins:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mUploadImages:Ljava/util/List;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->toggleSendOn:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->isGetPostingAuthority:Z

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->isFirstInitPostingGroup:Z

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/posting/PostingActivity$c;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/posting/PostingActivity$c;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 42
    .line 43
    new-instance v0, Lcom/join/mgps/activity/posting/PostingActivity$a;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/posting/PostingActivity$a;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 56
    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/y1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectCoinsDialog:Lcom/join/mgps/dialog/y1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dialog/y1;)Lcom/join/mgps/dialog/y1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectCoinsDialog:Lcom/join/mgps/dialog/y1;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/posting/PostingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedCoins:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/posting/PostingActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedCoins:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/z1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectGameDialog:Lcom/join/mgps/dialog/z1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dialog/z1;)Lcom/join/mgps/dialog/z1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectGameDialog:Lcom/join/mgps/dialog/z1;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->selectPic()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dto/GroupInfoBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGroupInfo:Lcom/join/mgps/dto/GroupInfoBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dto/GroupInfoBean;)Lcom/join/mgps/dto/GroupInfoBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGroupInfo:Lcom/join/mgps/dto/GroupInfoBean;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/posting/PostingActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
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

.method private deleteTempPic()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mUploadImages:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Lnet/bither/util/b;->k(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/Hashtable;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 65
    .line 66
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/Hashtable;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    .line 76
    .line 77
    :cond_3
    :goto_2
    return-void
.end method

.method private generatePostParams()Lorg/springframework/util/LinkedMultiValueMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/LinkedMultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "uid"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "token"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getFid()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ""

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v3, "fid"

    .line 50
    .line 51
    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    double-to-int v3, v3

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v3, "rsid"

    .line 75
    .line 76
    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "subject"

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getSubject()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getPostingType()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v3, "post_type"

    .line 108
    .line 109
    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "game_id"

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getGameId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v1, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->game_id:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v3, "comment_game_id"

    .line 128
    .line 129
    invoke-virtual {v0, v3, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    iget v3, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedCoins:I

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "help_money"

    .line 150
    .line 151
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const-string v1, "tag_ids"

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getTagIds()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v0, v1, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_content:Landroid/widget/EditText;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v2, "message"

    .line 174
    .line 175
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mUploadImages:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-ge v1, v2, :cond_1

    .line 186
    .line 187
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mUploadImages:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Ljava/lang/String;

    .line 194
    .line 195
    const-string v3, "content://"

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    const-string v3, "img_"

    .line 202
    .line 203
    if-eqz v2, :cond_0

    .line 204
    .line 205
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mUploadImages:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {v2, p0}, Lcom/join/mgps/Util/o3;->p(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    add-int/lit8 v3, v1, 0x1

    .line 230
    .line 231
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v0, v3, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    add-int/lit8 v3, v1, 0x1

    .line 255
    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    new-instance v3, Lorg/springframework/core/io/FileSystemResource;

    .line 264
    .line 265
    iget-object v4, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mUploadImages:Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    check-cast v4, Ljava/lang/String;

    .line 272
    .line 273
    invoke-direct {v3, v4}, Lorg/springframework/core/io/FileSystemResource;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_1
    iget v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 283
    .line 284
    const/4 v2, 0x6

    .line 285
    if-ne v1, v2, :cond_2

    .line 286
    .line 287
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_res_link:Lcom/join/mgps/customview/CustomEdittext;

    .line 288
    .line 289
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    const-string v2, "resource_url"

    .line 298
    .line 299
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_2
    return-object v0
.end method

.method private getImagesFromAlbum(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "key_selected_images"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/util/List;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method private getSubject()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/join/mgps/dto/LabelBean;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v2, "Subject:"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "PostingActivity"

    .line 89
    .line 90
    invoke-static {v2, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v0
.end method

.method private initHListView()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/posting/PostingActivity$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/posting/PostingActivity$n;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mPicsAdapter:Lcom/join/mgps/activity/posting/PostingActivity$n;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity$n;->d(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mPicsAdapter:Lcom/join/mgps/activity/posting/PostingActivity$n;

    .line 14
    .line 15
    new-instance v1, Lcom/join/mgps/activity/posting/PostingActivity$b;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/posting/PostingActivity$b;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity$n;->f(Lcom/join/mgps/activity/posting/PostingActivity$n$c;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mPicsAdapter:Lcom/join/mgps/activity/posting/PostingActivity$n;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    .line 29
    .line 30
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

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

.method private selectPic()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 14
    .line 15
    check-cast v2, Ljava/io/Serializable;

    .line 16
    .line 17
    const-string v3, "key_selected_images"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x100

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private showLoadingDialog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p0, p1, v1}, Lcom/join/mgps/Util/g0;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/f1;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dialog/f1;->b()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
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
    iput-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mFormRequestServer:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->fl_insert_label:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 20
    .line 21
    new-instance v2, Lcom/join/mgps/activity/posting/PostingActivity$d;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/posting/PostingActivity$d;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/CustomEdittext;->setOnSelectionChanged(Lcom/join/mgps/customview/CustomEdittext$a;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->updateSubmitBtnBg(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_content:Landroid/widget/EditText;

    .line 34
    .line 35
    new-instance v3, Lcom/join/mgps/activity/posting/PostingActivity$e;

    .line 36
    .line 37
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/posting/PostingActivity$e;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->fromType:I

    .line 44
    .line 45
    const/16 v3, 0x64

    .line 46
    .line 47
    if-ne v2, v3, :cond_0

    .line 48
    .line 49
    new-instance v2, Lcom/join/mgps/dto/LabelBean;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/join/mgps/dto/LabelBean;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tag_id:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/LabelBean;->setTag_id(I)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/join/mgps/activity/posting/PostingActivity;->label:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/LabelBean;->setTag_name(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/posting/PostingActivity;->updateLabels(Lcom/join/mgps/dto/LabelBean;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 72
    .line 73
    new-instance v3, Lcom/join/mgps/activity/posting/PostingActivity$f;

    .line 74
    .line 75
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/posting/PostingActivity$f;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 82
    .line 83
    new-instance v3, Lcom/join/mgps/activity/posting/PostingActivity$l;

    .line 84
    .line 85
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/posting/PostingActivity$l;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->fl_posting_type_container:Landroid/widget/FrameLayout;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 97
    .line 98
    const/4 v3, 0x3

    .line 99
    if-ne v2, v3, :cond_1

    .line 100
    .line 101
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->ll_help_posting:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->ll_posting_rec_game:Landroid/widget/RelativeLayout;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->btn_selectedCoins:Landroid/widget/Button;

    .line 112
    .line 113
    new-instance v3, Lcom/join/mgps/activity/posting/PostingActivity$g;

    .line 114
    .line 115
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/posting/PostingActivity$g;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->ll_help_posting:Landroid/widget/LinearLayout;

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->ll_posting_rec_game:Landroid/widget/RelativeLayout;

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->btn_selectedGames:Landroid/widget/Button;

    .line 133
    .line 134
    new-instance v3, Lcom/join/mgps/activity/posting/PostingActivity$h;

    .line 135
    .line 136
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/posting/PostingActivity$h;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tv_posting_group:Landroid/widget/TextView;

    .line 143
    .line 144
    new-instance v3, Lcom/join/mgps/activity/posting/PostingActivity$i;

    .line 145
    .line 146
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/posting/PostingActivity$i;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->initHListView()V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingGroup:Ljava/lang/String;

    .line 156
    .line 157
    const/4 v3, 0x1

    .line 158
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/posting/PostingActivity;->updatePostingGroup(Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    iget v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 162
    .line 163
    if-eq v2, v3, :cond_2

    .line 164
    .line 165
    const/4 v3, 0x2

    .line 166
    if-ne v2, v3, :cond_3

    .line 167
    .line 168
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->fl_posting_type_container:Landroid/widget/FrameLayout;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tag_id:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_4

    .line 180
    .line 181
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tag_name:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_5

    .line 188
    .line 189
    :cond_4
    iget v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 190
    .line 191
    const/4 v3, 0x6

    .line 192
    if-ne v2, v3, :cond_5

    .line 193
    .line 194
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_res_line:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_res_link:Lcom/join/mgps/customview/CustomEdittext;

    .line 200
    .line 201
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->fl_posting_type_container:Landroid/widget/FrameLayout;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    :cond_5
    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->D(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method btnSubmit()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/posting/PostingActivity;->isLogined(Landroid/content/Context;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const v1, 0x7f120142

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_9

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "pa"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->validAccount()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->showDialog()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getFid()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-gtz v1, :cond_3

    .line 80
    .line 81
    const-string v1, "\u8bf7\u9009\u62e9\u5c0f\u7ec4"

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_content:Landroid/widget/EditText;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    const-string v1, "\u8bf7\u8f93\u5165\u5e16\u5b50\u5185\u5bb9"

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    iget v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 110
    .line 111
    const/4 v2, 0x6

    .line 112
    if-ne v1, v2, :cond_5

    .line 113
    .line 114
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_res_link:Lcom/join/mgps/customview/CustomEdittext;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    const-string v1, "\u8bf7\u8f93\u5165\u8d44\u6e90\u94fe\u63a5\u5730\u5740"

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    iget v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 137
    .line 138
    const/4 v2, 0x3

    .line 139
    if-ne v1, v2, :cond_6

    .line 140
    .line 141
    iget v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedCoins:I

    .line 142
    .line 143
    if-gez v2, :cond_6

    .line 144
    .line 145
    const-string v1, "\u8bf7\u9009\u62e9\u60ac\u8d4f\u94dc\u677f\u6570"

    .line 146
    .line 147
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_6
    const/4 v2, 0x4

    .line 152
    if-ne v1, v2, :cond_7

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getGameId()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    const-string v1, "\u8bf7\u9009\u62e9\u63a8\u8350\u6e38\u620f"

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_7
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_8

    .line 175
    .line 176
    iput v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->toggleSendOn:I

    .line 177
    .line 178
    const v1, 0x7f12031e

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_8
    const-string v1, "\u6b63\u5728\u53d1\u5e16\uff0c \u8bf7\u7a0d\u7b49..."

    .line 190
    .line 191
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showLoadingDialog(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 v1, 0x1

    .line 195
    iput v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->toggleSendOn:I

    .line 196
    .line 197
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lnet/bither/util/b;->x()V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_9
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    iput v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->toggleSendOn:I

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    :goto_1
    return-void
.end method

.method canDeleteTag(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->fromType:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/join/mgps/dto/LabelBean;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x1

    .line 54
    :goto_0
    return v1
.end method

.method clearImageMemoryLruCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method doSubmit()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u53d1\u5e16\u5931\u8d25"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->generatePostParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mFormRequestServer:Lcom/join/mgps/rpc/i;

    .line 8
    .line 9
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/i;->x0(Ljava/util/Map;)Lcom/join/mgps/dto/ResultResMainBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/join/mgps/dto/Response;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/dto/Response;->isResult()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const-string v1, "\u53d1\u5e16\u6210\u529f,\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->deleteTempPic()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->hideLoadingDialog()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->goTargetActivity()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/join/mgps/dto/Response;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/Response;->getMsg()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->hideLoadingDialog()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->hideLoadingDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->hideLoadingDialog()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method fl_insert_label()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, "\u6700\u591a\u53ea\u80fd\u9009\u62e93\u4e2a\u8bdd\u9898"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-class v1, Lcom/join/mgps/activity/SearchLabelActivity_;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "postingLabelType"

    .line 24
    .line 25
    iget v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x1111

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method fl_insert_pic()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/join/mgps/activity/posting/PostingActivity$k;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/posting/PostingActivity$k;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method getEnvolopeTag(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "<font color=#3CA4FD>"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "</font>"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->fid:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGroupInfo:Lcom/join/mgps/dto/GroupInfoBean;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/GroupInfoBean;->getFid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGameInfo:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGame:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    const-string v0, ""

    .line 20
    .line 21
    return-object v0
.end method

.method getGroupInfoLists(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFirstInit"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mFormRequestServer:Lcom/join/mgps/rpc/i;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/join/mgps/activity/posting/PostingActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tag_id:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tag_name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/join/mgps/rpc/i;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/join/mgps/dto/GroupListBean;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->initPostingGroup(Lcom/join/mgps/dto/GroupListBean;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/join/mgps/dto/GroupListBean;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->showPopGroup(Lcom/join/mgps/dto/GroupListBean;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method getHintText()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const-string v3, "-\u8bf7\u53d1\u8868\u5bf9\u522b\u4eba\u6709\u610f\u4e49\u7684\u5185\u5bb9\n"

    .line 10
    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "\u9700\u8981\u7b49\u7ea7 \u5c71\u5927\u738b\n"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "-\u8bf7\u5728\u63a8\u8350\u7684\u6e38\u620f\u91cc\u9644\u4e0a\u8be6\u7ec6\u7684\u7406\u7531\n"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v1, "\u9700\u8981\u7b49\u7ea7 \u65e0\n"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "-\u8bf7\u6e05\u6670\u8bf4\u660e\u6c42\u52a9\u7684\u95ee\u9898\n"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const-string v1, "\u9700\u8981\u7b49\u7ea7 \u5de1\u5c71\u5c06\n"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const-string v1, "\u9700\u8981\u7b49\u7ea7 \u9996\u9886\n"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :goto_0
    const-string v1, "-\u4f60\u53ef\u4ee5\u63d2\u5165\u8bdd\u9898\uff0c\u7ed9\u5e16\u5b50\u4e00\u4e2a\u5f52\u5c5e\n"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "-\u4f60\u4e5f\u53ef\u4ee5\u7ed9\u5e16\u5b50\u914d\u4e0a\u56fe\u7247\u65b9\u4fbf\u522b\u4eba\u7406\u89e3\n"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method getNearestPosition(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectPos"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getTagLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/join/mgps/dto/LabelBean;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    add-int/2addr v2, v4

    .line 57
    if-le p1, v2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sub-int v0, v2, v0

    .line 65
    .line 66
    sub-int v0, p1, v0

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sub-int p1, v2, p1

    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-ge v0, p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    sub-int p1, v2, p1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move p1, v2

    .line 88
    :cond_3
    :goto_1
    return p1
.end method

.method getPostTitle()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getTagLength()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0x14

    .line 30
    .line 31
    if-le v1, v2, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method

.method getPostingAuthority()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->isGetPostingAuthority:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/posting/PostingActivity;->isLogined(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const v0, 0x7f120142

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->showToast(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->validAccount()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->showDialog()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingGroup:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->isFirstInitPostingGroup:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->getGroupInfoLists(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getPostingHint()V

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->showLoading()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mFormRequestServer:Lcom/join/mgps/rpc/i;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/join/mgps/activity/posting/PostingActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget v4, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 76
    .line 77
    invoke-interface {v0, v2, v3, v4}, Lcom/join/mgps/rpc/i;->s(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->isGetPostingAuthority:Z

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->hideLoading()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->showFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "getPostingAuthority Exception: "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->printLog(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->showFailed()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->showFailed()V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void
.end method

.method getPostingHint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mFormRequestServer:Lcom/join/mgps/rpc/i;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/i;->E(I)Lcom/join/mgps/dto/ResultResMainBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->setPostingHint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    nop

    .line 28
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method getPostingType()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x2

    .line 8
    if-ne v0, v2, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    const/4 v2, 0x3

    .line 12
    if-ne v0, v2, :cond_2

    .line 13
    .line 14
    return v2

    .line 15
    :cond_2
    const/4 v2, 0x4

    .line 16
    if-ne v0, v2, :cond_3

    .line 17
    .line 18
    return v2

    .line 19
    :cond_3
    const/4 v2, 0x6

    .line 20
    if-ne v0, v2, :cond_4

    .line 21
    .line 22
    return v2

    .line 23
    :cond_4
    return v1
.end method

.method getTagIds()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gtz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_0
    const-string v0, ""

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/join/mgps/dto/LabelBean;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/LabelBean;->getTag_id()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, ","

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/lit8 v1, v1, -0x1

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method

.method getTagLength()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/join/mgps/dto/LabelBean;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v2, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return v2
.end method

.method goShareActivity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method goTargetActivity()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "postingType"

    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->postingType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->rl_main:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method hideLoadingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

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
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mShowLoadingDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method initPostingGroup(Lcom/join/mgps/dto/GroupListBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->isFirstInitPostingGroup:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GroupListBean;->getRecommendForum()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/join/mgps/dto/GroupInfoBean;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGroupInfo:Lcom/join/mgps/dto/GroupInfoBean;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/GroupInfoBean;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->updatePostingGroup(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method insertPostTag(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "<font color=#3CA4FD>"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "</font>"

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getTagLength()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method isActivityFinish()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
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
    invoke-super {p0, p1, p2, p3}, Lcom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 25
    .line 26
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/posting/PostingActivity;->getImagesFromAlbum(Landroid/content/Intent;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;

    .line 49
    .line 50
    const/16 p2, 0x8

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mPicsAdapter:Lcom/join/mgps/activity/posting/PostingActivity$n;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity$n;->d(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mPicsAdapter:Lcom/join/mgps/activity/posting/PostingActivity$n;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    const/4 v0, -0x1

    .line 69
    if-ne p2, v0, :cond_4

    .line 70
    .line 71
    const/16 p2, 0x1111

    .line 72
    .line 73
    if-eq p1, p2, :cond_3

    .line 74
    .line 75
    const-string p2, "</font>"

    .line 76
    .line 77
    const-string v0, "\u63a8\u8350\u6e38\u620f\uff1a<font color=#000000>"

    .line 78
    .line 79
    const-string v1, "gameInfo"

    .line 80
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_0
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGame:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tv_rec_game:Landroid/widget/TextView;

    .line 94
    .line 95
    new-instance p3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGame:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :pswitch_1
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 132
    .line 133
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGameInfo:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tv_rec_game:Landroid/widget/TextView;

    .line 136
    .line 137
    new-instance p3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGameInfo:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    const-string p1, "label"

    .line 170
    .line 171
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lcom/join/mgps/dto/LabelBean;

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->updateLabels(Lcom/join/mgps/dto/LabelBean;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    :goto_1
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->back_image()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lnet/bither/util/b;->y(Lnet/bither/util/b$e;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/Hashtable;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 20
    .line 21
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Ljava/util/Hashtable;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->clearImageMemoryLruCache()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mUploadImages:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lnet/bither/util/b;->e(Lnet/bither/util/b$e;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getPostingAuthority()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method printLog(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    const-string v0, "PostingActivity"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getPostingAuthority()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setPostingHint(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    const-string v0, "#"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    array-length v0, p1

    .line 17
    if-gtz v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    array-length v1, p1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_2

    .line 28
    .line 29
    aget-object v3, p1, v2

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, "\n"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_content:Landroid/widget/EditText;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_1
    return-void
.end method

.method showDialog()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x10000000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method showFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->rl_main:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showLoading()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->rl_main:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showPopGroup(Lcom/join/mgps/dto/GroupListBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mGroupPop:Lcom/join/mgps/customview/i0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/i0;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mPostingCallback:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/i0;-><init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mGroupPop:Lcom/join/mgps/customview/i0;

    .line 16
    .line 17
    new-instance v1, Lcom/join/mgps/activity/posting/PostingActivity$j;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/posting/PostingActivity$j;-><init>(Lcom/join/mgps/activity/posting/PostingActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->iv_posting_select:Landroid/widget/ImageView;

    .line 26
    .line 27
    const v1, 0x7f080f42

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mGroupPop:Lcom/join/mgps/customview/i0;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/GroupListBean;->getRecommendForum()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/GroupListBean;->getFollowForum()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedGroupInfo:Lcom/join/mgps/dto/GroupInfoBean;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/customview/i0;->a(Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/GroupInfoBean;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mGroupPop:Lcom/join/mgps/customview/i0;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->ll_top_center:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/i0;->showAsDropDown(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method showPrePostingHintDialog(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method updateLabels(Lcom/join/mgps/dto/LabelBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

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
    check-cast v1, Lcom/join/mgps/dto/LabelBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/LabelBean;->getTag_id()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/LabelBean;->getTag_id()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "#"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/LabelBean;->setTag_name(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->insertPostTag(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method updatePostEditText()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->updatePostTag()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method updatePostTag()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/posting/PostingActivity;->getPostTitle()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedLabelLists:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/join/mgps/dto/LabelBean;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/join/mgps/dto/LabelBean;->getTag_name()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v6, "<font color=#3CA4FD>"

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "</font>"

    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-le v0, v1, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->posts_title:Lcom/join/mgps/customview/CustomEdittext;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
.end method

.method updatePostingGroup(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupInfo",
            "controlSelected"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->iv_posting_select:Landroid/widget/ImageView;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tv_posting_group:Landroid/widget/TextView;

    .line 16
    .line 17
    const-string p2, "#3CA4FD"

    .line 18
    .line 19
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tv_posting_group:Landroid/widget/TextView;

    .line 27
    .line 28
    const-string p2, "\u9009\u62e9\u5c0f\u7ec4"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->iv_posting_location:Landroid/widget/ImageView;

    .line 34
    .line 35
    const p2, 0x7f080f3f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget-object p2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->iv_posting_select:Landroid/widget/ImageView;

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->iv_posting_location:Landroid/widget/ImageView;

    .line 52
    .line 53
    const v0, 0x7f080f3e

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tv_posting_group:Landroid/widget/TextView;

    .line 60
    .line 61
    const-string v0, "#262626"

    .line 62
    .line 63
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Lcom/join/mgps/activity/posting/PostingActivity;->tv_posting_group:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method updateSubmitBtnBg(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focus"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->btnSubmit:Landroid/widget/Button;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->btnSubmit:Landroid/widget/Button;

    .line 10
    .line 11
    const-string v0, "#F47500"

    .line 12
    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->btnSubmit:Landroid/widget/Button;

    .line 21
    .line 22
    const v0, 0x7f080f41

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->btnSubmit:Landroid/widget/Button;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->btnSubmit:Landroid/widget/Button;

    .line 36
    .line 37
    const-string v0, "#A8A8A8"

    .line 38
    .line 39
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity;->btnSubmit:Landroid/widget/Button;

    .line 47
    .line 48
    const v0, 0x7f080f40

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method validAccount()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/posting/PostingActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    return v0
.end method
