.class public Lcom/join/mgps/activity/SharePostsActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SharePostsActivity$h;,
        Lcom/join/mgps/activity/SharePostsActivity$i;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0839
.end annotation


# static fields
.field public static final FORUM_ID:Ljava/lang/String; = "forum_id"

.field public static final KEY_FROM_CLASS:Ljava/lang/String; = "key_from_class"

.field public static final KEY_FROM_POSTS_SUBMIT_REQUEST:Ljava/lang/String; = "key_from_posts_submit_request"

.field public static final MAX_POSTS_IMAGE:I = 0x9

.field private static VALUE_FROM_CLASS:Ljava/lang/String; = "value_from_class"


# instance fields
.field public final TAG:Ljava/lang/String;

.field fid:I

.field footer_tip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field forumDialog:Lcom/join/mgps/dialog/x0;

.field private forumLoadingDialog:Lcom/join/mgps/dialog/y0;

.field forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

.field helpContainer:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field helpGrid:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mCompressListener:Lnet/bither/util/b$e;

.field mDialog:Lcom/join/mgps/customview/t;

.field private mForumObserver:Lcom/join/mgps/Util/r0$j;

.field private mHelpMoneies:[Ljava/lang/String;

.field private mHelpMoneyAdapter:Landroid/widget/SimpleAdapter;

.field private mLastItem:I

.field mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

.field mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field myRemainHelpMoney:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field posts_content:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field posts_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field release:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field rsid:I

.field toggleSendOn:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->fid:I

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    double-to-int v1, v1

    .line 22
    iput v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->rsid:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->toggleSendOn:I

    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$a;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SharePostsActivity$a;-><init>(Lcom/join/mgps/activity/SharePostsActivity;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mForumObserver:Lcom/join/mgps/Util/r0$j;

    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$b;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SharePostsActivity$b;-><init>(Lcom/join/mgps/activity/SharePostsActivity;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 40
    .line 41
    const-string v2, "0"

    .line 42
    .line 43
    const-string v3, "5"

    .line 44
    .line 45
    const-string v4, "10"

    .line 46
    .line 47
    const-string v5, "30"

    .line 48
    .line 49
    const-string v6, "50"

    .line 50
    .line 51
    const-string v7, "60"

    .line 52
    .line 53
    const-string v8, "80"

    .line 54
    .line 55
    const-string v9, "100"

    .line 56
    .line 57
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mHelpMoneies:[Ljava/lang/String;

    .line 62
    .line 63
    iput v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mLastItem:I

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 67
    .line 68
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/SharePostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mLastItem:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/SharePostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mLastItem:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/SharePostsActivity;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mHelpMoneies:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/SharePostsActivity;)Landroid/widget/SimpleAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mHelpMoneyAdapter:Landroid/widget/SimpleAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/SharePostsActivity;Landroid/widget/SimpleAdapter;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/SharePostsActivity;->changeRadioImg(Landroid/widget/SimpleAdapter;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
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

.method private changeRadioImg(Landroid/widget/SimpleAdapter;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "selectedItem",
            "on"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v1, "itemRadioImg"

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    const p3, 0x7f081136

    .line 12
    .line 13
    .line 14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const p3, 0x7f081135

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/SharePostsActivity;->setHelpMoney(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private checkUserLogin()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private deleteTempPic()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->getImages()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lnet/bither/util/b;->k(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/Hashtable;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    .line 69
    .line 70
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/Hashtable;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v1, v0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    .line 80
    .line 81
    :cond_3
    :goto_2
    return-void
.end method

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
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

.method private getRadioButtonAdapter(I[Ljava/lang/String;)Landroid/widget/SimpleAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radioImage",
            "radioNameArray"
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p2

    .line 8
    const-string v3, "itemRadioText"

    .line 9
    .line 10
    const-string v4, "itemRadioImg"

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    aget-object v4, p2, v0

    .line 27
    .line 28
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Landroid/widget/SimpleAdapter;

    .line 38
    .line 39
    const p2, 0x7f0d06de

    .line 40
    .line 41
    .line 42
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const v0, 0x7f0a0998

    .line 47
    .line 48
    .line 49
    const v1, 0x7f0a0999

    .line 50
    .line 51
    .line 52
    filled-new-array {v0, v1}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    move-object v0, p1

    .line 57
    move-object v1, p0

    .line 58
    move v3, p2

    .line 59
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method private initHListView()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SharePostsActivity$i;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SharePostsActivity$i;->d(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 21
    .line 22
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$d;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SharePostsActivity$d;-><init>(Lcom/join/mgps/activity/SharePostsActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SharePostsActivity$i;->g(Lcom/join/mgps/activity/SharePostsActivity$i$d;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private initViews()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->layout_title:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u53d1\u5e16"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->release:Landroid/widget/Button;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/dialog/y0;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y0;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 26
    .line 27
    new-instance v3, Lcom/join/mgps/activity/SharePostsActivity$c;

    .line 28
    .line 29
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/SharePostsActivity$c;-><init>(Lcom/join/mgps/activity/SharePostsActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/join/mgps/Util/s0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/s0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v3, p0, Lcom/join/mgps/activity/SharePostsActivity;->mForumObserver:Lcom/join/mgps/Util/r0$j;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/r0;->b(Lcom/join/mgps/Util/r0$j;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Landroid/text/SpannableString;

    .line 45
    .line 46
    const-string v3, "\u6bcf\u6b21\u6700\u591a\u53ef\u4ee5\u5206\u4eab9\u5f20\u56fe"

    .line 47
    .line 48
    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 52
    .line 53
    const-string v4, "#808080"

    .line 54
    .line 55
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const/16 v4, 0x21

    .line 63
    .line 64
    const/16 v5, 0x8

    .line 65
    .line 66
    const/16 v6, 0x9

    .line 67
    .line 68
    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/join/mgps/activity/SharePostsActivity;->footer_tip:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    new-array v0, v2, [Landroid/text/InputFilter;

    .line 77
    .line 78
    new-instance v2, Lcom/join/mgps/activity/SharePostsActivity$h;

    .line 79
    .line 80
    const/16 v3, 0x28

    .line 81
    .line 82
    invoke-direct {v2, p0, v3}, Lcom/join/mgps/activity/SharePostsActivity$h;-><init>(Lcom/join/mgps/activity/SharePostsActivity;I)V

    .line 83
    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->posts_title:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity;->initHListView()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/activity/SharePostsActivity;->initHelpView()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private isEmptyPosts()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->posts_content:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private preparePostsInfo()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->p0(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 33
    .line 34
    iget v2, p0, Lcom/join/mgps/activity/SharePostsActivity;->fid:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setFid(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->o0(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setUid(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setToken(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 54
    .line 55
    iget v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->rsid:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setRsid(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->posts_title:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setSubject(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->posts_content:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setMessage(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setImages(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    return v0

    .line 99
    :cond_2
    const v0, 0x7f12031e

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 110
    return v0
.end method

.method private setTextSpan(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "s",
            "spanStr",
            "color"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    add-int/2addr p3, p2

    .line 47
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 48
    .line 49
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p4

    .line 53
    invoke-direct {v1, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const/16 p4, 0x21

    .line 57
    .line 58
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private showPromptDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/x0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/x0;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->b(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 18
    .line 19
    const-string v1, "\u653e\u5f03\u53d1\u5e03"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->f(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 25
    .line 26
    const-string v1, "\u7ee7\u7eed\u7f16\u8f91"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 32
    .line 33
    const-string v1, "\u4f60\u8981\u653e\u5f03\u53d1\u5e03\u5417\uff1f"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/x0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$f;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SharePostsActivity$f;-><init>(Lcom/join/mgps/activity/SharePostsActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->c(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$e;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SharePostsActivity$e;-><init>(Lcom/join/mgps/activity/SharePostsActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x0;->e(Landroid/view/View$OnClickListener;)Lcom/join/mgps/dialog/x0;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method


# virtual methods
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
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "key_from_posts_submit_request"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "key_from_class"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sput-object v1, Lcom/join/mgps/activity/SharePostsActivity;->VALUE_FROM_CLASS:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-class v2, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->getFid()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->fid:I

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    new-instance v0, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 73
    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity;->initViews()V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity;->checkUserLogin()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->fid:I

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method back_image()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->posts_title:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->posts_content:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    if-le v0, v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity;->showPromptDialog()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method forumPostsSubmit()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-array v3, v0, [Ljava/lang/String;

    .line 31
    .line 32
    const-string v4, "release-->images send to server - start request.."

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    aput-object v4, v3, v5

    .line 36
    .line 37
    invoke-static {v3}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/join/mgps/activity/SharePostsActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 41
    .line 42
    invoke-interface {v3, v1}, Lcom/join/mgps/rpc/i;->y0(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-array v3, v0, [Ljava/lang/String;

    .line 47
    .line 48
    const-string v4, "release-->images send to server - response received."

    .line 49
    .line 50
    aput-object v4, v3, v5

    .line 51
    .line 52
    invoke-static {v3}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    const-string v3, "\u53d1\u5e16\u5931\u8d25"

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/16 v6, 0x2c2

    .line 64
    .line 65
    if-ne v4, v6, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const/16 v6, 0x193

    .line 86
    .line 87
    if-ne v4, v6, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError_message()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const/16 v6, 0x194

    .line 105
    .line 106
    if-ne v4, v6, :cond_3

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError_message()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goVip(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;->isResult()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_5

    .line 139
    .line 140
    new-array v1, v0, [Ljava/lang/String;

    .line 141
    .line 142
    const-string v3, "release-->images send to server - success"

    .line 143
    .line 144
    aput-object v3, v1, v5

    .line 145
    .line 146
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;->getReward_money()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-lez v1, :cond_4

    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;->getReward_money()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;->getReward_exp()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {p0, v1, v3}, Lcom/join/mgps/activity/SharePostsActivity;->showRewardToast(II)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    const-string v1, "\u53d1\u5e16\u6210\u529f"

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity;->deleteTempPic()V

    .line 173
    .line 174
    .line 175
    invoke-static {p0}, Lcom/join/mgps/Util/s0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/s0;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/r0;->e1(Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_5
    new-array v2, v0, [Ljava/lang/String;

    .line 184
    .line 185
    const-string v4, "release-->images send to server - failed"

    .line 186
    .line 187
    aput-object v4, v2, v5

    .line 188
    .line 189
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-static {p0, v1}, Lcom/join/mgps/Util/r0;->l(Landroid/content/Context;I)I

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_6
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :catch_0
    move-exception v1

    .line 214
    const-string v2, "release-->images send to server - try/catch exception"

    .line 215
    .line 216
    filled-new-array {v2}, [Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    :goto_1
    return-void
.end method

.method public goMyAlbumActivity4PickPic()V
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
    iget-object v2, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

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

.method initHelpView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->getHelp()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->footer_tip:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->helpContainer:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

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
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    new-array v4, v3, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    aput-object v5, v4, v2

    .line 51
    .line 52
    const v2, 0x7f1203e9

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v4, p0, Lcom/join/mgps/activity/SharePostsActivity;->myRemainHelpMoney:Landroid/widget/TextView;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ""

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "#f47500"

    .line 79
    .line 80
    invoke-direct {p0, v4, v2, v0, v1}, Lcom/join/mgps/activity/SharePostsActivity;->setTextSpan(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    const v0, 0x7f081135

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mHelpMoneies:[Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/activity/SharePostsActivity;->getRadioButtonAdapter(I[Ljava/lang/String;)Landroid/widget/SimpleAdapter;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mHelpMoneyAdapter:Landroid/widget/SimpleAdapter;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->helpGrid:Landroid/widget/GridView;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->helpGrid:Landroid/widget/GridView;

    .line 100
    .line 101
    new-instance v1, Lcom/join/mgps/activity/SharePostsActivity$g;

    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SharePostsActivity$g;-><init>(Lcom/join/mgps/activity/SharePostsActivity;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    .line 108
    .line 109
    iput v3, p0, Lcom/join/mgps/activity/SharePostsActivity;->mLastItem:I

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mHelpMoneyAdapter:Landroid/widget/SimpleAdapter;

    .line 112
    .line 113
    invoke-direct {p0, v0, v3, v3}, Lcom/join/mgps/activity/SharePostsActivity;->changeRadioImg(Landroid/widget/SimpleAdapter;IZ)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->footer_tip:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->helpContainer:Landroid/widget/LinearLayout;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
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
    invoke-super {p0, p1, p2, p3}, Lcom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x100

    .line 5
    .line 6
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 25
    .line 26
    invoke-direct {p0, p3}, Lcom/join/mgps/activity/SharePostsActivity;->getImagesFromAlbum(Landroid/content/Intent;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SharePostsActivity$i;->d(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mPicsAdapter:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SharePostsActivity$i;->e(Z)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SharePostsActivity;->back_image()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumDialog:Lcom/join/mgps/dialog/x0;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dialog/y0;->dismiss()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iput-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/join/mgps/Util/s0;->I1(Landroid/content/Context;)Lcom/join/mgps/Util/s0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/SharePostsActivity;->mForumObserver:Lcom/join/mgps/Util/r0$j;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/r0;->j1(Lcom/join/mgps/Util/r0$j;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-ge v2, v3, :cond_3

    .line 58
    .line 59
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v5, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3, v4, v5, v0}, Lnet/bither/util/b;->j(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mSelectedImages:Ljava/util/List;

    .line 91
    .line 92
    :cond_4
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lnet/bither/util/b;->y(Lnet/bither/util/b$e;)V

    .line 99
    .line 100
    .line 101
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->mCompressListener:Lnet/bither/util/b$e;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lnet/bither/util/b;->e(Lnet/bither/util/b$e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method release()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const-string v0, "release-->release button pressed."

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity;->isEmptyPosts()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "\u5e16\u5b50\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity;->preparePostsInfo()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 41
    .line 42
    .line 43
    iput v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->toggleSendOn:I

    .line 44
    .line 45
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lnet/bither/util/b;->x()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iput v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->toggleSendOn:I

    .line 54
    .line 55
    new-array v2, v0, [Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "release-->network connect failed."

    .line 58
    .line 59
    aput-object v3, v2, v1

    .line 60
    .line 61
    invoke-static {v2}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const v2, 0x7f12031e

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    iput v1, p0, Lcom/join/mgps/activity/SharePostsActivity;->toggleSendOn:I

    .line 77
    .line 78
    const-string v1, "release-->try/catch exception."

    .line 79
    .line 80
    filled-new-array {v1}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    const-string v0, "release-->release method finished."

    .line 94
    .line 95
    filled-new-array {v0}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method setHelpMoney(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->mHelpMoneies:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->setHelp_money(I)V

    .line 12
    .line 13
    .line 14
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
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showRewardToast(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "money",
            "exp"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method showSendPromptDialog(I)V
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/dialog/y0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y0;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumLoadingDialog:Lcom/join/mgps/dialog/y0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/y0;->c(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance p1, Lcom/join/mgps/dto/ForumBean;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->forumPostsSubmitRequestBean:Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsSubmitRequestBean;->getFid()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/join/mgps/Util/r0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    .line 36
    .line 37
    .line 38
    :goto_0
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
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
