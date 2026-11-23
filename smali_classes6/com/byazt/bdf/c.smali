.class public Lcom/byazt/bdf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/h;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x971,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x5

    .line 15
    const/4 v2, 0x4

    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_0
    invoke-virtual {p0}, Lcom/byazt/bdf/c;->getLiveSupportCode()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :pswitch_1
    invoke-virtual {p0}, Lcom/byazt/bdf/c;->createVideoCacheDir()Lcom/byazt/fk/c;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/byazt/fk/tt;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/byazt/fk/tt;-><init>(Lcom/byazt/fk/c;)V

    .line 42
    .line 43
    .line 44
    move-object p1, v0

    .line 45
    :cond_0
    return-object p1

    .line 46
    :pswitch_2
    invoke-virtual {p0}, Lcom/byazt/bdf/c;->createVideoPreload()Lcom/byazt/fk/da;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    new-instance v0, Lcom/byazt/fk/t;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/byazt/fk/t;-><init>(Lcom/byazt/fk/da;)V

    .line 55
    .line 56
    .line 57
    move-object p1, v0

    .line 58
    :cond_1
    return-object p1

    .line 59
    :pswitch_3
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/byazt/bdf/c;->openDebugLog(Z)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_4
    invoke-virtual {p0}, Lcom/byazt/bdf/c;->isTTVideoOk()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :pswitch_5
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const/4 v5, 0x6

    .line 104
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    move-object v6, v0

    .line 109
    check-cast v6, Landroid/content/Context;

    .line 110
    .line 111
    move-object v7, v4

    .line 112
    check-cast v7, Ljava/lang/String;

    .line 113
    .line 114
    check-cast v3, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    move-object v9, v2

    .line 121
    check-cast v9, [Ljava/lang/String;

    .line 122
    .line 123
    move-object v10, v1

    .line 124
    check-cast v10, [J

    .line 125
    .line 126
    check-cast p1, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    move-object v5, p0

    .line 133
    invoke-virtual/range {v5 .. v11}, Lcom/byazt/bdf/c;->preloadTTVideo(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZ)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_6
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast v0, Landroid/content/Context;

    .line 146
    .line 147
    check-cast p1, Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p0, v0, p1}, Lcom/byazt/bdf/c;->createTTVideoPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/fk/sp;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_2

    .line 154
    .line 155
    new-instance v0, Lcom/byazt/fk/i;

    .line 156
    .line 157
    invoke-direct {v0, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    .line 158
    .line 159
    .line 160
    move-object p1, v0

    .line 161
    :cond_2
    return-object p1

    .line 162
    :pswitch_7
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    move-object v6, v0

    .line 183
    check-cast v6, Landroid/content/Context;

    .line 184
    .line 185
    check-cast v4, Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    check-cast v3, Ljava/lang/Long;

    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide v8

    .line 197
    move-object v10, v2

    .line 198
    check-cast v10, Lorg/json/JSONObject;

    .line 199
    .line 200
    move-object v11, p1

    .line 201
    check-cast v11, Landroid/os/Looper;

    .line 202
    .line 203
    move-object v5, p0

    .line 204
    invoke-virtual/range {v5 .. v11}, Lcom/byazt/bdf/c;->createTTLiveVideoPlayer(Landroid/content/Context;ZJLorg/json/JSONObject;Landroid/os/Looper;)Lcom/byazt/fk/sp;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-eqz p1, :cond_3

    .line 209
    .line 210
    new-instance v0, Lcom/byazt/fk/i;

    .line 211
    .line 212
    invoke-direct {v0, p1}, Lcom/byazt/fk/i;-><init>(Lcom/byazt/fk/sp;)V

    .line 213
    .line 214
    .line 215
    move-object p1, v0

    .line 216
    :cond_3
    return-object p1

    .line 217
    :goto_0
    const/4 p1, 0x0

    .line 218
    return-object p1

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createTTLiveVideoPlayer(Landroid/content/Context;ZJLorg/json/JSONObject;Landroid/os/Looper;)Lcom/byazt/fk/sp;
    .locals 8

    .line 1
    new-instance v7, Lcom/byazt/ir/c;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/byazt/ir/c;-><init>(Landroid/content/Context;ZJLorg/json/JSONObject;Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    return-object v7
.end method

.method public createTTVideoPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/fk/sp;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/jy/tt;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/byazt/jy/tt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createVideoCacheDir()Lcom/byazt/fk/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/fd/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/fd/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createVideoPreload()Lcom/byazt/fk/da;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/au/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/au/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getLiveSupportCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTTVideoOk()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/jy/tt;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public openDebugLog(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/jy/c;->c(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public preloadTTVideo(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZ)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/byazt/jy/tt;->c(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
