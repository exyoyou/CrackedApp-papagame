.class Lcom/join/mgps/hmcloud/HMCloudGameManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/hmcloud/HMCloudGameManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/hmcloud/HMCloudGameManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/hmcloud/HMCloudGameManager$a;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->d(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/hmcloud/HMCloudGameManager$a;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic d(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->B:I

    .line 4
    .line 5
    const-wide v2, 0x3ffaaaaaaaaaaaabL    # 1.6666666666666667

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 12
    .line 13
    const/16 v7, 0xb4

    .line 14
    .line 15
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 16
    .line 17
    const/16 v10, 0x78

    .line 18
    .line 19
    const/16 v11, 0x3c

    .line 20
    .line 21
    const-wide/16 v12, 0x3e8

    .line 22
    .line 23
    if-ne v0, v1, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 28
    .line 29
    invoke-virtual {v0, v11}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->g(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 38
    .line 39
    invoke-virtual {v0, v8, v9}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->h(D)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 43
    .line 44
    sget-object v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)D

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    double-to-int v2, v2

    .line 53
    invoke-static {v0, v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->z(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 60
    .line 61
    invoke-virtual {v0, v10}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->g(I)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 70
    .line 71
    invoke-virtual {v0, v5, v6}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->h(D)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 75
    .line 76
    sget-object v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 77
    .line 78
    iget-object v2, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)D

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    double-to-int v2, v2

    .line 85
    invoke-static {v0, v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->z(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 92
    .line 93
    invoke-virtual {v0, v7}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->g(I)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 102
    .line 103
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->h(D)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 107
    .line 108
    sget-object v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->INIT:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 109
    .line 110
    iget-object v2, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)D

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    double-to-int v2, v2

    .line 117
    invoke-static {v0, v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->z(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->f()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->D(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/t;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_1a

    .line 137
    .line 138
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->D(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/t;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-interface {p1}, Lcom/join/mgps/hmcloud/t;->onFinishGame()V

    .line 145
    .line 146
    .line 147
    const-string p1, "\u521d\u59cb\u5316\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u7533\u8bf7\u6e38\u620f..."

    .line 148
    .line 149
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->r:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->e()V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 162
    .line 163
    iget p1, p1, Landroid/os/Message;->what:I

    .line 164
    .line 165
    invoke-static {v0, p1, v12, v13}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E(Lcom/join/mgps/hmcloud/HMCloudGameManager;IJ)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :cond_4
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->C:I

    .line 171
    .line 172
    if-ne v0, v1, :cond_a

    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 175
    .line 176
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 177
    .line 178
    invoke-virtual {v0, v11}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->g(I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 187
    .line 188
    invoke-virtual {v0, v8, v9}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->h(D)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 192
    .line 193
    sget-object v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_LOAD_RESOURCE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 194
    .line 195
    iget-object v2, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 196
    .line 197
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)D

    .line 198
    .line 199
    .line 200
    move-result-wide v2

    .line 201
    double-to-int v2, v2

    .line 202
    invoke-static {v0, v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->z(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 207
    .line 208
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 209
    .line 210
    invoke-virtual {v0, v10}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->g(I)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 219
    .line 220
    invoke-virtual {v0, v5, v6}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->h(D)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 224
    .line 225
    sget-object v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_LOAD_RESOURCE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 226
    .line 227
    iget-object v2, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 228
    .line 229
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)D

    .line 230
    .line 231
    .line 232
    move-result-wide v2

    .line 233
    double-to-int v2, v2

    .line 234
    invoke-static {v0, v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->z(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 241
    .line 242
    invoke-virtual {v0, v7}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->g(I)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 251
    .line 252
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->h(D)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 256
    .line 257
    sget-object v1, Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;->HM_LOAD_RESOURCE:Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;

    .line 258
    .line 259
    iget-object v2, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 260
    .line 261
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->a(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)D

    .line 262
    .line 263
    .line 264
    move-result-wide v2

    .line 265
    double-to-int v2, v2

    .line 266
    invoke-static {v0, v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->z(Lcom/join/mgps/hmcloud/HMCloudGameManager;Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V

    .line 267
    .line 268
    .line 269
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->f()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_9

    .line 278
    .line 279
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 280
    .line 281
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    if-eqz p1, :cond_8

    .line 286
    .line 287
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 288
    .line 289
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iget-object p1, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->s:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_8

    .line 300
    .line 301
    sget-object v5, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 302
    .line 303
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 304
    .line 305
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-wide v6, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 310
    .line 311
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 312
    .line 313
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->G(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 322
    .line 323
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    iget-object v9, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 328
    .line 329
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 330
    .line 331
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iget-object v10, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->s:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual/range {v5 .. v10}, Lcom/join/kotlin/network/message/MessageManager;->release(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 341
    .line 342
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->D(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/t;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    if-eqz p1, :cond_1a

    .line 347
    .line 348
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 349
    .line 350
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->D(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/t;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-interface {p1}, Lcom/join/mgps/hmcloud/t;->onFinishGame()V

    .line 355
    .line 356
    .line 357
    const-string p1, "\u8d44\u6e90\u52a0\u8f7d\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u7533\u8bf7\u6e38\u620f..."

    .line 358
    .line 359
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 365
    .line 366
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->s:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->e()V

    .line 369
    .line 370
    .line 371
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 372
    .line 373
    iget p1, p1, Landroid/os/Message;->what:I

    .line 374
    .line 375
    invoke-static {v0, p1, v12, v13}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E(Lcom/join/mgps/hmcloud/HMCloudGameManager;IJ)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_2

    .line 379
    .line 380
    :cond_a
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->D:I

    .line 381
    .line 382
    if-ne v0, v1, :cond_11

    .line 383
    .line 384
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 385
    .line 386
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->f()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_d

    .line 393
    .line 394
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 395
    .line 396
    invoke-static {p1, v4}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->H(Lcom/join/mgps/hmcloud/HMCloudGameManager;Z)Z

    .line 397
    .line 398
    .line 399
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 400
    .line 401
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->S()V

    .line 402
    .line 403
    .line 404
    invoke-static {}, Lcom/join/mgps/Util/v0;->c()V

    .line 405
    .line 406
    .line 407
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 408
    .line 409
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->U()V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 413
    .line 414
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    if-eqz p1, :cond_b

    .line 419
    .line 420
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 421
    .line 422
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    iget-object p1, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 427
    .line 428
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    if-eqz p1, :cond_b

    .line 433
    .line 434
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 435
    .line 436
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 437
    .line 438
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    iget-wide v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 443
    .line 444
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 445
    .line 446
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->G(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    iget-object v3, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 455
    .line 456
    invoke-static {v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    iget-object v3, v3, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->n:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/join/kotlin/network/message/MessageManager;->quitQueue(JLjava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_b
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 466
    .line 467
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->e0()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 479
    .line 480
    .line 481
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 482
    .line 483
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    if-eqz v0, :cond_c

    .line 488
    .line 489
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 490
    .line 491
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->i:Lcom/join/mgps/dto/ExtBean;

    .line 496
    .line 497
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 498
    .line 499
    .line 500
    :cond_c
    sget-object v0, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameErrorPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    sget-object v1, Lcom/papa/sim/statistic/EventP$ResultCode;->error:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    const-string v1, "cloudGameError-2.1"

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 527
    .line 528
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->o:Ljava/lang/String;

    .line 529
    .line 530
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGuideKey(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 535
    .line 536
    .line 537
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 538
    .line 539
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Landroid/content/Context;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 548
    .line 549
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_2

    .line 557
    .line 558
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 559
    .line 560
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 561
    .line 562
    invoke-virtual {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->e()V

    .line 563
    .line 564
    .line 565
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 566
    .line 567
    iget p1, p1, Landroid/os/Message;->what:I

    .line 568
    .line 569
    invoke-static {v0, p1, v12, v13}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E(Lcom/join/mgps/hmcloud/HMCloudGameManager;IJ)V

    .line 570
    .line 571
    .line 572
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 573
    .line 574
    iget-boolean p1, p1, Lcom/MApplication;->o:Z

    .line 575
    .line 576
    if-eqz p1, :cond_f

    .line 577
    .line 578
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 579
    .line 580
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->J(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Z

    .line 581
    .line 582
    .line 583
    move-result p1

    .line 584
    if-eqz p1, :cond_e

    .line 585
    .line 586
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 587
    .line 588
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Landroid/content/Context;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 593
    .line 594
    iget-object v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 595
    .line 596
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 601
    .line 602
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 603
    .line 604
    invoke-static {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->c(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)I

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 609
    .line 610
    iget-object v2, v2, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 611
    .line 612
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    sub-int/2addr v1, v2

    .line 617
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/v0;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/Notification;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    invoke-static {p1}, Lcom/join/mgps/Util/v0;->f(Landroid/app/Notification;)V

    .line 622
    .line 623
    .line 624
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 625
    .line 626
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l0()V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_2

    .line 630
    .line 631
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 632
    .line 633
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->S()V

    .line 634
    .line 635
    .line 636
    invoke-static {}, Lcom/join/mgps/Util/v0;->c()V

    .line 637
    .line 638
    .line 639
    goto/16 :goto_2

    .line 640
    .line 641
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 642
    .line 643
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->J(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Z

    .line 644
    .line 645
    .line 646
    move-result p1

    .line 647
    if-eqz p1, :cond_10

    .line 648
    .line 649
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 650
    .line 651
    iget-object v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 652
    .line 653
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    iget-object v1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 658
    .line 659
    iget-object v1, v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 660
    .line 661
    invoke-static {v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->c(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)I

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 666
    .line 667
    iget-object v2, v2, Lcom/join/mgps/hmcloud/HMCloudGameManager;->t:Lcom/join/mgps/hmcloud/HMCloudGameManager$g;

    .line 668
    .line 669
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager$g;->b(Lcom/join/mgps/hmcloud/HMCloudGameManager$g;)I

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    sub-int/2addr v1, v2

    .line 674
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h1(Ljava/lang/String;I)V

    .line 675
    .line 676
    .line 677
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 678
    .line 679
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l0()V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_2

    .line 683
    .line 684
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 685
    .line 686
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->S()V

    .line 687
    .line 688
    .line 689
    invoke-static {}, Lcom/join/mgps/Util/v0;->c()V

    .line 690
    .line 691
    .line 692
    goto/16 :goto_2

    .line 693
    .line 694
    :cond_11
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->G:I

    .line 695
    .line 696
    if-ne v0, p1, :cond_14

    .line 697
    .line 698
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 699
    .line 700
    invoke-virtual {p1}, Lcom/join/kotlin/network/message/MessageManager;->isMessageAlive()Z

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    if-eqz v0, :cond_13

    .line 705
    .line 706
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 707
    .line 708
    sget v1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->B:I

    .line 709
    .line 710
    const-wide/16 v2, 0xc8

    .line 711
    .line 712
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E(Lcom/join/mgps/hmcloud/HMCloudGameManager;IJ)V

    .line 713
    .line 714
    .line 715
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 716
    .line 717
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    if-eqz v0, :cond_12

    .line 722
    .line 723
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 724
    .line 725
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    iget-wide v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 730
    .line 731
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 732
    .line 733
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->G(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/kotlin/network/message/MessageManager;->joinQueue(JLjava/lang/String;)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_2

    .line 745
    .line 746
    :cond_12
    sget-object v5, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 747
    .line 748
    const v6, 0x7f080870

    .line 749
    .line 750
    .line 751
    const-string v7, "\u7f51\u7edc\u5f02\u5e38"

    .line 752
    .line 753
    const-string v8, "\u9000\u51fa\u6e38\u620f"

    .line 754
    .line 755
    const-string v9, "\u6e38\u620f\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    .line 756
    .line 757
    new-instance v10, Lcom/join/mgps/hmcloud/n;

    .line 758
    .line 759
    invoke-direct {v10, p0}, Lcom/join/mgps/hmcloud/n;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$a;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual/range {v5 .. v10}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_2

    .line 766
    .line 767
    :cond_13
    invoke-virtual {p1}, Lcom/join/kotlin/network/message/MessageManager;->initMessageClient()V

    .line 768
    .line 769
    .line 770
    goto/16 :goto_2

    .line 771
    .line 772
    :cond_14
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->H:I

    .line 773
    .line 774
    if-ne v0, p1, :cond_15

    .line 775
    .line 776
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 777
    .line 778
    invoke-virtual {p1}, Lcom/join/kotlin/network/message/MessageManager;->login()V

    .line 779
    .line 780
    .line 781
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 782
    .line 783
    iget v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v:I

    .line 784
    .line 785
    add-int/lit8 v0, v0, 0x1

    .line 786
    .line 787
    iput v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->v:I

    .line 788
    .line 789
    goto/16 :goto_2

    .line 790
    .line 791
    :cond_15
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->I:I

    .line 792
    .line 793
    if-ne v0, p1, :cond_17

    .line 794
    .line 795
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 796
    .line 797
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 798
    .line 799
    .line 800
    move-result-object p1

    .line 801
    if-eqz p1, :cond_16

    .line 802
    .line 803
    sget-object p1, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    .line 804
    .line 805
    iget-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 806
    .line 807
    invoke-static {v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    iget-wide v0, v0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 812
    .line 813
    iget-object v2, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 814
    .line 815
    invoke-static {v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->G(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;->getServerLineNum()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/kotlin/network/message/MessageManager;->queryQueueState(JLjava/lang/String;)V

    .line 824
    .line 825
    .line 826
    goto :goto_2

    .line 827
    :cond_16
    sget-object v5, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 828
    .line 829
    const v6, 0x7f080870

    .line 830
    .line 831
    .line 832
    const-string v7, "\u7f51\u7edc\u5f02\u5e38"

    .line 833
    .line 834
    const-string v8, "\u9000\u51fa\u6e38\u620f"

    .line 835
    .line 836
    const-string v9, "\u6e38\u620f\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    .line 837
    .line 838
    new-instance v10, Lcom/join/mgps/hmcloud/o;

    .line 839
    .line 840
    invoke-direct {v10, p0}, Lcom/join/mgps/hmcloud/o;-><init>(Lcom/join/mgps/hmcloud/HMCloudGameManager$a;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual/range {v5 .. v10}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->alterDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)V

    .line 844
    .line 845
    .line 846
    goto :goto_2

    .line 847
    :cond_17
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E:I

    .line 848
    .line 849
    if-ne v0, p1, :cond_19

    .line 850
    .line 851
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 852
    .line 853
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->l0()V

    .line 854
    .line 855
    .line 856
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 857
    .line 858
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->A(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Ljava/lang/ref/WeakReference;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    if-eqz p1, :cond_18

    .line 863
    .line 864
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 865
    .line 866
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->A(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Ljava/lang/ref/WeakReference;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object p1

    .line 874
    if-eqz p1, :cond_18

    .line 875
    .line 876
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 877
    .line 878
    iget-object v0, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->h:Lcom/join/mgps/Util/q0;

    .line 879
    .line 880
    invoke-static {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->A(Lcom/join/mgps/hmcloud/HMCloudGameManager;)Ljava/lang/ref/WeakReference;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object p1

    .line 888
    check-cast p1, Landroid/app/Activity;

    .line 889
    .line 890
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/q0;->v(Landroid/app/Activity;)V

    .line 891
    .line 892
    .line 893
    :cond_18
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 894
    .line 895
    sget v0, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F:I

    .line 896
    .line 897
    const-wide/16 v1, 0x1f4

    .line 898
    .line 899
    invoke-static {p1, v0, v1, v2}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->E(Lcom/join/mgps/hmcloud/HMCloudGameManager;IJ)V

    .line 900
    .line 901
    .line 902
    goto :goto_2

    .line 903
    :cond_19
    sget p1, Lcom/join/mgps/hmcloud/HMCloudGameManager;->F:I

    .line 904
    .line 905
    if-ne v0, p1, :cond_1a

    .line 906
    .line 907
    iget-object p1, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$a;->b:Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 908
    .line 909
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->j1()V

    .line 910
    .line 911
    .line 912
    :cond_1a
    :goto_2
    return v4
.end method
