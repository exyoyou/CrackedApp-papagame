.class public final Lcom/join/mgps/activity/MYAccountDetialActivity_;
.super Lcom/join/mgps/activity/MYAccountDetialActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;
    }
.end annotation


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->updateName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUserInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->error(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MYAccountDetialActivity;->bindThirdAccount(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MYAccountDetialActivity;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/MYAccountDetialActivity_;Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUserInfoSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->loginOutBack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->updatedata()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method bindThirdAccount(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nique_id",
            "type"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/MYAccountDetialActivity_$s;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/MYAccountDetialActivity_$s;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method checkUserInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MYAccountDetialActivity_$r;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MYAccountDetialActivity_$r;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method checkUserInfoSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "accountData"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_$n;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method dialogLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$l;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_$h;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error_msg",
            "nickname"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$i;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MYAccountDetialActivity_$i;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method loginOutBack()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MYAccountDetialActivity_$p;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MYAccountDetialActivity_$p;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0760

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1790

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->title_textview:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a0e59

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->levelTv:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a10d8

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->name:Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0a11d9

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->pabi:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a1c0c

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->xingbie:Landroid/widget/TextView;

    .line 55
    .line 56
    const v0, 0x7f0a05ba

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->expTv:Landroid/widget/TextView;

    .line 66
    .line 67
    const v0, 0x7f0a0857

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->iconImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    const v0, 0x7f0a0067

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountNameTv:Landroid/widget/TextView;

    .line 88
    .line 89
    const v0, 0x7f0a124d

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->phoneTv:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a121f

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->passwordTv:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0a07f6

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWechat:Landroid/widget/TextView;

    .line 121
    .line 122
    const v0, 0x7f0a07f5

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWebo:Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0a07f4

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/TextView;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindQQ:Landroid/widget/TextView;

    .line 143
    .line 144
    const v0, 0x7f0a0ec2

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/LinearLayout;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->llRealName:Landroid/widget/LinearLayout;

    .line 154
    .line 155
    const v0, 0x7f0a1a06

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->tv_rank:Landroid/widget/TextView;

    .line 165
    .line 166
    const v0, 0x7f0a0858

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const v1, 0x7f0a0066

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const v2, 0x7f0a11db

    .line 181
    .line 182
    .line 183
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const v3, 0x7f0a1c0d

    .line 188
    .line 189
    .line 190
    invoke-interface {p1, v3}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    const v4, 0x7f0a10dc

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, v4}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    const v5, 0x7f0a121d

    .line 202
    .line 203
    .line 204
    invoke-interface {p1, v5}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    const v6, 0x7f0a1247

    .line 209
    .line 210
    .line 211
    invoke-interface {p1, v6}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    const v7, 0x7f0a0e57

    .line 216
    .line 217
    .line 218
    invoke-interface {p1, v7}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    const v8, 0x7f0a1ae0

    .line 223
    .line 224
    .line 225
    invoke-interface {p1, v8}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    const v9, 0x7f0a05b7

    .line 230
    .line 231
    .line 232
    invoke-interface {p1, v9}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    const v10, 0x7f0a014e

    .line 237
    .line 238
    .line 239
    invoke-interface {p1, v10}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    const v11, 0x7f0a020a

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v11}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    const v12, 0x7f0a020b

    .line 251
    .line 252
    .line 253
    invoke-interface {p1, v12}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    const v13, 0x7f0a0209

    .line 258
    .line 259
    .line 260
    invoke-interface {p1, v13}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    if-eqz v0, :cond_0

    .line 265
    .line 266
    new-instance v13, Lcom/join/mgps/activity/MYAccountDetialActivity_$k;

    .line 267
    .line 268
    invoke-direct {v13, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$k;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    :cond_0
    if-eqz v1, :cond_1

    .line 275
    .line 276
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$t;

    .line 277
    .line 278
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$t;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    :cond_1
    if-eqz v2, :cond_2

    .line 285
    .line 286
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$u;

    .line 287
    .line 288
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$u;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    :cond_2
    if-eqz v3, :cond_3

    .line 295
    .line 296
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$v;

    .line 297
    .line 298
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$v;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    :cond_3
    if-eqz v4, :cond_4

    .line 305
    .line 306
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$w;

    .line 307
    .line 308
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$w;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    .line 313
    .line 314
    :cond_4
    if-eqz v5, :cond_5

    .line 315
    .line 316
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$x;

    .line 317
    .line 318
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$x;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    .line 323
    .line 324
    :cond_5
    if-eqz v6, :cond_6

    .line 325
    .line 326
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$y;

    .line 327
    .line 328
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$y;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    .line 333
    .line 334
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->llRealName:Landroid/widget/LinearLayout;

    .line 335
    .line 336
    if-eqz v0, :cond_7

    .line 337
    .line 338
    new-instance v1, Lcom/join/mgps/activity/MYAccountDetialActivity_$z;

    .line 339
    .line 340
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$z;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    .line 345
    .line 346
    :cond_7
    if-eqz v7, :cond_8

    .line 347
    .line 348
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;

    .line 349
    .line 350
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$a0;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    :cond_8
    if-eqz v8, :cond_9

    .line 357
    .line 358
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$a;

    .line 359
    .line 360
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$a;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    .line 365
    .line 366
    :cond_9
    if-eqz v9, :cond_a

    .line 367
    .line 368
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$b;

    .line 369
    .line 370
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$b;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .line 375
    .line 376
    :cond_a
    if-eqz v10, :cond_b

    .line 377
    .line 378
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$c;

    .line 379
    .line 380
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$c;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    .line 385
    .line 386
    :cond_b
    if-eqz v11, :cond_c

    .line 387
    .line 388
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$d;

    .line 389
    .line 390
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$d;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    .line 395
    .line 396
    :cond_c
    if-eqz v12, :cond_d

    .line 397
    .line 398
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$e;

    .line 399
    .line 400
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$e;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    .line 405
    .line 406
    :cond_d
    if-eqz p1, :cond_e

    .line 407
    .line 408
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$f;

    .line 409
    .line 410
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$f;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    :cond_e
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->afterview()V

    .line 417
    .line 418
    .line 419
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$m;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_$o;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error_msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity_$j;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updateName()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountDetialActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity_$g;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method updatedata()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MYAccountDetialActivity_$q;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MYAccountDetialActivity_$q;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
