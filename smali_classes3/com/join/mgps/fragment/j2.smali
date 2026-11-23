.class public Lcom/join/mgps/fragment/j2;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d029c
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field d:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroidx/constraintlayout/widget/Group;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Lcom/join/mgps/rpc/j;

.field private q:Lcom/join/mgps/dto/FriendCardBean;

.field r:Lcom/join/mgps/adapter/k0;

.field s:Landroid/app/Dialog;


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
    iput-object v0, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/j2;->l0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/mgps/fragment/j2;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/j2;->g0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/j2;->i0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/j2;->h0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/join/mgps/fragment/j2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/j2;->f0()V

    return-void
.end method

.method public static synthetic U(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/j2;->k0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/join/mgps/fragment/j2;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/j2;->e0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/join/mgps/fragment/j2;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/j2;->d0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/j2;->m0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/j2;->j0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->n0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic e0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->n0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic f0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->o:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->n:Landroidx/constraintlayout/widget/Group;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->l:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->m:Landroid/widget/GridView;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j2;->p0()V

    .line 43
    .line 44
    .line 45
    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic g0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->b0(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic h0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic i0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->n0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private synthetic k0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->n0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private synthetic l0(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->s0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic m0(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "0"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->Z(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method Z(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
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
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->p:Lcom/join/mgps/rpc/j;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->i(Lcom/join/mgps/dto/FriendReqBean;)Lcom/join/mgps/dto/ResponseModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->a0(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method a0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string p1, "\u5df2\u53d1\u9001\u597d\u53cb\u7533\u8bf7"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendCardBean;->setFriendStatus(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendCardBean;->setAddFriendStatus(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->t0(Lcom/join/mgps/dto/FriendCardBean;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->p()Lcom/join/mgps/rpc/impl/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/j2;->p:Lcom/join/mgps/rpc/j;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/mgps/adapter/k0;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Lcom/join/mgps/adapter/k0;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/join/mgps/fragment/j2;->r:Lcom/join/mgps/adapter/k0;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/fragment/j2;->m:Landroid/widget/GridView;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->o:Landroid/view/View;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->k:Landroid/view/View;

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->n:Landroidx/constraintlayout/widget/Group;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->l:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->m:Landroid/widget/GridView;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j2;->q0()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j2;->p0()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method b0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
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
    const-string v2, "uid"

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v2, "token"

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v0, "delUid"

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->p:Lcom/join/mgps/rpc/j;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->n(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->c0(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.method c0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string p1, "\u5df2\u5220\u9664\u597d\u53cb"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendCardBean;->setFriendStatus(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/FriendCardBean;->setAddFriendStatus(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->t0(Lcom/join/mgps/dto/FriendCardBean;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method close()V
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
    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/activity/FriendActivity;->pop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method n0(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
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
    const-string v2, "uid"

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v2, "token"

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v0, "likeUid"

    .line 41
    .line 42
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->p:Lcom/join/mgps/rpc/j;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->h(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/j2;->o0(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method o0(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u70b9\u8d5e\u6210\u529f"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendCardBean;->setLikeStatus(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendCardBean;->setLikeCount(I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/text/DecimalFormat;

    .line 24
    .line 25
    const-string v1, "###.0"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/j2;->h:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/16 v3, 0x2710

    .line 39
    .line 40
    if-ge v2, v3, :cond_0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ""

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    int-to-float v2, v2

    .line 73
    const/high16 v3, 0x3f800000    # 1.0f

    .line 74
    .line 75
    mul-float v2, v2, v3

    .line 76
    .line 77
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 78
    .line 79
    div-float/2addr v2, v3

    .line 80
    float-to-double v2, v2

    .line 81
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendCardBean;->isLikeStatus()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 97
    .line 98
    const v1, 0x7f080989

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 105
    .line 106
    new-instance v1, Lcom/join/mgps/fragment/z1;

    .line 107
    .line 108
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/z1;-><init>(Lcom/join/mgps/fragment/j2;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->h:Landroid/widget/TextView;

    .line 115
    .line 116
    new-instance v1, Lcom/join/mgps/fragment/a2;

    .line 117
    .line 118
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/a2;-><init>(Lcom/join/mgps/fragment/j2;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->h:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 137
    .line 138
    const v0, 0x7f080988

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    .line 143
    .line 144
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "ruid"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
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
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/fragment/b2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b2;-><init>(Lcom/join/mgps/fragment/j2;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/j2;->q0()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method p0()V
    .locals 4
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
    iget-object v1, p0, Lcom/join/mgps/fragment/j2;->p:Lcom/join/mgps/rpc/j;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v3, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v1, v2, v0, v3}, Lcom/join/mgps/rpc/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/mgps/dto/FriendCardBean;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/j2;->t0(Lcom/join/mgps/dto/FriendCardBean;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const v0, 0x7f1203b9

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method q0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->r:Lcom/join/mgps/adapter/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/k0;->b()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->r:Lcom/join/mgps/adapter/k0;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->l:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->e:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "---"

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->f:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->i:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v1, "--"

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->h:Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 61
    .line 62
    .line 63
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->k:Landroid/view/View;

    .line 64
    .line 65
    const/16 v1, 0x8

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_7
    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j2;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method s0(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
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
    iget-object v1, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 6
    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    new-instance v1, Landroid/app/Dialog;

    .line 10
    .line 11
    const v2, 0x7f130584

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 18
    .line 19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v3, 0x1c

    .line 22
    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v2, 0x7f0d05c2

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const v2, 0x7f0a0a22

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const v3, 0x7f0a1188

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const v4, 0x7f0a02f5

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const v5, 0x7f081172

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 86
    .line 87
    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const v5, 0x7f0714a7

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v5, 0x7f07141d

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v5, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const/4 v7, -0x1

    .line 123
    if-nez v1, :cond_1

    .line 124
    .line 125
    const/4 v1, -0x1

    .line 126
    :cond_1
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 127
    .line 128
    if-nez v0, :cond_2

    .line 129
    .line 130
    const/4 v0, -0x1

    .line 131
    :cond_2
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 132
    .line 133
    const/16 v0, 0x11

    .line 134
    .line 135
    invoke-virtual {v5, v0}, Landroid/view/Window;->setGravity(I)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lcom/join/mgps/fragment/c2;

    .line 139
    .line 140
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/c2;-><init>(Lcom/join/mgps/fragment/j2;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/join/mgps/fragment/d2;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/d2;-><init>(Lcom/join/mgps/fragment/j2;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcom/join/mgps/fragment/e2;

    .line 155
    .line 156
    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/e2;-><init>(Lcom/join/mgps/fragment/j2;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_4

    .line 169
    .line 170
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->s:Landroid/app/Dialog;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 173
    .line 174
    .line 175
    :cond_4
    return-void
.end method

.method t0(Lcom/join/mgps/dto/FriendCardBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_10

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_10

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->o:Landroid/view/View;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->n:Landroidx/constraintlayout/widget/Group;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->m:Landroid/widget/GridView;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput-object p1, p0, Lcom/join/mgps/fragment/j2;->q:Lcom/join/mgps/dto/FriendCardBean;

    .line 42
    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    .line 44
    .line 45
    const-string v3, "###.0"

    .line 46
    .line 47
    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/join/mgps/fragment/j2;->h:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/16 v5, 0x2710

    .line 57
    .line 58
    if-ge v4, v5, :cond_4

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, ""

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getLikeCount()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    int-to-float v5, v5

    .line 92
    const/high16 v6, 0x3f800000    # 1.0f

    .line 93
    .line 94
    mul-float v5, v5, v6

    .line 95
    .line 96
    const v6, 0x461c4000    # 10000.0f

    .line 97
    .line 98
    .line 99
    div-float/2addr v5, v6

    .line 100
    float-to-double v5, v5

    .line 101
    invoke-virtual {v0, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, "W"

    .line 109
    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->isLikeStatus()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    const/4 v3, 0x0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 128
    .line 129
    const v4, 0x7f080989

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 136
    .line 137
    new-instance v4, Lcom/join/mgps/fragment/f2;

    .line 138
    .line 139
    invoke-direct {v4, p0}, Lcom/join/mgps/fragment/f2;-><init>(Lcom/join/mgps/fragment/j2;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->h:Landroid/widget/TextView;

    .line 146
    .line 147
    new-instance v4, Lcom/join/mgps/fragment/g2;

    .line 148
    .line 149
    invoke-direct {v4, p0}, Lcom/join/mgps/fragment/g2;-><init>(Lcom/join/mgps/fragment/j2;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->h:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->j:Landroid/view/View;

    .line 167
    .line 168
    const v4, 0x7f080988

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    .line 173
    .line 174
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->isOnlineStatus()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->i:Landroid/widget/TextView;

    .line 181
    .line 182
    const-string v4, "\u5728\u7ebf"

    .line 183
    .line 184
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->i:Landroid/widget/TextView;

    .line 188
    .line 189
    const-string v4, "#FF03DA00"

    .line 190
    .line 191
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->i:Landroid/widget/TextView;

    .line 200
    .line 201
    const-string v4, "\u79bb\u7ebf"

    .line 202
    .line 203
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->i:Landroid/widget/TextView;

    .line 207
    .line 208
    const-string v4, "#FFC4C4C4"

    .line 209
    .line 210
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    .line 216
    .line 217
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getUserInfo()Lcom/join/mgps/dto/FriendBean;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_d

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getUserInfo()Lcom/join/mgps/dto/FriendBean;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v4, p0, Lcom/join/mgps/fragment/j2;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v4, p0, Lcom/join/mgps/fragment/j2;->e:Landroid/widget/TextView;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getMemberTitle()Lcom/join/mgps/dto/FriendBean$MemberTitle;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    if-eqz v4, :cond_7

    .line 250
    .line 251
    iget-object v4, p0, Lcom/join/mgps/fragment/j2;->f:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getMemberTitle()Lcom/join/mgps/dto/FriendBean$MemberTitle;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v5}, Lcom/join/mgps/dto/FriendBean$MemberTitle;->getBattleTitle()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    iget-object v4, p0, Lcom/join/mgps/fragment/j2;->f:Landroid/widget/TextView;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getMemberTitle()Lcom/join/mgps/dto/FriendBean$MemberTitle;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v5}, Lcom/join/mgps/dto/FriendBean$MemberTitle;->getBattleTitleColor()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    .line 280
    .line 281
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->isVip()Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_8

    .line 286
    .line 287
    iget-object v4, p0, Lcom/join/mgps/fragment/j2;->k:Landroid/view/View;

    .line 288
    .line 289
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_8
    iget-object v4, p0, Lcom/join/mgps/fragment/j2;->k:Landroid/view/View;

    .line 294
    .line 295
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    if-eqz v4, :cond_9

    .line 311
    .line 312
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    goto :goto_4

    .line 317
    :cond_9
    const/4 v4, 0x0

    .line 318
    :goto_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-ne v0, v4, :cond_a

    .line 323
    .line 324
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 331
    .line 332
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    :goto_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->isFriendStatus()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_b

    .line 340
    .line 341
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 342
    .line 343
    const-string v3, "\u5220\u9664\u597d\u53cb"

    .line 344
    .line 345
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 349
    .line 350
    const v3, 0x7f081140

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 357
    .line 358
    const-string v3, "#F5F5F5"

    .line 359
    .line 360
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 368
    .line 369
    new-instance v3, Lcom/join/mgps/fragment/h2;

    .line 370
    .line 371
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/h2;-><init>(Lcom/join/mgps/fragment/j2;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_b
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->isAddFriendStatus()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    const/4 v4, 0x1

    .line 383
    if-eqz v0, :cond_c

    .line 384
    .line 385
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 386
    .line 387
    const-string v3, "\u52a0\u597d\u53cb"

    .line 388
    .line 389
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 393
    .line 394
    const v3, 0x7f081138

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 401
    .line 402
    const-string v3, "#000000"

    .line 403
    .line 404
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    .line 410
    .line 411
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 412
    .line 413
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 414
    .line 415
    .line 416
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 417
    .line 418
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 419
    .line 420
    .line 421
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 422
    .line 423
    new-instance v3, Lcom/join/mgps/fragment/i2;

    .line 424
    .line 425
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/i2;-><init>(Lcom/join/mgps/fragment/j2;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    .line 430
    .line 431
    goto :goto_6

    .line 432
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 433
    .line 434
    const-string v5, "\u5df2\u53d1\u9001"

    .line 435
    .line 436
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 440
    .line 441
    const v5, 0x7f08114b

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 445
    .line 446
    .line 447
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 448
    .line 449
    const-string v5, "#BABABA"

    .line 450
    .line 451
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    .line 457
    .line 458
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 459
    .line 460
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 461
    .line 462
    .line 463
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 464
    .line 465
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 466
    .line 467
    .line 468
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->g:Landroid/widget/TextView;

    .line 469
    .line 470
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    .line 472
    .line 473
    :cond_d
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getPlayGameLevels()Ljava/util/List;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    if-eqz v0, :cond_f

    .line 478
    .line 479
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getPlayGameLevels()Ljava/util/List;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_e

    .line 488
    .line 489
    goto :goto_7

    .line 490
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->m:Landroid/widget/GridView;

    .line 491
    .line 492
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 493
    .line 494
    .line 495
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->l:Landroid/view/View;

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 498
    .line 499
    .line 500
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->r:Lcom/join/mgps/adapter/k0;

    .line 501
    .line 502
    invoke-virtual {v0}, Lcom/join/mgps/adapter/k0;->b()Ljava/util/List;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 507
    .line 508
    .line 509
    iget-object v0, p0, Lcom/join/mgps/fragment/j2;->r:Lcom/join/mgps/adapter/k0;

    .line 510
    .line 511
    invoke-virtual {v0}, Lcom/join/mgps/adapter/k0;->b()Ljava/util/List;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendCardBean;->getPlayGameLevels()Ljava/util/List;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 520
    .line 521
    .line 522
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->r:Lcom/join/mgps/adapter/k0;

    .line 523
    .line 524
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 525
    .line 526
    .line 527
    goto :goto_8

    .line 528
    :cond_f
    :goto_7
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->l:Landroid/view/View;

    .line 529
    .line 530
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    .line 532
    .line 533
    iget-object p1, p0, Lcom/join/mgps/fragment/j2;->m:Landroid/widget/GridView;

    .line 534
    .line 535
    const/4 v0, 0x4

    .line 536
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 537
    .line 538
    .line 539
    :cond_10
    :goto_8
    return-void
.end method
