.class Lcom/baidu/mobads/sdk/internal/cd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/mobads/sdk/internal/cb;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/sdk/internal/cb;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CODE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "APK_INFO"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/baidu/mobads/sdk/internal/bz;

    .line 22
    .line 23
    const-string v1, "OK"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v2, "ApkLoader"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    new-instance v0, Lcom/baidu/mobads/sdk/internal/bu;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/bz;->e()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v4, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 41
    .line 42
    invoke-static {v4}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-direct {v0, v1, v4, p1}, Lcom/baidu/mobads/sdk/internal/bu;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/baidu/mobads/sdk/internal/bz;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 50
    .line 51
    iget-object v4, v1, Lcom/baidu/mobads/sdk/internal/cb;->u:Landroid/os/Handler;

    .line 52
    .line 53
    sget-object v5, Lcom/baidu/mobads/sdk/internal/cb;->t:Landroid/os/Handler;

    .line 54
    .line 55
    if-ne v4, v5, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/bu;->a()V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cb;->f()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/internal/bu;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcom/baidu/mobads/sdk/internal/cb;->p:Lcom/baidu/mobads/sdk/internal/bp;

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    sget-object v1, Lcom/baidu/mobads/sdk/internal/cb;->p:Lcom/baidu/mobads/sdk/internal/bp;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/bz;->b()D

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    iput-wide v4, v1, Lcom/baidu/mobads/sdk/internal/bp;->b:D

    .line 78
    .line 79
    :cond_0
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->b(Lcom/baidu/mobads/sdk/internal/cb;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->c(Lcom/baidu/mobads/sdk/internal/cb;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 93
    .line 94
    invoke-static {p1, v3}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;Z)Z

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->d(Lcom/baidu/mobads/sdk/internal/cb;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const-string v4, "load remote file just downloaded"

    .line 104
    .line 105
    invoke-static {p1, v1, v4}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;ZLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {v1, v0}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;Lcom/baidu/mobads/sdk/internal/bu;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cb;->f()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bu;->a(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    invoke-static {p1, v1}, Lcom/baidu/mobads/sdk/internal/cb;->b(Lcom/baidu/mobads/sdk/internal/cb;Z)V
    :try_end_0
    .catch Lcom/baidu/mobads/sdk/internal/cb$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception p1

    .line 132
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v4, "download apk file failed: "

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 154
    .line 155
    invoke-static {v1, v3}, Lcom/baidu/mobads/sdk/internal/cb;->b(Lcom/baidu/mobads/sdk/internal/cb;Z)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 159
    .line 160
    invoke-static {v1}, Lcom/baidu/mobads/sdk/internal/cb;->e(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bv;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1, v2, p1}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_3
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->e(Lcom/baidu/mobads/sdk/internal/cb;)Lcom/baidu/mobads/sdk/internal/bv;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v4, "mOnApkDownloadCompleted: download failed, code: "

    .line 184
    .line 185
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1, v2, v0}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 199
    .line 200
    invoke-static {p1, v3}, Lcom/baidu/mobads/sdk/internal/cb;->b(Lcom/baidu/mobads/sdk/internal/cb;Z)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 204
    .line 205
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/cb;->c(Lcom/baidu/mobads/sdk/internal/cb;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_4

    .line 210
    .line 211
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 212
    .line 213
    invoke-static {p1, v3}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;Z)Z

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/cd;->a:Lcom/baidu/mobads/sdk/internal/cb;

    .line 217
    .line 218
    const-string v0, "Refused to download remote for version..."

    .line 219
    .line 220
    invoke-static {p1, v3, v0}, Lcom/baidu/mobads/sdk/internal/cb;->a(Lcom/baidu/mobads/sdk/internal/cb;ZLjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    :goto_2
    return-void
.end method
