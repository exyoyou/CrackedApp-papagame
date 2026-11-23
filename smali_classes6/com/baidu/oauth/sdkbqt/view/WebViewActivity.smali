.class public Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;
.super Lcom/baidu/oauth/sdkbqt/view/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "WebViewActivity"

.field private static final b:Ljava/lang/String; = "extra_oauth_result_json"

.field private static final c:I = -0xc9

.field private static final d:I = -0xcd


# instance fields
.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/oauth/sdkbqt/view/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->f:Z

    .line 8
    .line 9
    return-void
.end method

.method private a(I)Landroid/content/Intent;
    .locals 5

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "code"

    .line 7
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "showLogin"

    .line 8
    iget-boolean v2, p0, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->e:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    :try_start_1
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "finishLogin"

    .line 9
    iget-boolean v2, p0, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->f:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/Throwable;)V

    :goto_2
    const-string p1, "extra_oauth_result_json"

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;I)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->a(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->f:Z

    return p1
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v1, -0xa0a0b

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->c()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/BdOauthSdk;->getAuthInfo()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getFindViewDelegate()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo;->getFindViewDelegate()Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "layout_bd_oauth_sdk_webview_with_title"

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/AuthInfo$FindViewDelegate;->oauthResID(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget p1, Lcom/baidu/oauth/sdkbqt/R$layout;->layout_bd_oauth_sdk_webview_with_title:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/baidu/oauth/sdkbqt/auth/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput-boolean p1, p0, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->e:Z

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->b()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->setupViews()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    const/16 p1, -0xc9

    .line 61
    .line 62
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/i;->a(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method protected onFinish()V
    .locals 2

    .line 1
    const/16 v0, -0xcd

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/i;->a(I)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected setupViews()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/baidu/oauth/sdkbqt/view/a;->setupViews()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u767e\u5ea6"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/baidu/oauth/sdkbqt/view/a;->setTitle(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "extra_redirect_url"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "extra_qr_code_url"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "extra_scope"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "extra_degrade_h5_auth"

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v6, "extra_degrade_exempt_auth_page"

    .line 55
    .line 56
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-object v6, p0, Lcom/baidu/oauth/sdkbqt/view/a;->oauthWebView:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 61
    .line 62
    new-instance v7, Lcom/baidu/oauth/sdkbqt/view/j;

    .line 63
    .line 64
    invoke-direct {v7, p0}, Lcom/baidu/oauth/sdkbqt/view/j;-><init>(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v7}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Lcom/baidu/oauth/sdkbqt/callback/b;)V

    .line 68
    .line 69
    .line 70
    new-instance v6, Lcom/baidu/oauth/sdkbqt/view/k;

    .line 71
    .line 72
    invoke-direct {v6, p0, v0, v1, v2}, Lcom/baidu/oauth/sdkbqt/view/k;-><init>(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lcom/baidu/oauth/sdkbqt/auth/i$c;

    .line 76
    .line 77
    invoke-direct {v2}, Lcom/baidu/oauth/sdkbqt/auth/i$c;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, v2, Lcom/baidu/oauth/sdkbqt/auth/i$c;->b:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v6, v2, Lcom/baidu/oauth/sdkbqt/auth/i$c;->a:Lcom/baidu/oauth/sdkbqt/auth/i$d;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/baidu/oauth/sdkbqt/view/a;->oauthWebView:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 85
    .line 86
    invoke-virtual {v6, v2}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Lcom/baidu/oauth/sdkbqt/auth/i$c;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v6, "extra_oauth_state"

    .line 94
    .line 95
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const-string v7, "extra_guid_type"

    .line 104
    .line 105
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const/4 v6, 0x1

    .line 110
    if-ne v5, v6, :cond_0

    .line 111
    .line 112
    new-instance v2, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v3, "client"

    .line 118
    .line 119
    const-string v4, "android"

    .line 120
    .line 121
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    const-string v3, "clientfrom"

    .line 125
    .line 126
    const-string v4, "native"

    .line 127
    .line 128
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    const-string v3, "suppcheck"

    .line 132
    .line 133
    const-string v4, "1"

    .line 134
    .line 135
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const-string v3, "oauth_redirect_uri"

    .line 139
    .line 140
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const-string v0, "getauthorizationcode"

    .line 144
    .line 145
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->oauthWebView:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_0
    if-eqz v4, :cond_1

    .line 155
    .line 156
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->oauthWebView:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Lcom/baidu/oauth/sdkbqt/auth/i;->c(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_1
    if-eqz v3, :cond_2

    .line 163
    .line 164
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->oauthWebView:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Lcom/baidu/oauth/sdkbqt/auth/i;->b(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/a;->oauthWebView:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    return-void
.end method
