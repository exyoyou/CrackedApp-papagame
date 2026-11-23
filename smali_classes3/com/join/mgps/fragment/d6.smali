.class public Lcom/join/mgps/fragment/d6;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/d6$h;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02e4
.end annotation


# instance fields
.field A:Lcom/join/mgps/rpc/i;

.field c:Lcom/facebook/drawee/view/SimpleDraweeView;
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

.field f:Landroid/widget/ImageView;
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

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Lcom/join/mgps/fragment/d6$h;

.field q:Landroid/view/View;

.field private r:Lcom/wufan/user/service/protobuf/UserInfo;

.field private s:Landroid/app/Activity;

.field t:Lcom/join/mgps/rpc/b;

.field private u:Lq/rorbin/badgeview/a;

.field v:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field w:Lcom/join/mgps/rpc/e;

.field x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field volatile z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/d6;->q:Landroid/view/View;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/fragment/d6;->x:Z

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 22
    .line 23
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/d6;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/d6;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/d6;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method private Q(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "datas",
            "num"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_0

    .line 3
    .line 4
    new-instance v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setPlaceHolder(Z)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private addDivider(Ljava/util/List;)V
    .locals 1
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
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private isLogined()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showRedPoint(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    if-lez v0, :cond_0

    .line 40
    .line 41
    const-wide/16 v1, 0xc8

    .line 42
    .line 43
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->u:Lq/rorbin/badgeview/a;

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    new-instance v1, Lq/rorbin/badgeview/QBadgeView;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Lq/rorbin/badgeview/QBadgeView;->n(Landroid/view/View;)Lq/rorbin/badgeview/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->g(I)Lq/rorbin/badgeview/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/high16 v0, -0x10000

    .line 66
    .line 67
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->d(I)Lq/rorbin/badgeview/a;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const v1, 0x7f07133d

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-float v0, v0

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-interface {p1, v0, v1}, Lq/rorbin/badgeview/a;->w(FZ)Lq/rorbin/badgeview/a;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const v0, 0x800055

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->u(I)Lq/rorbin/badgeview/a;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v0, -0x1

    .line 96
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->s(I)Lq/rorbin/badgeview/a;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/join/mgps/fragment/d6;->u:Lq/rorbin/badgeview/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    :cond_0
    :goto_0
    return-void
.end method

.method private testAddCommentSelf(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstGroups"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method R(Lcom/join/mgps/dto/UserCenterBean;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userCenterBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/UserCenterBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
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
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getFirst_group()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    rem-int/lit8 v1, v1, 0x3

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    rsub-int/lit8 v1, v1, 0x3

    .line 25
    .line 26
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/fragment/d6;->Q(Ljava/util/List;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/d6;->addDivider(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getSecond_group()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    rem-int/lit8 v1, v1, 0x3

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    rsub-int/lit8 v1, v1, 0x3

    .line 51
    .line 52
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/fragment/d6;->Q(Ljava/util/List;I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/d6;->addDivider(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    rem-int/lit8 p1, p1, 0x3

    .line 80
    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    rsub-int/lit8 p1, p1, 0x3

    .line 85
    .line 86
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/fragment/d6;->Q(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    :cond_5
    return-object v0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/d6;->w:Lcom/join/mgps/rpc/e;

    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/d6;->A:Lcom/join/mgps/rpc/i;

    .line 19
    .line 20
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->v:Lcom/join/mgps/pref/PrefDef_;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    const-class v2, Lcom/join/mgps/dto/UserCenterBean;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/join/mgps/dto/UserCenterBean;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d6;->R(Lcom/join/mgps/dto/UserCenterBean;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    :cond_0
    new-instance v0, Lcom/join/mgps/fragment/d6$h;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/fragment/d6$h;-><init>(Lcom/join/mgps/fragment/d6;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/fragment/d6;->p:Lcom/join/mgps/fragment/d6$h;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->o:Landroid/widget/GridView;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->o:Landroid/widget/GridView;

    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/fragment/d6$a;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d6$a;-><init>(Lcom/join/mgps/fragment/d6;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->p:Lcom/join/mgps/fragment/d6$h;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->pullMyProfileInfo()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->showNotifUi()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method calculateVIPExpTime()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    mul-long v0, v0, v2

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long v4, v0, v2

    .line 16
    .line 17
    const-wide/32 v6, 0x5265c00

    .line 18
    .line 19
    .line 20
    div-long/2addr v4, v6

    .line 21
    iget-object v6, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    .line 29
    cmp-long v7, v0, v2

    .line 30
    .line 31
    if-lez v7, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 34
    .line 35
    const/high16 v3, 0x40000000    # 2.0f

    .line 36
    .line 37
    invoke-static {v2, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 42
    .line 43
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->f:Landroid/widget/ImageView;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 55
    .line 56
    const-string v6, "#FFCC9C"

    .line 57
    .line 58
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->s(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v6, "\u5230\u671f"

    .line 78
    .line 79
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :try_start_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->w(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    nop

    .line 96
    :goto_0
    const-wide/16 v0, 0x1e

    .line 97
    .line 98
    cmp-long v6, v4, v0

    .line 99
    .line 100
    if-gtz v6, :cond_0

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, "\n<font color=#FFFFFF>\u5269\u4f59"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, "\u5929</font>"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_0
    const/16 v0, 0x7f5

    .line 138
    .line 139
    if-le v3, v0, :cond_1

    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 142
    .line 143
    const-string v1, "\u7ec8\u751f\u4f1a\u5458"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 156
    .line 157
    const/high16 v1, 0x41300000    # 11.0f

    .line 158
    .line 159
    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->f:Landroid/widget/ImageView;

    .line 171
    .line 172
    const/16 v1, 0x8

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 178
    .line 179
    const-string v1, "#FFD4A9"

    .line 180
    .line 181
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 189
    .line 190
    const-string v1, "\u53bb\u5f00\u901a"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->n:Landroid/widget/LinearLayout;

    .line 196
    .line 197
    new-instance v1, Lcom/join/mgps/fragment/d6$g;

    .line 198
    .line 199
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d6$g;-><init>(Lcom/join/mgps/fragment/d6;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    :goto_1
    return-void
.end method

.method changeMgState(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "tag_id"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

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
    iput-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->isOfficialAccount()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestMsgState(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/join/mgps/fragment/d6;->w:Lcom/join/mgps/rpc/e;

    .line 48
    .line 49
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/e;->C(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/util/List;

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/join/mgps/dto/ResultValbean;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultValbean;->isVal()Z

    .line 71
    .line 72
    .line 73
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const-string p2, "UserCenter"

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    :try_start_1
    const-string p1, "changeMgState success"

    .line 79
    .line 80
    invoke-static {p2, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const-string p1, "changeMgState failure"

    .line 85
    .line 86
    invoke-static {p2, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_0
    return-void
.end method

.method createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setEmpty(Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method getUserInfo()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_9

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 33
    .line 34
    if-eqz v1, :cond_8

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_1
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->t:Lcom/join/mgps/rpc/b;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->i(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {v1, v3}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSVIPLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-virtual {v3, v4}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setVipLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getLive_total_charm()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    invoke-virtual {v3, v4}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setLiveTotalCharm(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-virtual {v3, v4}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsAnchor(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    invoke-virtual {v3, v4, v5}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setPapaMoney(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getGameTime()J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    invoke-virtual {v3, v4, v5}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setGameTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getSecretKey()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v3, v4}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSecretKey(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    if-eqz v3, :cond_2

    .line 194
    .line 195
    invoke-static {}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->newBuilder()Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitle()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v3, v4}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->setBattleTitle(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getLevel()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v3, v4}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->setLevel(I)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitleColor()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v3, v4}, Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;->setBattleTitleColor(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v3}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setMemberTitle(Lcom/wufan/user/service/protobuf/MemberTitleInfo$b;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 229
    .line 230
    .line 231
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_3

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 246
    .line 247
    .line 248
    :cond_3
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 253
    .line 254
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 255
    .line 256
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 261
    .line 262
    iget-object v3, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 263
    .line 264
    invoke-virtual {v0, v1, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->refreshViews()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->getViewConfigs()V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    const/16 v1, 0x2bd

    .line 281
    .line 282
    if-ne v0, v1, :cond_6

    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->tokenFailure()V

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :cond_6
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->getViewConfigs()V

    .line 291
    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_7
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->getViewConfigs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .line 298
    .line 299
    goto :goto_1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 302
    .line 303
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->getViewConfigs()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    .line 308
    .line 309
    goto :goto_1

    .line 310
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->touristLogin()V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_9
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V

    .line 317
    .line 318
    .line 319
    :goto_1
    return-void
.end method

.method getViewConfigs()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    iget-boolean v2, p0, Lcom/join/mgps/fragment/d6;->x:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v2, 0x1

    .line 35
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->x:Z

    .line 36
    .line 37
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v4, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v5, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 54
    .line 55
    invoke-static {v5}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v2, 0x0

    .line 63
    :goto_0
    invoke-virtual {v1, v3, v4, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getUserCenterViewConfigs(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->w:Lcom/join/mgps/rpc/e;

    .line 68
    .line 69
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/e;->q1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/16 v3, 0x258

    .line 80
    .line 81
    if-ne v2, v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->v:Lcom/join/mgps/pref/PrefDef_;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigs()Lorg/androidannotations/api/sharedpreferences/p;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V

    .line 109
    .line 110
    .line 111
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/fragment/d6;->x:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    :goto_2
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    iput-boolean v0, p0, Lcom/join/mgps/fragment/d6;->x:Z

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V

    .line 126
    .line 127
    .line 128
    :goto_3
    return-void
.end method

.method goLogin()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jumpInfoBean",
            "linkType"
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
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getTpl_type()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method hideRedPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->u:Lq/rorbin/badgeview/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method isActivityFinish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

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
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method isOfficialAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    xor-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    return v0
.end method

.method ll_copper()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
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
    sget-object v1, Lcom/join/mgps/rpc/h;->s:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method loadViewConfigsFromLocal()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->v:Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigs()Lorg/androidannotations/api/sharedpreferences/p;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const-class v2, Lcom/join/mgps/dto/UserCenterBean;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/mgps/dto/UserCenterBean;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 33
    .line 34
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d6;->R(Lcom/join/mgps/dto/UserCenterBean;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->p:Lcom/join/mgps/fragment/d6$h;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->pullMyProfileInfo()V

    .line 55
    .line 56
    .line 57
    monitor-exit v1

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "UserCenter"

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "loadViewConfigsFromLocal exception:"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->showNotifUi()V

    .line 91
    .line 92
    .line 93
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
    iput-object p1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/fragment/d6;->t:Lcom/join/mgps/rpc/b;

    .line 13
    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 13
    .line 14
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jPushNotifEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->pullMyProfileInfo()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
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

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->refreshUserCenter()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    sput v0, Lcom/MApplication;->T:I

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->hideRedPoint()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->showNotifUi()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method pullMyProfileInfo()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

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
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->A:Lcom/join/mgps/rpc/i;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v7, ""

    .line 41
    .line 42
    invoke-interface/range {v2 .. v7}, Lcom/join/mgps/rpc/i;->h(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getUser_info()Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->getUnread_message()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d6;->updateAdapterByNewMsgCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    return-void
.end method

.method public refreshUserCenter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->refreshViews()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->getUserInfo()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method refreshViews()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->e:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "\u672a\u767b\u5f55"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 30
    .line 31
    new-instance v1, Lcom/facebook/drawee/drawable/o;

    .line 32
    .line 33
    const-string v2, "#99BDC9"

    .line 34
    .line 35
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-direct {v1, v2}, Lcom/facebook/drawee/drawable/o;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->z(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    const v1, 0x7f081323

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 54
    .line 55
    const-string v1, ""

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->i:Landroid/widget/TextView;

    .line 61
    .line 62
    const-string v2, "--"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->k:Landroid/widget/TextView;

    .line 73
    .line 74
    const-string v2, "---"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->g:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->g:Landroid/widget/TextView;

    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->n:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->m:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iget-object v4, p0, Lcom/join/mgps/fragment/d6;->e:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 116
    .line 117
    iget-object v4, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/l;->u(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const-string v4, "\u53bb\u5f00\u901a"

    .line 133
    .line 134
    const-string v5, "#FFD4A9"

    .line 135
    .line 136
    if-eqz v0, :cond_1

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->calculateVIPExpTime()V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    .line 150
    iget-object v6, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 151
    .line 152
    const/high16 v7, 0x41300000    # 11.0f

    .line 153
    .line 154
    invoke-static {v6, v7}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 159
    .line 160
    iget-object v6, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->j:Landroid/widget/TextView;

    .line 175
    .line 176
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->f:Landroid/widget/ImageView;

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    const/4 v2, 0x0

    .line 191
    if-eqz v0, :cond_2

    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    .line 201
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getBattleTitle()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_2

    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->g:Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->g:Landroid/widget/TextView;

    .line 223
    .line 224
    iget-object v6, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 225
    .line 226
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getBattleTitle()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    const/4 v6, 0x2

    .line 244
    const-string v7, "#FFFFFF"

    .line 245
    .line 246
    if-ne v0, v6, :cond_3

    .line 247
    .line 248
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 249
    .line 250
    const-string v2, "#F47500"

    .line 251
    .line 252
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 260
    .line 261
    const-string v2, "\u5b8c\u5584\u8d44\u6599 / \u9886\u793c\u5305 / \u62a2\u7ea2\u5305"

    .line 262
    .line 263
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 267
    .line 268
    const/high16 v2, 0x41500000    # 13.0f

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 274
    .line 275
    const v2, 0x7f08008a

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 282
    .line 283
    const/high16 v2, 0x40a00000    # 5.0f

    .line 284
    .line 285
    invoke-static {v0, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 290
    .line 291
    const/high16 v3, 0x41880000    # 17.0f

    .line 292
    .line 293
    invoke-static {v2, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    iget-object v3, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 298
    .line 299
    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 300
    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 304
    .line 305
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 309
    .line 310
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 314
    .line 315
    const/high16 v2, 0x41600000    # 14.0f

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->h:Landroid/widget/TextView;

    .line 330
    .line 331
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 332
    .line 333
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->i:Landroid/widget/TextView;

    .line 341
    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    iget-object v3, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 348
    .line 349
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 350
    .line 351
    .line 352
    move-result-wide v8

    .line 353
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-nez v0, :cond_4

    .line 373
    .line 374
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->k:Landroid/widget/TextView;

    .line 375
    .line 376
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->k:Landroid/widget/TextView;

    .line 384
    .line 385
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->k:Landroid/widget/TextView;

    .line 390
    .line 391
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    .line 397
    .line 398
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->k:Landroid/widget/TextView;

    .line 399
    .line 400
    const v1, 0x7f080238

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 404
    .line 405
    .line 406
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->k:Landroid/widget/TextView;

    .line 407
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v2, "SVIP"

    .line 414
    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 419
    .line 420
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .line 433
    .line 434
    goto :goto_2

    .line 435
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->f:Landroid/widget/ImageView;

    .line 436
    .line 437
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->n:Landroid/widget/LinearLayout;

    .line 441
    .line 442
    new-instance v1, Lcom/join/mgps/fragment/d6$b;

    .line 443
    .line 444
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d6$b;-><init>(Lcom/join/mgps/fragment/d6;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->m:Landroid/widget/LinearLayout;

    .line 451
    .line 452
    new-instance v1, Lcom/join/mgps/fragment/d6$c;

    .line 453
    .line 454
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d6$c;-><init>(Lcom/join/mgps/fragment/d6;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    .line 459
    .line 460
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 461
    .line 462
    new-instance v1, Lcom/join/mgps/fragment/d6$d;

    .line 463
    .line 464
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d6$d;-><init>(Lcom/join/mgps/fragment/d6;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->d:Landroid/widget/ImageView;

    .line 471
    .line 472
    new-instance v1, Lcom/join/mgps/fragment/d6$e;

    .line 473
    .line 474
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d6$e;-><init>(Lcom/join/mgps/fragment/d6;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    .line 479
    .line 480
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->l:Landroid/widget/LinearLayout;

    .line 481
    .line 482
    new-instance v1, Lcom/join/mgps/fragment/d6$f;

    .line 483
    .line 484
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d6$f;-><init>(Lcom/join/mgps/fragment/d6;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    .line 489
    .line 490
    return-void
.end method

.method public showNotif()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->showNotifUi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showNotifUi()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->p:Lcom/join/mgps/fragment/d6$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/MApplication;->T:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/d6$h;->a(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->p:Lcom/join/mgps/fragment/d6$h;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->o:Landroid/widget/GridView;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    instance-of v2, v2, Lcom/join/mgps/fragment/d6$h$a;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/join/mgps/fragment/d6$h$a;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 42
    .line 43
    const/16 v3, 0x8

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    sget v2, Lcom/MApplication;->T:I

    .line 61
    .line 62
    if-lez v2, :cond_3

    .line 63
    .line 64
    iget-object v2, v0, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    sget v1, Lcom/MApplication;->T:I

    .line 70
    .line 71
    const/16 v2, 0x63

    .line 72
    .line 73
    if-le v1, v2, :cond_2

    .line 74
    .line 75
    iget-object v0, v0, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 76
    .line 77
    const-string v1, "+99"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, v0, Lcom/join/mgps/fragment/d6$h$a;->f:Landroid/widget/TextView;

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, ""

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    sget v2, Lcom/MApplication;->T:I

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_3
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
            "info"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

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

.method tokenFailure()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const v0, 0x7f120382

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d6;->showToast(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->touristLogin()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method touristLogin()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/join/mgps/fragment/d6;->isLogined()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "2"

    .line 25
    .line 26
    iget-object v4, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-static {v4}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->v:Lcom/join/mgps/pref/PrefDef_;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->t:Lcom/join/mgps/rpc/b;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->I(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v0}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v3, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 127
    .line 128
    invoke-virtual {v1, v0, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->refreshViews()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->getUserInfo()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d6;->showToast(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/fragment/d6;->z:Z

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->loadViewConfigsFromLocal()V

    .line 178
    .line 179
    .line 180
    :goto_0
    return-void
.end method

.method updateAdapterByNewMsgCount(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_6

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v1, :cond_4

    .line 25
    .line 26
    iget-object v4, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/join/mgps/dto/JumpInfoBean;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v6, 0x3

    .line 68
    if-ne v4, v6, :cond_3

    .line 69
    .line 70
    const/16 v4, 0xf

    .line 71
    .line 72
    if-ne v5, v4, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 v3, -0x1

    .line 79
    :goto_2
    if-ltz v3, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/fragment/d6;->y:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setUnReadCount(I)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/d6;->p:Lcom/join/mgps/fragment/d6$h;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->showNotifUi()V

    .line 98
    .line 99
    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p1

    .line 105
    :cond_6
    :goto_3
    return-void
.end method

.method public updateInfo(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/d6;->s:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/join/mgps/fragment/d6;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d6;->refreshUserCenter()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
