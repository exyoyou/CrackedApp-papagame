.class public Lcom/byazt/ie/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x411,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/t/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "cleanspace_task"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lcom/byazt/dd/c;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Lcom/byazt/hu/n;->c(I)D

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 39
    .line 40
    add-double/2addr v1, v3

    .line 41
    iget-object v3, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    long-to-double v3, v3

    .line 48
    mul-double v1, v1, v3

    .line 49
    .line 50
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iget-object v3, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    sub-long v9, v1, v3

    .line 65
    .line 66
    const-wide/16 v1, 0x0

    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/byazt/hu/u;->tt(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-static {}, Lcom/byazt/ie/ve;->c()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/byazt/ie/ve;->tt()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->my()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-static {v5}, Lcom/byazt/hu/n;->sp(I)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v5}, Lcom/byazt/ie/ve;->c(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-static {v1, v2}, Lcom/byazt/hu/u;->tt(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    const/4 v11, 0x1

    .line 109
    const/4 v5, 0x0

    .line 110
    cmp-long v6, v1, v9

    .line 111
    .line 112
    if-ltz v6, :cond_4

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const/4 v6, 0x0

    .line 117
    :goto_0
    if-eqz v6, :cond_5

    .line 118
    .line 119
    const-string v5, "1"

    .line 120
    .line 121
    invoke-virtual {v0, v5}, Lcom/byazt/dd/tt;->t(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5, v0}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V

    .line 129
    .line 130
    .line 131
    new-instance v5, Lorg/json/JSONObject;

    .line 132
    .line 133
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .line 135
    .line 136
    :try_start_0
    const-string v6, "quite_clean_size"

    .line 137
    .line 138
    sub-long/2addr v1, v3

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v2, "cleanspace_download_after_quite_clean"

    .line 156
    .line 157
    invoke-virtual {v1, v2, v5, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/byazt/zz/Downloader;->restart(I)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_5
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    invoke-virtual {v0, v5}, Lcom/byazt/dd/tt;->uj(Z)V

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lcom/byazt/ie/uj;->c()Lcom/byazt/ie/uj;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->c()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v3, Lcom/byazt/ie/tt$1;

    .line 196
    .line 197
    invoke-direct {v3, p0, v0}, Lcom/byazt/ie/tt$1;-><init>(Lcom/byazt/ie/tt;Lcom/byazt/dd/tt;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2, v3}, Lcom/byazt/ie/uj;->c(Ljava/lang/String;Lcom/byazt/ie/n;)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    iget-object v1, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    iget-object v1, p0, Lcom/byazt/ie/tt;->c:Lcom/byazt/t/DownloadInfo;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    const/4 v8, 0x1

    .line 220
    invoke-interface/range {v5 .. v10}, Lcom/byazt/ou/z;->c(ILjava/lang/String;ZJ)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_6

    .line 225
    .line 226
    invoke-virtual {v0, v11}, Lcom/byazt/dd/tt;->n(Z)V

    .line 227
    .line 228
    .line 229
    :cond_6
    return-void

    .line 230
    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    .line 231
    .line 232
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .line 234
    .line 235
    :try_start_1
    const-string v2, "show_dialog_result"

    .line 236
    .line 237
    const/4 v3, 0x3

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :catch_1
    move-exception v2

    .line 247
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    :goto_2
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    const-string v3, "cleanspace_window_show"

    .line 255
    .line 256
    invoke-virtual {v2, v3, v1, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 257
    .line 258
    .line 259
    return-void
.end method
