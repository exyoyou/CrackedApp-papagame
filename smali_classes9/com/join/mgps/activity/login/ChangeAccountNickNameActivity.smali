.class public Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0115
.end annotation


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field close:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field dialogLoding:Landroid/app/Dialog;

.field nickName:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field nickNameBution:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private changeNickName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/ChangeNiknameRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/login/ChangeNiknameRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/ChangeNiknameRequest;->setDeviceId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/ChangeNiknameRequest;->setMac(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/login/ChangeNiknameRequest;->setNickName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/ChangeNiknameRequest;->setUid(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/ChangeNiknameRequest;->setUserToken(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/q;->z()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, "_"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/ChangeNiknameRequest;->setVersion(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->b()Lcom/join/mgps/rpc/impl/j;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/j;->a()Lb7/j;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1, v0}, Lb7/j;->b(Lcom/join/mgps/activity/login/ChangeNiknameRequest;)Lretrofit2/Call;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;

    .line 87
    .line 88
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$2;-><init>(Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private getChineseCount(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-gt v2, v3, :cond_0

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1
.end method

.method private getStringLength(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

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
    return p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->getChineseCount(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-int/2addr v0, p1

    .line 18
    return v0
.end method

.method private matchStringLength(Ljava/lang/String;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "min",
            "max"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->getStringLength(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    .line 7
    if-gt p1, p3, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->dialogLoding:Landroid/app/Dialog;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->showFinishPage(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 24
    .line 25
    .line 26
    iput-object p0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->context:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->nickName:Landroid/widget/EditText;

    .line 29
    .line 30
    new-instance v1, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity$1;-><init>(Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->nickName:Landroid/widget/EditText;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/t;->g(Landroid/widget/EditText;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/papa/sim/statistic/Event;->showNicknameEditPage:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method close()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method error(Ljava/lang/String;)V
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

.method nickNameBution()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->nickName:Landroid/widget/EditText;

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
    const/4 v1, 0x1

    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    invoke-direct {p0, v0, v1, v2}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->matchStringLength(Ljava/lang/String;II)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v0, "\u6635\u79f0\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51651\u81f324\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57\u6216\u6c49\u5b57"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->error(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const-string v0, "\u6635\u79f0\u4e0d\u80fd\u548c\u8d26\u53f7\u76f8\u540c"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->error(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v2, Lcom/papa/sim/statistic/Event;->submitNewNickname:Lcom/papa/sim/statistic/Event;

    .line 51
    .line 52
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 53
    .line 54
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->dialogLoding:Landroid/app/Dialog;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->changeNickName(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
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
    const/16 p3, 0x2711

    .line 2
    .line 3
    if-ne p1, p3, :cond_0

    .line 4
    .line 5
    if-ne p2, p3, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/l;->u(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->dialogLoding:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->u(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method showFinishPage(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "http"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    const v1, 0x7f081323

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->u(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->nickName:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->nickName:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->nickName:Landroid/widget/EditText;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/ChangeAccountNickNameActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method showKeyborad(Landroid/widget/EditText;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentEditText"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x258L
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 9
    .line 10
    .line 11
    const-string p1, "input_method"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method userIcon()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/MGChooseIconActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;->a(I)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x2711

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 13
    .line 14
    .line 15
    return-void
.end method
