.class public Lcom/join/mgps/customview/PlayerInfoContainerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/PlayerInfoContainerView$a;,
        Lcom/join/mgps/customview/PlayerInfoContainerView$b;
    }
.end annotation


# instance fields
.field private b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

.field c:Landroid/app/Activity;

.field d:I

.field e:Lapp/mgsim/arena/UserType;

.field private f:Lcom/join/mgps/customview/PlayerInfoContainerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 2
    iput-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->d:I

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x4

    new-array v0, p2, [Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 7
    iput p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->d:I

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->f:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 6
    .line 7
    new-instance v2, Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, p0, p1, p0, v3}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 11
    .line 12
    .line 13
    aput-object v2, v1, v0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 16
    .line 17
    new-instance v1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, p0, p1, p0, v2}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 21
    .line 22
    .line 23
    aput-object v1, v0, v3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-direct {v1, p0, p1, p0, v3}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 31
    .line 32
    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 36
    .line 37
    new-instance v1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-direct {v1, p0, p1, p0, v2}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 41
    .line 42
    .line 43
    aput-object v1, v0, v3

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public c(Lcom/papa91/battle/protocol/GameRoom;ILandroid/app/Activity;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameRoom",
            "currentUid",
            "activity"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->d:I

    .line 8
    .line 9
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-static {p1, p3}, Lcom/join/mgps/socket/fight/arena/c;->f(Lcom/papa91/battle/protocol/GameRoom;Lcom/join/mgps/Util/b;)Lapp/mgsim/arena/UserType;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->e:Lapp/mgsim/arena/UserType;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iget v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->d:I

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    const/4 v3, 0x2

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eq v0, v4, :cond_15

    .line 32
    .line 33
    if-eq v0, v3, :cond_10

    .line 34
    .line 35
    if-eq v0, v2, :cond_9

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    if-eq v0, v1, :cond_0

    .line 39
    .line 40
    goto/16 :goto_14

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 71
    .line 72
    aget-object v0, v0, v5

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-ne v6, p3, :cond_1

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v6, 0x0

    .line 91
    :goto_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-ne v7, p2, :cond_2

    .line 100
    .line 101
    const/4 v7, 0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const/4 v7, 0x0

    .line 104
    :goto_1
    invoke-virtual {v0, v1, v6, v7}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 108
    .line 109
    aget-object v0, v0, v4

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-ne v6, p3, :cond_3

    .line 124
    .line 125
    const/4 v6, 0x1

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const/4 v6, 0x0

    .line 128
    :goto_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v7}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-ne v7, p2, :cond_4

    .line 137
    .line 138
    const/4 v7, 0x1

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    const/4 v7, 0x0

    .line 141
    :goto_3
    invoke-virtual {v0, v1, v6, v7}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 145
    .line 146
    aget-object v0, v0, v3

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-ne v3, p3, :cond_5

    .line 161
    .line 162
    const/4 v3, 0x1

    .line 163
    goto :goto_4

    .line 164
    :cond_5
    const/4 v3, 0x0

    .line 165
    :goto_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-ne v6, p2, :cond_6

    .line 174
    .line 175
    const/4 v6, 0x1

    .line 176
    goto :goto_5

    .line 177
    :cond_6
    const/4 v6, 0x0

    .line 178
    :goto_5
    invoke-virtual {v0, v1, v3, v6}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 182
    .line 183
    aget-object v0, v0, v2

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-ne v2, p3, :cond_7

    .line 198
    .line 199
    const/4 p3, 0x1

    .line 200
    goto :goto_6

    .line 201
    :cond_7
    const/4 p3, 0x0

    .line 202
    :goto_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-ne p1, p2, :cond_8

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_8
    const/4 v4, 0x0

    .line 214
    :goto_7
    invoke-virtual {v0, v1, p3, v4}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_14

    .line 218
    .line 219
    :cond_9
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 248
    .line 249
    aget-object v0, v0, v5

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-ne v2, p3, :cond_a

    .line 264
    .line 265
    const/4 v2, 0x1

    .line 266
    goto :goto_8

    .line 267
    :cond_a
    const/4 v2, 0x0

    .line 268
    :goto_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-ne v6, p2, :cond_b

    .line 277
    .line 278
    const/4 v6, 0x1

    .line 279
    goto :goto_9

    .line 280
    :cond_b
    const/4 v6, 0x0

    .line 281
    :goto_9
    invoke-virtual {v0, v1, v2, v6}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 285
    .line 286
    aget-object v0, v0, v4

    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-ne v2, p3, :cond_c

    .line 301
    .line 302
    const/4 v2, 0x1

    .line 303
    goto :goto_a

    .line 304
    :cond_c
    const/4 v2, 0x0

    .line 305
    :goto_a
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-ne v6, p2, :cond_d

    .line 314
    .line 315
    const/4 v6, 0x1

    .line 316
    goto :goto_b

    .line 317
    :cond_d
    const/4 v6, 0x0

    .line 318
    :goto_b
    invoke-virtual {v0, v1, v2, v6}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 322
    .line 323
    aget-object v0, v0, v3

    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-ne v2, p3, :cond_e

    .line 338
    .line 339
    const/4 p3, 0x1

    .line 340
    goto :goto_c

    .line 341
    :cond_e
    const/4 p3, 0x0

    .line 342
    :goto_c
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-ne p1, p2, :cond_f

    .line 351
    .line 352
    goto :goto_d

    .line 353
    :cond_f
    const/4 v4, 0x0

    .line 354
    :goto_d
    invoke-virtual {v0, v1, p3, v4}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_14

    .line 358
    .line 359
    :cond_10
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 388
    .line 389
    aget-object v0, v0, v5

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-ne v2, p3, :cond_11

    .line 404
    .line 405
    const/4 v2, 0x1

    .line 406
    goto :goto_e

    .line 407
    :cond_11
    const/4 v2, 0x0

    .line 408
    :goto_e
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-ne v3, p2, :cond_12

    .line 417
    .line 418
    const/4 v3, 0x1

    .line 419
    goto :goto_f

    .line 420
    :cond_12
    const/4 v3, 0x0

    .line 421
    :goto_f
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 422
    .line 423
    .line 424
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 425
    .line 426
    aget-object v0, v0, v4

    .line 427
    .line 428
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    if-ne v2, p3, :cond_13

    .line 441
    .line 442
    const/4 p3, 0x1

    .line 443
    goto :goto_10

    .line 444
    :cond_13
    const/4 p3, 0x0

    .line 445
    :goto_10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    if-ne p1, p2, :cond_14

    .line 454
    .line 455
    goto :goto_11

    .line 456
    :cond_14
    const/4 v4, 0x0

    .line 457
    :goto_11
    invoke-virtual {v0, v1, p3, v4}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 458
    .line 459
    .line 460
    goto :goto_14

    .line 461
    :cond_15
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:[Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 490
    .line 491
    aget-object v0, v0, v5

    .line 492
    .line 493
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-ne v2, p3, :cond_16

    .line 506
    .line 507
    const/4 p3, 0x1

    .line 508
    goto :goto_12

    .line 509
    :cond_16
    const/4 p3, 0x0

    .line 510
    :goto_12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    if-ne p1, p2, :cond_17

    .line 519
    .line 520
    goto :goto_13

    .line 521
    :cond_17
    const/4 v4, 0x0

    .line 522
    :goto_13
    invoke-virtual {v0, v1, p3, v4}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V

    .line 523
    .line 524
    .line 525
    :goto_14
    return-void
.end method

.method public setPlayerInfoCallback(Lcom/join/mgps/customview/PlayerInfoContainerView$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView;->f:Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 2
    .line 3
    return-void
.end method
