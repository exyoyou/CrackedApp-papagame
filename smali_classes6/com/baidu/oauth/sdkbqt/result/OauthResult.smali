.class public Lcom/baidu/oauth/sdkbqt/result/OauthResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_CODE_NETWORK_EXCEPTION:I = -0xcb

.field public static final ERROR_CODE_NOT_INSTALL_BAIDU_APP:I = -0xcf

.field public static final ERROR_CODE_PARAMS_INVALID:I = -0xca

.field public static final ERROR_CODE_PASS_SDK_IS_NOT_SUPPORT:I = -0xd0

.field public static final ERROR_CODE_RESPONSE_INVALID:I = -0xcc

.field public static final ERROR_CODE_SDK_NOT_INIT:I = -0xce

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_UNKNOW_ERROR:I = -0xc9

.field public static final ERROR_CODE_USER_CANCEL:I = -0xcd

.field public static final ERROR_CODE_USER_REJECT_OPEN_APP:I = -0xd1

.field public static final ERROR_MSG_NOT_INSTALL_BAIDU_APP:Ljava/lang/String; = "\u5f53\u524d\u8bbe\u5907\u672a\u5b89\u88c5\u767e\u5ea6APP"

.field public static final ERROR_MSG_PASS_SDK_IS_NOT_SUPPORT:Ljava/lang/String; = "\u767e\u5ea6APP\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u5347\u7ea7\u5230\u6700\u65b0\u7248\u672c"

.field public static final ERROR_MSG_SDK_NOT_INIT:Ljava/lang/String; = "SDK\u672a\u521d\u59cb\u5316"

.field public static final ERROR_MSG_USER_REJECT_OPEN_APP:Ljava/lang/String; = "\u7528\u6237\u62d2\u7edd\u6253\u5f00APP"

.field public static final RESULT_MSG_NETWORK_EXCEPTION:Ljava/lang/String; = "\u7f51\u7edc\u5f02\u5e38"

.field public static final RESULT_MSG_PARAMS_INVALID:Ljava/lang/String; = "\u53c2\u6570\u9519\u8bef"

.field public static final RESULT_MSG_RESPONSE_INVALID:Ljava/lang/String; = "\u670d\u52a1\u8fd4\u56de\u5f02\u5e38"

.field public static final RESULT_MSG_SUCCESS:Ljava/lang/String; = "\u6210\u529f"

.field public static final RESULT_MSG_UNKNOW_ERROR:Ljava/lang/String; = "\u5176\u4ed6\u9519\u8bef"

.field public static final RESULT_MSG_USER_CANCEL:Ljava/lang/String; = "\u7528\u6237\u53d6\u6d88"


# instance fields
.field private a:I

.field public allowLaunchAuthApp:Z

.field public appVersion:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field public isDegrade:Z

.field public isInstallBdApp:Z

.field public isPassNewVersion:Z

.field public isVisibleAuth:Z

.field public loginStateAfterAuth:Ljava/lang/String;

.field public loginStateBeforeAuth:Ljava/lang/String;

.field protected msgMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public passSdkVersion:Ljava/lang/String;

.field public resultSubCode:I

.field public resultSubMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isVisibleAuth:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isDegrade:Z

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isPassNewVersion:Z

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->isInstallBdApp:Z

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    iput-object v3, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->appVersion:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v3, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->passSdkVersion:Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->allowLaunchAuthApp:Z

    .line 28
    .line 29
    iput-object v3, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateBeforeAuth:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v3, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->loginStateAfterAuth:Ljava/lang/String;

    .line 32
    .line 33
    const/16 v1, -0xc9

    .line 34
    .line 35
    iput v1, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->a:I

    .line 36
    .line 37
    const-string v3, "\u6210\u529f"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 43
    .line 44
    const-string v2, "\u5176\u4ed6\u9519\u8bef"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 50
    .line 51
    const/16 v1, -0xca

    .line 52
    .line 53
    const-string v2, "\u53c2\u6570\u9519\u8bef"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 59
    .line 60
    const/16 v1, -0xcb

    .line 61
    .line 62
    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 68
    .line 69
    const/16 v1, -0xcc

    .line 70
    .line 71
    const-string v2, "\u670d\u52a1\u8fd4\u56de\u5f02\u5e38"

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 77
    .line 78
    const/16 v1, -0xcd

    .line 79
    .line 80
    const-string v2, "\u7528\u6237\u53d6\u6d88"

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 86
    .line 87
    const/16 v1, -0xcf

    .line 88
    .line 89
    const-string v2, "\u5f53\u524d\u8bbe\u5907\u672a\u5b89\u88c5\u767e\u5ea6APP"

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 95
    .line 96
    const/16 v1, -0xd0

    .line 97
    .line 98
    const-string v2, "\u767e\u5ea6APP\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u5347\u7ea7\u5230\u6700\u65b0\u7248\u672c"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 104
    .line 105
    const/16 v1, -0xd1

    .line 106
    .line 107
    const-string v2, "\u7528\u6237\u62d2\u7edd\u6253\u5f00APP"

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->b:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 13
    .line 14
    iget v1, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->a:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 23
    .line 24
    iget v1, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->a:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->msgMap:Landroid/util/SparseArray;

    .line 28
    .line 29
    const/16 v1, -0xc9

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
