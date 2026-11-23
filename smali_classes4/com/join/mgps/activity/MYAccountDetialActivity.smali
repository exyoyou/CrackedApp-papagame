.class public Lcom/join/mgps/activity/MYAccountDetialActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/r$c;
.implements Lcom/join/mgps/dialog/z0$c;
.implements Lw6/a$a;
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0760
.end annotation


# static fields
.field private static final MSG_AUTH_CANCEL:I = 0x2

.field private static final MSG_AUTH_COMPLETE:I = 0x4

.field private static final MSG_AUTH_ERROR:I = 0x3


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field accountNameTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private alowLogin:Z

.field private avatarSrcOld:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field private dialogChangeGender:Lcom/join/mgps/dialog/z0;

.field private dialogChangeName:Lcom/join/mgps/dialog/r;

.field private distroyed:Z

.field expTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field hasBindQQ:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field hasBindWebo:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field hasBindWechat:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field hasPhoneNumber:Z

.field iconImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isWeichatLoding:Z

.field private lastClick:J

.field levelTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field llRealName:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private nameCheckDiaog:Lcom/join/mgps/dialog/t1;

.field private nameOld:Ljava/lang/String;

.field pabi:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field passwordTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field phoneTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcAccountClientV2:Lcom/join/mgps/rpc/c;

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_rank:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field xingbie:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameOld:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->avatarSrcOld:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->distroyed:Z

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasPhoneNumber:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->alowLogin:Z

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/MYAccountDetialActivity;)Lcom/join/mgps/dialog/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameCheckDiaog:Lcom/join/mgps/dialog/t1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/MYAccountDetialActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private authorize(Lcn/sharesdk/framework/Platform;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plat"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->lastClick:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gtz v4, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->lastClick:J

    .line 20
    .line 21
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u3002"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    if-nez p1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->alowLogin:Z

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->alowLogin:Z

    .line 47
    .line 48
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogLoading()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->alowLogin:Z

    .line 94
    .line 95
    iput-boolean v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->isWeichatLoding:Z

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    .line 107
    .line 108
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->isWeichatLoding:Z

    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method private clearCheckIn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method accountNameLayout()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "clipboard"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/ClipboardManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

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
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->v(Landroid/content/Context;)Lcom/join/mgps/dialog/z0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogChangeGender:Lcom/join/mgps/dialog/z0;

    .line 32
    .line 33
    new-instance v0, Lcom/join/mgps/dialog/t1;

    .line 34
    .line 35
    const v1, 0x7f13017f

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/t1;-><init>(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameCheckDiaog:Lcom/join/mgps/dialog/t1;

    .line 42
    .line 43
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->q(Landroid/content/Context;)Lcom/join/mgps/dialog/r;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogChangeName:Lcom/join/mgps/dialog/r;

    .line 52
    .line 53
    iput-object p0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->title_textview:Landroid/widget/TextView;

    .line 56
    .line 57
    const-string v1, "\u4e2a\u4eba\u4fe1\u606f"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showUI()V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, p0}, Lw6/a;->a(Lw6/a$a;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Landroid/os/Handler;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->handler:Landroid/os/Handler;

    .line 88
    .line 89
    return-void
.end method

.method public backName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameS"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->name:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->updatedata()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method back_image()V
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

.method bindQQLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindQq()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->QQ_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUnbind(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method bindThirdAccount(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nique_id",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setUid(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setToken(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setUnique_id(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setType(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/b;->M(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUserInfo()V

    .line 74
    .line 75
    .line 76
    const-string p1, "\u7ed1\u5b9a\u6210\u529f"

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->error(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception p1

    .line 99
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void
.end method

.method bindWechartLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWx()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WEIXIN_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUnbind(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method bindWeiboLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWb()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WB_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUnbind(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public checkUnbind(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platformType"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->QQ_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "QQ"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WEIXIN_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "\u5fae\u4fe1"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WB_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "\u5fae\u535a"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v0, ""

    .line 47
    .line 48
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasPhoneNumber:Z

    .line 62
    .line 63
    const-string v0, "\u65e0\u6cd5\u89e3\u9664\u7ed1\u5b9a"

    .line 64
    .line 65
    const-string v1, "\u89e3\u9664\u7b2c\u4e09\u65b9\u5e10\u53f7\u5fc5\u987b\u7ed1\u5b9a\u624b\u673a\u53f7"

    .line 66
    .line 67
    const-string v2, "\u7ed1\u5b9a\u624b\u673a"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "\u662f\u5426\u89e3\u9664"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, "\u7ed1\u5b9a\uff1f"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "\u89e3\u7ed1\u540e\u5c06\u65e0\u6cd5\u4f7f\u7528"

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, "\u5e10\u53f7\u767b\u5f55\u609f\u996d\u6e38\u620f\u5385"

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/4 v2, 0x1

    .line 115
    iput-boolean v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasPhoneNumber:Z

    .line 116
    .line 117
    const-string v2, "\u89e3\u9664\u7ed1\u5b9a"

    .line 118
    .line 119
    move-object v6, v1

    .line 120
    move-object v1, v0

    .line 121
    move-object v0, v6

    .line 122
    :goto_1
    new-instance v3, Lcom/join/mgps/dialog/b;

    .line 123
    .line 124
    iget-object v4, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 125
    .line 126
    const v5, 0x7f13017f

    .line 127
    .line 128
    .line 129
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 130
    .line 131
    .line 132
    const-string v4, "\u53d6\u6d88"

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v1, Lcom/join/mgps/activity/MYAccountDetialActivity$c;

    .line 151
    .line 152
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity$c;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method checkUserInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "uid"

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getUid()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, ""

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v2, "token"

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getToken()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v2, "appVersion"

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->A(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/16 v2, 0xc8

    .line 134
    .line 135
    if-ne v1, v2, :cond_1

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUserInfoSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/16 v1, 0x2bd

    .line 150
    .line 151
    if-ne v0, v1, :cond_2

    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    :cond_2
    :goto_0
    return-void
.end method

.method checkUserInfoSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAvatarSrc(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setPapaMoney(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setMobile(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setGender(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setUid(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getLevel()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setLevel(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getExp()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setExp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGameTime()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setGameTime(J)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setSecretKey(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getPwdSetUp()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setPwdSetUp(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsAnchor()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsAnchor(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWx()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindWx(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWb()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindWb(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindQq()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setIsBindQq(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showUI()V

    .line 179
    .line 180
    .line 181
    :cond_0
    return-void
.end method

.method public checkedGender(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gender"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setGender(I)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->xingbie:Landroid/widget/TextView;

    .line 30
    .line 31
    const-string v0, "\u7537"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->xingbie:Landroid/widget/TextView;

    .line 38
    .line 39
    const-string v0, "\u5973"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->updatedata()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method deleteLocalUserIcon()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getLocalUserIcon()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1}, Lcom/join/android/app/common/utils/l;->H(Ljava/io/File;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method dialogLoading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
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

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    return-void
.end method

.method error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error_msg",
            "nickname"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string p2, "\u4e00\u4e2a\u6708"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameOld:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameOld:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    return-void
.end method

.method exitLogin()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->deleteLocalUserIcon()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->loginOutBack()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->clearCheckIn()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0}, Lk6/a;->a(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "\u9000\u51fa\u767b\u5f55\u6210\u529f"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, ""

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_d

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    if-eq v0, v3, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->isWeichatLoding:Z

    .line 13
    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lcom/join/mgps/dto/ShareDataBean;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareDataBean;->getRes()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareDataBean;->getType()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v5, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const-string v6, "gender"

    .line 41
    .line 42
    const-string v7, "nickname"

    .line 43
    .line 44
    const/4 v8, 0x1

    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    check-cast v9, Ljava/lang/String;

    .line 70
    .line 71
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    const-string v9, "\u7537"

    .line 90
    .line 91
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    const/4 v5, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const/4 v5, -0x1

    .line 99
    :goto_1
    sget-object v9, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_7

    .line 106
    .line 107
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    check-cast v9, Ljava/lang/String;

    .line 130
    .line 131
    :cond_6
    const-string v9, "sex"

    .line 132
    .line 133
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    move v1, v5

    .line 150
    :cond_8
    sget-object v5, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_c

    .line 157
    .line 158
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Ljava/lang/String;

    .line 169
    .line 170
    const-string v4, "name"

    .line 171
    .line 172
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_a

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Ljava/lang/String;

    .line 183
    .line 184
    :cond_a
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_9

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_9

    .line 201
    .line 202
    const-string v4, "m"

    .line 203
    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    goto :goto_3

    .line 209
    :cond_b
    const/4 v1, 0x3

    .line 210
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogLoading()V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 214
    .line 215
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareDataBean;->getUserId()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->bindThirdAccount(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_d
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string v0, "\u53d6\u6d88\u6388\u6743"

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_4
    return v2
.end method

.method iconLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/activity/MGChooseIconActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;->a(I)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method levelLayout()V
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
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

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

.method llRealName()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/join/mgps/rpc/h;->H:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, "/user/activity/real_name/index"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method loginOutBack()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccoutLoginOutRequest;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/mgps/dto/AccoutLoginOutRequest;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->setUid(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->setSign(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->g(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->deleteLocalUserIcon()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    return-void
.end method

.method nameLayout()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameCheckDiaog:Lcom/join/mgps/dialog/t1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameCheckDiaog:Lcom/join/mgps/dialog/t1;

    .line 7
    .line 8
    const v1, 0x7f0a10d8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/EditText;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameCheckDiaog:Lcom/join/mgps/dialog/t1;

    .line 18
    .line 19
    const v2, 0x7f0a1188

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/Button;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameCheckDiaog:Lcom/join/mgps/dialog/t1;

    .line 29
    .line 30
    const v3, 0x7f0a0337

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/widget/TextView;

    .line 38
    .line 39
    new-instance v3, Lcom/join/mgps/activity/MYAccountDetialActivity$a;

    .line 40
    .line 41
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity$a;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/join/mgps/Util/t;->g(Landroid/widget/EditText;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/join/mgps/activity/MYAccountDetialActivity$b;

    .line 51
    .line 52
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity$b;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity;Landroid/widget/EditText;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->changeNickNameNotice()Lorg/androidannotations/api/sharedpreferences/p;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public onAppMsgChange()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUserInfoSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->back_image()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "platform",
            "action"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->alowLogin:Z

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "platform",
            "action",
            "res"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->alowLogin:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/join/mgps/dto/ShareDataBean;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/join/mgps/dto/ShareDataBean;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ShareDataBean;->setType(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/ShareDataBean;->setUserId(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/ShareDataBean;->setRes(Ljava/util/HashMap;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserIcon()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ShareDataBean;->setUserIcon(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "   "

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/os/Message;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 p2, 0x4

    .line 78
    iput p2, p1, Landroid/os/Message;->what:I

    .line 79
    .line 80
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->handler:Landroid/os/Handler;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->distroyed:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lw6/a;->d(Lw6/a$a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "platform",
            "action",
            "throwable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->alowLogin:Z

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "WechatClientNotExistException"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "WechatTimelineNotSupportedException"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "WechatFavoriteNotSupportedException"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p1, "\u6388\u6743\u5931\u8d25"

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showMessage(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const-string p1, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\u5ba2\u7aef\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef\u3002"

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showMessage(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    const/16 p1, 0x8

    .line 55
    .line 56
    if-ne p2, p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->handler:Landroid/os/Handler;

    .line 59
    .line 60
    const/4 p2, 0x3

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUserInfo()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method pabiLayout()V
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
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

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

.method passwordLayout()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method phoneLayout()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->distroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    :cond_1
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

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

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

.method showUI()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->avatarSrcOld:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->iconImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->u(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWx()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v1, -0x10000

    .line 27
    .line 28
    const-string v2, "#8a8a8a"

    .line 29
    .line 30
    const-string v3, "\u5df2\u7ed1\u5b9a"

    .line 31
    .line 32
    const-string v4, "\u672a\u7ed1\u5b9a"

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-eq v0, v5, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWechat:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWechat:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWechat:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWechat:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindWb()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eq v0, v5, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWebo:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWebo:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWebo:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindWebo:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getIsBindQq()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eq v0, v5, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindQQ:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindQQ:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindQQ:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasBindQQ:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountNameTv:Landroid/widget/TextView;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->name:Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->nameOld:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->pabi:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 168
    .line 169
    .line 170
    move-result-wide v2

    .line 171
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, ""

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-ne v0, v5, :cond_3

    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->xingbie:Landroid/widget/TextView;

    .line 195
    .line 196
    const-string v1, "\u7537"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->xingbie:Landroid/widget/TextView;

    .line 203
    .line 204
    const-string v1, "\u5973"

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getPwdSetUp()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    const v1, -0xc1c2

    .line 216
    .line 217
    .line 218
    const v2, -0x757576

    .line 219
    .line 220
    .line 221
    if-nez v0, :cond_4

    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->passwordTv:Landroid/widget/TextView;

    .line 224
    .line 225
    const-string v3, "\u672a\u8bbe\u7f6e"

    .line 226
    .line 227
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->passwordTv:Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->passwordTv:Landroid/widget/TextView;

    .line 237
    .line 238
    const-string v3, "\u70b9\u51fb\u4fee\u6539"

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->passwordTv:Landroid/widget/TextView;

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    .line 247
    .line 248
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_6

    .line 259
    .line 260
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    const/16 v1, 0xb

    .line 271
    .line 272
    if-ne v0, v1, :cond_5

    .line 273
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->phoneTv:Landroid/widget/TextView;

    .line 275
    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    iget-object v4, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 282
    .line 283
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    const/4 v5, 0x0

    .line 288
    const/4 v6, 0x3

    .line 289
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v4, "****"

    .line 297
    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget-object v4, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 302
    .line 303
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    const/4 v5, 0x7

    .line 308
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .line 321
    .line 322
    :catch_0
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->phoneTv:Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->phoneTv:Landroid/widget/TextView;

    .line 329
    .line 330
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->phoneTv:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    .line 337
    .line 338
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-eqz v0, :cond_7

    .line 345
    .line 346
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getBattleTitle()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_7

    .line 361
    .line 362
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->tv_rank:Landroid/widget/TextView;

    .line 363
    .line 364
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 365
    .line 366
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getBattleTitle()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->tv_rank:Landroid/widget/TextView;

    .line 379
    .line 380
    const-string v1, "--"

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    :goto_6
    return-void
.end method

.method unSubscribe()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, "/static/cancelAccount/index.html"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method updateName()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->name:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method updatedata()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogLoading()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setGender(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAccount(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setNick_name(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setUid(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->h(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_1

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->context:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->updateName()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/MYAccountDetialActivity;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    return-void
.end method

.method xingbieLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogChangeGender:Lcom/join/mgps/dialog/z0;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/dialog/z0;->b(Lcom/join/mgps/dialog/z0$c;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogChangeGender:Lcom/join/mgps/dialog/z0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getGender()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/z0;->c(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->dialogChangeGender:Lcom/join/mgps/dialog/z0;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
