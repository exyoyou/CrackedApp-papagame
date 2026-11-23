.class Lcom/join/mgps/fragment/v$l$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v$l;->startGame(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/fragment/v$l;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v$l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$gid",
            "val$cheatID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v$l$c0;->d:Lcom/join/mgps/fragment/v$l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/v$l$c0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/v$l$c0;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$c0;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->J(Ljava/lang/String;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_7

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const-string v1, ""

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    move-object v3, v1

    .line 27
    const/4 v4, 0x0

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    sget-object v7, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const/4 v8, 0x1

    .line 56
    const/4 v9, 0x5

    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v4, v7}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v4, v9, :cond_1

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const/4 v4, 0x0

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iget-object v5, p0, Lcom/join/mgps/fragment/v$l$c0;->d:Lcom/join/mgps/fragment/v$l;

    .line 92
    .line 93
    iget-object v5, v5, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 94
    .line 95
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v5}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget-object v7, p0, Lcom/join/mgps/fragment/v$l$c0;->d:Lcom/join/mgps/fragment/v$l;

    .line 104
    .line 105
    iget-object v7, v7, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 106
    .line 107
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v5, v7, v10}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_0

    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-ne v5, v9, :cond_0

    .line 126
    .line 127
    const/4 v5, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_3
    if-eqz v4, :cond_4

    .line 130
    .line 131
    if-eqz v5, :cond_4

    .line 132
    .line 133
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    if-eqz v4, :cond_5

    .line 143
    .line 144
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    if-eqz v5, :cond_6

    .line 154
    .line 155
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    goto :goto_1

    .line 164
    :cond_6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-nez v0, :cond_8

    .line 173
    .line 174
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    goto :goto_1

    .line 183
    :cond_7
    const/4 v0, 0x0

    .line 184
    :cond_8
    :goto_1
    if-nez v0, :cond_9

    .line 185
    .line 186
    return-void

    .line 187
    :cond_9
    const-string v1, "login"

    .line 188
    .line 189
    iget-object v2, p0, Lcom/join/mgps/fragment/v$l$c0;->c:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_a

    .line 196
    .line 197
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$c0;->d:Lcom/join/mgps/fragment/v$l;

    .line 198
    .line 199
    iget-object v1, v1, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 200
    .line 201
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/join/mgps/fragment/v$l$c0;->c:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->p4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_a
    iget-object v1, p0, Lcom/join/mgps/fragment/v$l$c0;->d:Lcom/join/mgps/fragment/v$l;

    .line 212
    .line 213
    iget-object v1, v1, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 214
    .line 215
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :goto_2
    return-void
.end method
