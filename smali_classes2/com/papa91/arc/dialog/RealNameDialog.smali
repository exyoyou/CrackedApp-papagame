.class public Lcom/papa91/arc/dialog/RealNameDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;
    }
.end annotation


# instance fields
.field private UserID:Ljava/lang/String;

.field private action:Ljava/lang/Integer;

.field bottomGift:Landroid/view/View;

.field btn_center:Landroid/widget/Button;

.field callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

.field clickTime:J

.field private codeFocus:Z

.field et_code:Landroid/widget/EditText;

.field et_name:Landroid/widget/EditText;

.field giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field iv_close:Landroid/widget/ImageView;

.field iv_delete_code:Landroid/widget/ImageView;

.field iv_delete_name:Landroid/widget/ImageView;

.field ll_top:Landroid/view/View;

.field private loading_submit_real_name:Z

.field private nameFocus:Z

.field pop_window:Lcom/papa91/arc/bean/PopwindowBean;

.field tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field tv_title:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/arc/interfaces/RealNameCallBack;)V
    .locals 2

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->MyDialog:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->clickTime:J

    .line 9
    .line 10
    iput-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 13
    .line 14
    new-instance p1, Lcom/papa91/arc/dialog/g;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/papa91/arc/dialog/g;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$new$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/papa91/arc/dialog/RealNameDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$onCreate$1(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$commitRename$4(Lcom/papa91/arc/bean/Response;)V

    return-void
.end method

.method private commitRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/RealNameDialog;->isNetworkConnected()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    .line 13
    .line 14
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/papa91/arc/http/HttpUtils;->init(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 36
    .line 37
    new-instance v1, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->UserID:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setUid(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "ANDROID"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setPlatformType(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setIdCard(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setName(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->type:Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setType(Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->action:Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setAction(Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1, v1}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance p2, Lcom/papa91/arc/dialog/h;

    .line 84
    .line 85
    invoke-direct {p2, p0, p1}, Lcom/papa91/arc/dialog/h;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Request;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p2}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 97
    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    const-string p2, "realNameClickSubmit"

    .line 101
    .line 102
    const-string v1, "0"

    .line 103
    .line 104
    invoke-interface {p1, p2, v1}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 108
    .line 109
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$commitRename$5(Lcom/papa91/arc/bean/Request;)V

    return-void
.end method

.method public static synthetic e(Lcom/papa91/arc/dialog/RealNameDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$onCreate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/papa91/arc/dialog/RealNameDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$onCreate$2(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$commitRename$4(Lcom/papa91/arc/bean/Response;)V
    .locals 3

    .line 1
    const-string v0, "realNameClickSubmit"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xc8

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/papa91/arc/bean/PopwindowBean;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    const-string v2, "1"

    .line 24
    .line 25
    invoke-interface {v1, v0, v2}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 29
    .line 30
    invoke-interface {v0, p0, p1}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onSuccess(Landroid/app/Dialog;Lcom/papa91/arc/bean/PopwindowBean;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const-string v2, "0"

    .line 39
    .line 40
    invoke-interface {v1, v0, v2}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 v1, -0x1

    .line 48
    invoke-interface {v0, v1}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onFail(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 69
    .line 70
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 80
    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 83
    .line 84
    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$commitRename$5(Lcom/papa91/arc/bean/Request;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->submitRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 7
    .line 8
    new-instance v1, Lcom/papa91/arc/dialog/l;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/dialog/l;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Response;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v1, "realNameClickSubmit"

    .line 26
    .line 27
    const-string v2, "0"

    .line 28
    .line 29
    invoke-interface {p1, v1, v2}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 33
    .line 34
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/4 v0, -0x2

    .line 39
    invoke-interface {p1, v0}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onFail(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "4"

    .line 6
    .line 7
    const-string v2, "0"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    move-object v3, p3

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "4"

    .line 6
    .line 7
    const-string v2, "0"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    move-object v3, p3

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method private synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onCancel(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public isNetworkConnected()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "connectivity"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$id;->btn_center:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->clickTime:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->clickTime:J

    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "input_method"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget-object v2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-static {p1}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->commitRename(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v0, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u8eab\u4efd\u4fe1\u606f"

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    sget v1, Lorg/ppsspp/ppsspp/R$id;->iv_delete_name:I

    .line 110
    .line 111
    const-string v2, ""

    .line 112
    .line 113
    if-ne v0, v1, :cond_5

    .line 114
    .line 115
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 116
    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_delete_code:I

    .line 126
    .line 127
    if-ne p1, v0, :cond_6

    .line 128
    .line 129
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/16 v3, 0x504

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v3, 0x1

    .line 48
    if-ne v2, v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/16 v3, 0x100

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 60
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    .line 62
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    sget p1, Lorg/ppsspp/ppsspp/R$layout;->real_name_dialog:I

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 70
    .line 71
    .line 72
    sget p1, Lorg/ppsspp/ppsspp/R$id;->et_name:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/EditText;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 81
    .line 82
    sget p1, Lorg/ppsspp/ppsspp/R$id;->et_code:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/EditText;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    .line 91
    .line 92
    sget p1, Lorg/ppsspp/ppsspp/R$id;->btn_center:I

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/Button;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    .line 101
    .line 102
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_title:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 111
    .line 112
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_content:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 119
    .line 120
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 121
    .line 122
    sget p1, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/widget/ImageView;

    .line 129
    .line 130
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_close:Landroid/widget/ImageView;

    .line 131
    .line 132
    sget p1, Lorg/ppsspp/ppsspp/R$id;->iv_delete_name:I

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/ImageView;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    .line 141
    .line 142
    sget p1, Lorg/ppsspp/ppsspp/R$id;->iv_delete_code:I

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Landroid/widget/ImageView;

    .line 149
    .line 150
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    .line 151
    .line 152
    sget p1, Lorg/ppsspp/ppsspp/R$id;->ll_top:I

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->ll_top:Landroid/view/View;

    .line 159
    .line 160
    sget p1, Lorg/ppsspp/ppsspp/R$id;->bottomGift:I

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->bottomGift:Landroid/view/View;

    .line 167
    .line 168
    sget p1, Lorg/ppsspp/ppsspp/R$id;->giftMessage:I

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 175
    .line 176
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 177
    .line 178
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 179
    .line 180
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    .line 184
    .line 185
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 189
    .line 190
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    .line 194
    .line 195
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    .line 199
    .line 200
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    .line 204
    .line 205
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    .line 209
    .line 210
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 214
    .line 215
    if-eqz p1, :cond_6

    .line 216
    .line 217
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const v2, 0x106000d

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 238
    .line 239
    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;

    .line 240
    .line 241
    const/4 v3, 0x0

    .line 242
    invoke-direct {v0, p0, v3}, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/dialog/RealNameDialog$1;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 249
    .line 250
    new-instance v0, Lcom/papa91/arc/dialog/i;

    .line 251
    .line 252
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/i;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 276
    .line 277
    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;

    .line 278
    .line 279
    invoke-direct {v0, p0, v3}, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/dialog/RealNameDialog$1;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 286
    .line 287
    new-instance v0, Lcom/papa91/arc/dialog/j;

    .line 288
    .line 289
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/j;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_title:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 296
    .line 297
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getTitle()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 307
    .line 308
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    const/16 v0, 0x8

    .line 324
    .line 325
    if-nez p1, :cond_2

    .line 326
    .line 327
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    .line 334
    .line 335
    iget-object v2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 336
    .line 337
    invoke-virtual {v2}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v2}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-static {p1, v2}, Lcom/papa91/arc/util/StringUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    .line 349
    .line 350
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 354
    .line 355
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    if-eqz p1, :cond_3

    .line 360
    .line 361
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_close:Landroid/widget/ImageView;

    .line 362
    .line 363
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_close:Landroid/widget/ImageView;

    .line 367
    .line 368
    new-instance v2, Lcom/papa91/arc/dialog/k;

    .line 369
    .line 370
    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/k;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .line 375
    .line 376
    goto :goto_2

    .line 377
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_close:Landroid/widget/ImageView;

    .line 378
    .line 379
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    .line 381
    .line 382
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle3()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    if-eqz p1, :cond_5

    .line 389
    .line 390
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 391
    .line 392
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle3()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    const-string v2, ""

    .line 397
    .line 398
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-eqz p1, :cond_4

    .line 403
    .line 404
    goto :goto_3

    .line 405
    :cond_4
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->bottomGift:Landroid/view/View;

    .line 406
    .line 407
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 411
    .line 412
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle3()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto :goto_4

    .line 422
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->bottomGift:Landroid/view/View;

    .line 423
    .line 424
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    :cond_6
    :goto_4
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->nameFocus:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->codeFocus:Z

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->nameFocus:Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-lez p2, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    .line 33
    .line 34
    if-ne p1, p2, :cond_5

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->codeFocus:Z

    .line 37
    .line 38
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-lez p2, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 56
    .line 57
    if-ne p1, p2, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    .line 66
    .line 67
    if-ne p1, p2, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->nameFocus:Z

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    const/4 p4, 0x0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-boolean p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->codeFocus:Z

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 p3, 0x0

    .line 35
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method protected setClearIconVisible(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 p2, 0x8

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->type:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/papa91/arc/dialog/RealNameDialog;->action:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->UserID:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
