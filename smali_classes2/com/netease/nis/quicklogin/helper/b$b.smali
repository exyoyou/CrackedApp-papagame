.class Lcom/netease/nis/quicklogin/helper/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cmic/gen/sdk/auth/GenTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/b;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/b;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onGetTokenComplete(ILorg/json/JSONObject;)V
    .locals 9

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onePass [callback]"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    const-string p1, "resultCode"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "103000"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 37
    const-string v1, "200020"

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :try_start_1
    const-string v0, "token"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    :try_start_2
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/netease/nis/quicklogin/helper/b;->c(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lcom/netease/nis/quicklogin/utils/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    :goto_0
    sget v3, Lcom/netease/nis/quicklogin/b/a;->a:I

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    if-ne v3, v4, :cond_0

    .line 75
    .line 76
    iget-object v3, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v5, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    .line 81
    .line 82
    invoke-static {v5, v0, v2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v3, v4, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v2, v3, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    :try_start_4
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v4, "\u79fb\u52a8 onePass [error]"

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-interface {v0, v2, v3}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    .line 136
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 144
    .line 145
    const-string v3, "RETURN_DATA_ERROR"

    .line 146
    .line 147
    const-string v4, "cmOnePass"

    .line 148
    .line 149
    :try_start_6
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->b(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 153
    const-string v6, "\u79fb\u52a8\u53f7\u7801\u8ba4\u8bc1\u8fd4\u56de\u503c\u9519\u8bef"

    .line 154
    .line 155
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v7, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    .line 161
    .line 162
    invoke-static {v7}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v7, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    .line 170
    .line 171
    invoke-static {v7}, Lcom/netease/nis/quicklogin/helper/b;->b(Lcom/netease/nis/quicklogin/helper/b;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-static/range {v2 .. v8}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_3
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_4

    .line 194
    .line 195
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 196
    .line 197
    if-eqz p1, :cond_4

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onCancelGetToken()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catch_2
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    const-string v2, "JSON_ENCRYPT_ERROR"

    .line 222
    .line 223
    const-string v3, "cmOnePass"

    .line 224
    .line 225
    const/4 v4, -0x2

    .line 226
    invoke-static/range {v1 .. v6}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_4
    :goto_3
    return-void
.end method
