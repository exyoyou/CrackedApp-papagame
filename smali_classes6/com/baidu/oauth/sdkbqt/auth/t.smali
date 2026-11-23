.class Lcom/baidu/oauth/sdkbqt/auth/t;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->h(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->h(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 p2, 0x4

    .line 35
    if-eq p1, p2, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->h(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->i(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$k;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 55
    .line 56
    const-string p2, "javascript:prompt(JSON.stringify({action:{name:\'action_set_title\',params:[document.title, \'prompt_on_cancel\', \'prompt_on_cancel\']}}));"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->b(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 68
    .line 69
    invoke-static {p2}, Lcom/baidu/oauth/sdkbqt/auth/i;->f(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$j;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "javascript:"

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->e(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->f(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$j;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lcom/baidu/oauth/sdkbqt/auth/i$j;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->b(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/baidu/oauth/sdkbqt/auth/i;->f(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$j;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p3, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 51
    .line 52
    invoke-static {p3}, Lcom/baidu/oauth/sdkbqt/auth/i;->g(Lcom/baidu/oauth/sdkbqt/auth/i;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    const-string v1, "code"

    .line 4
    .line 5
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/i;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v4, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v6, "override the loading url that is "

    .line 18
    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, 0x0

    .line 30
    aput-object v5, v4, v6

    .line 31
    .line 32
    invoke-static {v2, v4}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getRedirectUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    const-string p1, "#"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/2addr p1, v3

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Lcom/baidu/oauth/sdkbqt/result/b;

    .line 75
    .line 76
    invoke-direct {p2}, Lcom/baidu/oauth/sdkbqt/result/b;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "error"

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_0

    .line 86
    .line 87
    const/16 v0, -0xcc

    .line 88
    .line 89
    invoke-virtual {p2, v0}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 90
    .line 91
    .line 92
    const-string v0, "error_description"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultMsg(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->c(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/callback/b;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1, p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    .line 114
    .line 115
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string p1, "showLogin"

    .line 133
    .line 134
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->d(Lcom/baidu/oauth/sdkbqt/auth/i;)Z

    .line 137
    .line 138
    .line 139
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const-string v1, "1"

    .line 141
    .line 142
    if-eqz v0, :cond_1

    .line 143
    .line 144
    move-object v0, v1

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    :try_start_1
    const-string v0, "0"

    .line 147
    .line 148
    :goto_0
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    const-string p1, "finishLogin"

    .line 152
    .line 153
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    iput-object v2, p2, Lcom/baidu/oauth/sdkbqt/result/b;->a:Lorg/json/JSONObject;

    .line 157
    .line 158
    invoke-virtual {p2, v6}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->c(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/callback/b;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-interface {p1, p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onSuccess(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception p1

    .line 172
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    const/16 p1, -0xc9

    .line 176
    .line 177
    invoke-virtual {p2, p1}, Lcom/baidu/oauth/sdkbqt/result/OauthResult;->setResultCode(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->c(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/callback/b;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-interface {p1, p2}, Lcom/baidu/oauth/sdkbqt/callback/OauthCallback;->onFailure(Lcom/baidu/oauth/sdkbqt/result/OauthResult;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/t;->a:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->c()V

    .line 192
    .line 193
    .line 194
    return v3

    .line 195
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    return p1
.end method
