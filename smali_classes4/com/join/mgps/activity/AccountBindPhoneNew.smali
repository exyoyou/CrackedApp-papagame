.class public Lcom/join/mgps/activity/AccountBindPhoneNew;
.super Lcom/join/mgps/activity/BaseAccountActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00ff
.end annotation


# instance fields
.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field accountBeanRequest:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

.field accountpre:Lcom/wufan/user/service/protobuf/UserInfo;

.field anonymousAccount:Z

.field changeNickNameLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field client:Lcom/join/mgps/rpc/b;

.field clientV2:Lcom/join/mgps/rpc/c;

.field code:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field codeTime:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field codelenth:I

.field dialogLoding:Landroid/app/Dialog;

.field editPhone:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field hintPhone:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field nextStep:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field nextStep2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field nickName:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field nickNameBution:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field passlenth:I

.field password:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field phoneNumber:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field phoneShow:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field setPassLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field timeDown:I

.field userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BaseAccountActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->passlenth:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->codelenth:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->anonymousAccount:Z

    .line 10
    .line 11
    const/16 v0, 0x3c

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->timeDown:I

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$f;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->handler:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/AccountBindPhoneNew;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showKeyborad(Landroid/widget/EditText;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/AccountBindPhoneNew;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->getChineseCount(Ljava/lang/String;)I

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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->getStringLength(Ljava/lang/String;)I

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

.method private showKeyborad(Landroid/widget/EditText;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentEditText"
        }
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


# virtual methods
.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    const-string v0, "\u7ed1\u5b9a\u624b\u673a\u53f7"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->setTitle(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->dialogLoding:Landroid/app/Dialog;

    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->client:Lcom/join/mgps/rpc/b;

    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->clientV2:Lcom/join/mgps/rpc/c;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountpre:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x2

    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->anonymousAccount:Z

    .line 49
    .line 50
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 61
    .line 62
    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$a;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$a;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 71
    .line 72
    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$b;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$b;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->password:Landroid/widget/EditText;

    .line 81
    .line 82
    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$c;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$c;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->code:Landroid/widget/EditText;

    .line 91
    .line 92
    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$d;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$d;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->nickName:Landroid/widget/EditText;

    .line 101
    .line 102
    new-instance v1, Lcom/join/mgps/activity/AccountBindPhoneNew$e;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew$e;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->nickName:Landroid/widget/EditText;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/join/mgps/Util/t;->g(Landroid/widget/EditText;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method checkCode()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

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
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setMobile(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->code:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setCode(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setDevice_id(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setMac(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->setSign(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->client:Lcom/join/mgps/rpc/b;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountCheckReginCodeRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->v(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    new-instance v0, Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setMobile(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->code:Landroid/widget/EditText;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setCode(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->password:Landroid/widget/EditText;

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
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setPassword(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showFinishPageAnony(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    .line 151
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 165
    .line 166
    .line 167
    :goto_2
    return-void
.end method

.method codeTime()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->dialogLoding:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x3c

    .line 7
    .line 8
    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->timeDown:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->sendCode()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method dissmissDialog()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->dialogLoding:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->codeTime:Landroid/widget/TextView;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
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

.method finishReginNickname(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nicknames"
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
    new-instance v0, Lcom/join/mgps/dto/AccountChangeNickNameRequest;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;-><init>()V

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
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setUid(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setToken(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setNick_name(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setAvatar_src(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setSign(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->client:Lcom/join/mgps/rpc/b;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {p1, v0}, Lcom/join/mgps/rpc/b;->R(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    const/16 p1, 0x2711

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :catch_0
    move-exception p1

    .line 122
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 139
    .line 140
    .line 141
    :goto_2
    return-void
.end method

.method finishReginNicknameThird(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nicknames"
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
    new-instance v0, Lcom/join/mgps/dto/AccountChangeNickNameRequest;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;-><init>()V

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
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setUid(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setToken(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setNick_name(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setAvatar_src(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->setSign(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->client:Lcom/join/mgps/rpc/b;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountChangeNickNameRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {p1, v0}, Lcom/join/mgps/rpc/b;->G(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    const/16 p1, 0x2711

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :catch_0
    move-exception p1

    .line 122
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 139
    .line 140
    .line 141
    :goto_2
    return-void
.end method

.method joinDevice()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

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
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "uid"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "token"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->client:Lcom/join/mgps/rpc/b;

    .line 50
    .line 51
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->C(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->isResult()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->getMsg()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->R(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->J2(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method nextStep()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->dialogLoding:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->sendCode()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method nextStep2()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->password:Landroid/widget/EditText;

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
    const/4 v1, 0x6

    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    invoke-direct {p0, v0, v1, v2}, Lcom/join/mgps/activity/AccountBindPhoneNew;->matchStringLength(Ljava/lang/String;II)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->dialogLoding:Landroid/app/Dialog;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->anonymousAccount:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->checkCode()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->from:I

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneRegin()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRegin()V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method nickNameBution()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->nickName:Landroid/widget/EditText;

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
    const/16 v1, 0x14

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {p0, v0, v2, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->matchStringLength(Ljava/lang/String;II)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v0, "\u7528\u6237\u540d\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51651\u81f324\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57\u6216\u6c49\u5b57"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->dialogLoding:Landroid/app/Dialog;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->anonymousAccount:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->from:I

    .line 36
    .line 37
    if-ne v0, v2, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBeanRequest:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->reginAnonymousPhone(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x2

    .line 46
    if-ne v0, v1, :cond_4

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBeanRequest:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->reginAnonymousThird(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->from:I

    .line 55
    .line 56
    if-ne v1, v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->finishReginNickname(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->finishReginNicknameThird(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_0
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
    iget-object p2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

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

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

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

.method phoneRegin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->password:Landroid/widget/EditText;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setPassword(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->code:Landroid/widget/EditText;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setSmsCode(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 56
    .line 57
    .line 58
    const-string v1, "mob"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setCodeType(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "account"

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getAccount()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-string v2, "password"

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getPassword()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v2, "smsCode"

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getSmsCode()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v2, "codeType"

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getCodeType()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v2, "appVersion"

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->clientV2:Lcom/join/mgps/rpc/c;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->p(Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_2

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const/16 v2, 0xc8

    .line 150
    .line 151
    if-ne v1, v2, :cond_0

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showFinishPage(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_1

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_1
    const-string v0, "\u6570\u636e\u83b7\u53d6\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .line 216
    .line 217
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_3
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 226
    .line 227
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 231
    .line 232
    .line 233
    :goto_2
    return-void
.end method

.method reginAnonymousPhone(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountAnonymousReginRequest"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

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
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountpre:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setUid(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountpre:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setToken(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->nickName:Landroid/widget/EditText;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setNick_name(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setDevice_id(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setMac(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setSign(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->client:Lcom/join/mgps/rpc/b;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->getParamsPhone()Lorg/springframework/util/LinkedMultiValueMap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/b;->S(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    .line 117
    .line 118
    .line 119
    const/16 p1, 0x2711

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception p1

    .line 145
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 162
    .line 163
    .line 164
    :goto_2
    return-void
.end method

.method reginAnonymousThird(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountAnonymousReginRequest"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

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
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountpre:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setUid(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountpre:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setToken(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getUnique_id()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setUnique_id(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setType(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->nickName:Landroid/widget/EditText;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setNick_name(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setDevice_id(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setMac(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->setSign(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->client:Lcom/join/mgps/rpc/b;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountAnonymousReginRequest;->getParamsThird()Lorg/springframework/util/LinkedMultiValueMap;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/b;->n(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    .line 135
    .line 136
    .line 137
    const/16 p1, 0x2711

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    goto :goto_1

    .line 162
    :catch_0
    move-exception p1

    .line 163
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 180
    .line 181
    .line 182
    :goto_2
    return-void
.end method

.method sendCode()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/join/mgps/Util/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setMobile(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->PLATFORM:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setSourceType(Lcom/wufan/user/service/protobuf/enumeration/SourceType;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->MOBILE_REG:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setContentType(Lcom/wufan/user/service/protobuf/enumeration/ContentType;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "uid"

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getUid()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, ""

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string v2, "mobile"

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getMobile()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v2, "sourceType"

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getSourceType()Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string v2, "appVersion"

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v2, "contentType"

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->getContentType()Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->clientV2:Lcom/join/mgps/rpc/c;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->k(Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;)Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getError()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    const/16 v2, 0xc8

    .line 155
    .line 156
    if-ne v1, v2, :cond_2

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getStatus()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_1

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showEditPassView()V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;->getErrorMsg()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    .line 182
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :cond_3
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 196
    .line 197
    .line 198
    :goto_2
    return-void
.end method

.method showEditPassView()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u8bbe\u7f6e\u5bc6\u7801"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->setTitle(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->setPassLayout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->editPhone:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneShow:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->handler:Landroid/os/Handler;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const-wide/16 v3, 0x3e8

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->codeTime:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method showFinishPage(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 4
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
    const-string v0, "\u8bbe\u7f6e\u5934\u50cf/\u6635\u79f0"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->setTitle(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->setPassLayout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->changeNickNameLayout:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->from:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const v2, 0x7f081323

    .line 23
    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->nickName:Landroid/widget/EditText;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/util/Random;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->nickName:Landroid/widget/EditText;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getNickname()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v3, 0x3e8

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getAvatar_src()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1, v2, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method

.method showFinishPageAnony(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 2
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
    const-string v0, "\u8bbe\u7f6e\u5934\u50cf/\u6635\u79f0"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->setTitle(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->setPassLayout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->changeNickNameLayout:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBeanRequest:Lcom/join/mgps/dto/AccountAnonymousReginRequest;

    .line 20
    .line 21
    return-void
.end method

.method thirdRegin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneNumber:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setAccount(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->password:Landroid/widget/EditText;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setPassword(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getUnique_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/join/mgps/Util/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setUniqueId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 56
    .line 57
    .line 58
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x1

    .line 67
    if-ne v2, v3, :cond_0

    .line 68
    .line 69
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_QQ:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x2

    .line 79
    if-ne v2, v3, :cond_1

    .line 80
    .line 81
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_XIN:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getType()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const/4 v3, 0x3

    .line 91
    if-ne v2, v3, :cond_2

    .line 92
    .line 93
    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;->T_WEI_BO:Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 94
    .line 95
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setTheThirdPartLoginType(Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->code:Landroid/widget/EditText;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setSmsCode(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 109
    .line 110
    .line 111
    const-string v1, "mob"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setCodeType(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 121
    .line 122
    .line 123
    new-instance v1, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v2, "theThirdPartLoginType"

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getTheThirdPartLoginType()Lcom/wufan/user/service/protobuf/enumeration/TheThirdPartLoginType;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string v2, "smsCode"

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getSmsCode()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    const-string v2, "codeType"

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getCodeType()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-string v2, "appVersion"

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->clientV2:Lcom/join/mgps/rpc/c;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->z(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    const/16 v2, 0xc8

    .line 192
    .line 193
    if-ne v1, v2, :cond_4

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->hasData()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_3

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showFinishPage(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    goto :goto_2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .line 246
    .line 247
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_5
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 256
    .line 257
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->dissmissDialog()V

    .line 261
    .line 262
    .line 263
    :goto_3
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
