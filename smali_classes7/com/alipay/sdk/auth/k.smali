.class final Lcom/alipay/sdk/auth/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/StringBuilder;

.field final synthetic d:Lcom/alipay/sdk/auth/a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/StringBuilder;Lcom/alipay/sdk/auth/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/auth/k;->b:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/auth/k;->c:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/alipay/sdk/auth/k;->d:Lcom/alipay/sdk/auth/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    .line 5
    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/alipay/sdk/auth/k;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/alipay/sdk/auth/k;->c:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/packet/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->f()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/alipay/sdk/auth/j;->f()Lcom/alipay/sdk/widget/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    .line 35
    .line 36
    :cond_0
    const-string v1, "?resultCode=202"

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/alipay/sdk/auth/k;->d:Lcom/alipay/sdk/auth/a;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/alipay/sdk/auth/a;->d()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/alipay/sdk/auth/j;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/alipay/sdk/auth/k;->b:Landroid/app/Activity;

    .line 65
    .line 66
    invoke-static {}, Lcom/alipay/sdk/auth/j;->h()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/j;->d(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->f()V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void

    .line 87
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Lcom/alipay/sdk/packet/b;->a()Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v2, "form"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v2, "onload"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lw/a;->b(Lorg/json/JSONObject;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-ge v3, v4, :cond_4

    .line 114
    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lw/a;

    .line 120
    .line 121
    iget-object v4, v4, Lw/a;->a:Lcom/alipay/sdk/protocol/a;

    .line 122
    .line 123
    sget-object v5, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    .line 124
    .line 125
    if-ne v4, v5, :cond_3

    .line 126
    .line 127
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lw/a;

    .line 132
    .line 133
    iget-object v0, v0, Lw/a;->c:[Ljava/lang/String;

    .line 134
    .line 135
    aget-object v0, v0, v2

    .line 136
    .line 137
    invoke-static {v0}, Lcom/alipay/sdk/auth/j;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    :goto_2
    invoke-static {}, Lcom/alipay/sdk/auth/j;->h()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/alipay/sdk/auth/k;->d:Lcom/alipay/sdk/auth/a;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/alipay/sdk/auth/a;->d()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/alipay/sdk/auth/j;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/alipay/sdk/auth/k;->b:Landroid/app/Activity;

    .line 179
    .line 180
    invoke-static {}, Lcom/alipay/sdk/auth/j;->h()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/j;->d(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-eqz v0, :cond_5

    .line 192
    .line 193
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->f()V

    .line 198
    .line 199
    .line 200
    :cond_5
    return-void

    .line 201
    :cond_6
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/alipay/sdk/auth/k;->b:Landroid/app/Activity;

    .line 204
    .line 205
    const-class v2, Lcom/alipay/sdk/auth/AuthActivity;

    .line 206
    .line 207
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .line 209
    .line 210
    const-string v1, "params"

    .line 211
    .line 212
    invoke-static {}, Lcom/alipay/sdk/auth/j;->h()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    const-string v1, "redirectUri"

    .line 220
    .line 221
    iget-object v2, p0, Lcom/alipay/sdk/auth/k;->d:Lcom/alipay/sdk/auth/a;

    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/alipay/sdk/auth/a;->d()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Lcom/alipay/sdk/auth/k;->b:Landroid/app/Activity;

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_8

    .line 240
    .line 241
    :goto_3
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->f()V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :catchall_1
    move-exception v0

    .line 250
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    if-eqz v1, :cond_7

    .line 255
    .line 256
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->f()V

    .line 261
    .line 262
    .line 263
    :cond_7
    throw v0

    .line 264
    :catch_0
    nop

    .line 265
    invoke-static {}, Lcom/alipay/sdk/auth/j;->a()Lcom/alipay/sdk/widget/a;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-eqz v0, :cond_8

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_8
    return-void
.end method
