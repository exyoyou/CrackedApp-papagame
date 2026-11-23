.class Lcom/baidu/oauth/sdkbqt/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/oauth/sdkbqt/auth/i$d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/k;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/oauth/sdkbqt/view/k;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/baidu/oauth/sdkbqt/view/k;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/baidu/oauth/sdkbqt/view/k;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    const-string v1, "openid"

    .line 4
    .line 5
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->a()Ljava/lang/String;

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
    const-string v6, "the url of BdOauthWebCallback is "

    .line 18
    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    new-instance v2, Landroid/content/Intent;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "errNo"

    .line 46
    .line 47
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/16 v5, -0x12d

    .line 52
    .line 53
    if-ne p1, v5, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/k;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 56
    .line 57
    const/16 v0, -0xcd

    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->a(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/k;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    const v5, 0x138e7

    .line 73
    .line 74
    .line 75
    const-string v7, "1"

    .line 76
    .line 77
    if-eq p1, v5, :cond_3

    .line 78
    .line 79
    const v5, 0x138e8

    .line 80
    .line 81
    .line 82
    if-ne p1, v5, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 86
    .line 87
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v3, "accessToken"

    .line 91
    .line 92
    const-string v5, "access_token"

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    const-string v1, "expiresIn"

    .line 109
    .line 110
    const-string v3, "expires_in"

    .line 111
    .line 112
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    const-string v1, "scope"

    .line 120
    .line 121
    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/view/k;->c:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string v1, "code"

    .line 127
    .line 128
    const-string v3, "authorization_code"

    .line 129
    .line 130
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    const-string v1, "showLogin"

    .line 138
    .line 139
    iget-object v3, p0, Lcom/baidu/oauth/sdkbqt/view/k;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 140
    .line 141
    invoke-static {v3}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->a(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_2

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    const-string v7, "0"

    .line 149
    .line 150
    :goto_0
    invoke-virtual {p1, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    const-string v0, "extra_oauth_result_json"

    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/k;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 170
    .line 171
    const/4 v0, -0x1

    .line 172
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_3
    :goto_1
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->a()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-array v0, v3, [Ljava/lang/Object;

    .line 181
    .line 182
    const-string v1, "oauth_sso_hash is old, just need generate a new value"

    .line 183
    .line 184
    aput-object v1, v0, v6

    .line 185
    .line 186
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    new-instance p1, Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v0, "client"

    .line 195
    .line 196
    const-string v1, "android"

    .line 197
    .line 198
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    const-string v0, "clientfrom"

    .line 202
    .line 203
    const-string v1, "native"

    .line 204
    .line 205
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const-string v0, "suppcheck"

    .line 209
    .line 210
    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const-string v0, "oauth_redirect_uri"

    .line 214
    .line 215
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/k;->a:Ljava/lang/String;

    .line 216
    .line 217
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const-string v0, "getauthorizationcode"

    .line 221
    .line 222
    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/k;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/view/a;->oauthWebView:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/view/k;->b:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0, v1, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :catch_0
    move-exception p1

    .line 236
    invoke-static {p1}, Lcom/baidu/oauth/sdkbqt/a/d;->a(Ljava/lang/Throwable;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/k;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 240
    .line 241
    const/16 v0, -0xc9

    .line 242
    .line 243
    invoke-static {p1, v0}, Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;->a(Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;I)Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {p1, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 248
    .line 249
    .line 250
    :goto_2
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/k;->d:Lcom/baidu/oauth/sdkbqt/view/WebViewActivity;

    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 253
    .line 254
    .line 255
    return-void
.end method
