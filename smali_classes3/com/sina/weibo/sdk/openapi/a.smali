.class public final Lcom/sina/weibo/sdk/openapi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/openapi/IWBAPI;


# instance fields
.field private mContext:Landroid/content/Context;

.field private r:Lcom/sina/weibo/sdk/auth/a;

.field private s:Lcom/sina/weibo/sdk/share/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sina/weibo/sdk/openapi/a;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/sina/weibo/sdk/auth/a;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/sina/weibo/sdk/auth/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    .line 12
    .line 13
    new-instance p1, Lcom/sina/weibo/sdk/share/e;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/sina/weibo/sdk/share/e;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/sina/weibo/sdk/openapi/a;->s:Lcom/sina/weibo/sdk/share/e;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final authorize(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    .line 2
    .line 3
    const-string v1, "WBSsoTag"

    .line 4
    .line 5
    const-string v2, "authorize()"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    iput-object p2, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p2, 0x0

    .line 29
    :goto_0
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/a;->a(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/a;->b(Landroid/app/Activity;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string p2, "listener can not be null."

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final authorizeCallback(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    .line 2
    .line 3
    const-string v1, "WBSsoTag"

    .line 4
    .line 5
    const-string v2, "authorizeCallback()"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 11
    .line 12
    if-eqz v1, :cond_7

    .line 13
    .line 14
    const v2, 0x80cd

    .line 15
    .line 16
    .line 17
    if-ne v2, p2, :cond_6

    .line 18
    .line 19
    const/4 p2, -0x1

    .line 20
    if-ne p3, p2, :cond_4

    .line 21
    .line 22
    if-eqz p4, :cond_7

    .line 23
    .line 24
    const-string p2, "error"

    .line 25
    .line 26
    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string p3, "error_type"

    .line 31
    .line 32
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const-string v1, "error_description"

    .line 37
    .line 38
    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-eqz p2, :cond_0

    .line 69
    .line 70
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/auth/AccessTokenHelper;->writeAccessToken(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 74
    .line 75
    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onComplete(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 80
    .line 81
    new-instance p2, Lcom/sina/weibo/sdk/common/UiError;

    .line 82
    .line 83
    const/4 p3, -0x4

    .line 84
    const-string p4, "oauth2AccessToken is null"

    .line 85
    .line 86
    invoke-direct {p2, p3, p4, p4}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    const-string p1, "access_denied"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_3

    .line 100
    .line 101
    const-string p1, "OAuthAccessDeniedException"

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 111
    .line 112
    new-instance p2, Lcom/sina/weibo/sdk/common/UiError;

    .line 113
    .line 114
    const/4 p4, -0x5

    .line 115
    invoke-direct {p2, p4, p3, v1}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    :goto_0
    iget-object p1, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 123
    .line 124
    invoke-interface {p1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onCancel()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    if-nez p3, :cond_5

    .line 129
    .line 130
    invoke-interface {v1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onCancel()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_5
    new-instance p1, Lcom/sina/weibo/sdk/common/UiError;

    .line 135
    .line 136
    const/4 p2, -0x6

    .line 137
    const-string p3, "result code is error"

    .line 138
    .line 139
    invoke-direct {p1, p2, p3, p3}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v1, p1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_6
    new-instance p1, Lcom/sina/weibo/sdk/common/UiError;

    .line 147
    .line 148
    const-string p2, "request code is error"

    .line 149
    .line 150
    const-string p3, "requestCode is error"

    .line 151
    .line 152
    const/4 p4, -0x7

    .line 153
    invoke-direct {p1, p4, p2, p3}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v1, p1}, Lcom/sina/weibo/sdk/auth/WbAuthListener;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    return-void
.end method

.method public final authorizeClient(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    .line 2
    .line 3
    const-string v1, "WBSsoTag"

    .line 4
    .line 5
    const-string v2, "authorizeClient()"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iput-object p2, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/a;->a(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string p2, "listener can not be null."

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final authorizeWeb(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->r:Lcom/sina/weibo/sdk/auth/a;

    .line 2
    .line 3
    const-string v1, "WBSsoTag"

    .line 4
    .line 5
    const-string v2, "authorizeWeb()"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iput-object p2, v0, Lcom/sina/weibo/sdk/auth/a;->d:Lcom/sina/weibo/sdk/auth/WbAuthListener;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/auth/a;->b(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string p2, "listener can not be null."

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final doResultIntent(Landroid/content/Intent;Lcom/sina/weibo/sdk/share/WbShareCallback;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    :try_start_0
    const-string v1, "_weibo_resp_errcode"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v2, Lcom/sina/weibo/sdk/common/UiError;

    .line 28
    .line 29
    const-string v3, "_weibo_resp_errstr"

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v3, "error from weibo client!"

    .line 36
    .line 37
    invoke-direct {v2, v1, p1, v3}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, v2}, Lcom/sina/weibo/sdk/share/WbShareCallback;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-interface {p2}, Lcom/sina/weibo/sdk/share/WbShareCallback;->onCancel()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-interface {p2}, Lcom/sina/weibo/sdk/share/WbShareCallback;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance v1, Lcom/sina/weibo/sdk/common/UiError;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v1, v0, v2, p1}, Lcom/sina/weibo/sdk/common/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, v1}, Lcom/sina/weibo/sdk/share/WbShareCallback;->onError(Lcom/sina/weibo/sdk/common/UiError;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final isWBAppInstalled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isWBAppSupportMultipleImage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sina/weibo/sdk/a;->b(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sina/weibo/sdk/openapi/a;->registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V

    return-void
.end method

.method public final registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V
    .locals 0

    .line 2
    invoke-static {p2, p3}, Lcom/sina/weibo/sdk/a;->a(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V

    return-void
.end method

.method public final setLoggerEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/c;->setLoggerEnable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final shareMessage(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/openapi/a;->s:Lcom/sina/weibo/sdk/share/e;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-static {p1}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    if-nez p3, :cond_5

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-wide v3, v0, Lcom/sina/weibo/sdk/share/e;->D:J

    .line 18
    .line 19
    sub-long v3, v1, v3

    .line 20
    .line 21
    const-wide/16 v5, 0x1388

    .line 22
    .line 23
    cmp-long v7, v3, v5

    .line 24
    .line 25
    if-ltz v7, :cond_5

    .line 26
    .line 27
    iput-wide v1, v0, Lcom/sina/weibo/sdk/share/e;->D:J

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/share/e;->a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p1}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    if-eqz p3, :cond_3

    .line 46
    .line 47
    invoke-static {p1}, Lcom/sina/weibo/sdk/b/a;->e(Landroid/content/Context;)Lcom/sina/weibo/sdk/b/a$a;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const/4 v0, 0x0

    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    iget p3, p3, Lcom/sina/weibo/sdk/b/a$a;->ah:I

    .line 55
    .line 56
    const/16 v1, 0x2710

    .line 57
    .line 58
    if-le p3, v1, :cond_2

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    :cond_2
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/share/e;->a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-static {}, Lcom/sina/weibo/sdk/a;->a()Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    new-instance v0, Lcom/sina/weibo/sdk/web/b/d;

    .line 74
    .line 75
    invoke-direct {v0, p3}, Lcom/sina/weibo/sdk/web/b/d;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/web/b/b;->setContext(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, v0, Lcom/sina/weibo/sdk/web/b/d;->aE:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iput-object p2, v0, Lcom/sina/weibo/sdk/web/b/d;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/AccessTokenHelper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getAccessToken()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getAccessToken()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-nez p2, :cond_4

    .line 108
    .line 109
    iput-object p3, v0, Lcom/sina/weibo/sdk/web/b/d;->ae:Ljava/lang/String;

    .line 110
    .line 111
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/web/b/b;->writeToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    new-instance p3, Landroid/content/Intent;

    .line 120
    .line 121
    const-class v0, Lcom/sina/weibo/sdk/share/ShareTransActivity;

    .line 122
    .line 123
    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .line 125
    .line 126
    const-string v0, "start_flag"

    .line 127
    .line 128
    const/16 v1, 0x3e9

    .line 129
    .line 130
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    const-string v0, "start_web_activity"

    .line 134
    .line 135
    const-string v1, "com.sina.weibo.sdk.web.WebActivity"

    .line 136
    .line 137
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    const/16 p2, 0x2711

    .line 144
    .line 145
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    .line 147
    .line 148
    :cond_5
    return-void
.end method
