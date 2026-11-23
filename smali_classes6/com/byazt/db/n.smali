.class public Lcom/byazt/db/n;
.super Lcom/byazt/db/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2de,
        0x2e
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/dv/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/db/uj;-><init>(Lcom/byazt/dv/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()Lcom/byazt/ln/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/ln/c;

    .line 4
    .line 5
    return-object v0
.end method


# virtual methods
.method public adnHasAdVideoCachedApi()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/db/uj;->x:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x2013

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/db/uj;->x:Ljava/util/function/Function;

    .line 26
    .line 27
    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->adnHasAdVideoCachedApi()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    return v0

    .line 47
    :cond_1
    invoke-super {p0}, Lcom/byazt/yl/ve;->adnHasAdVideoCachedApi()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0
.end method

.method public callMethod(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/16 p3, 0x1fcf

    .line 2
    .line 3
    if-ne p1, p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->getCpm()D

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/16 p3, 0x1faf

    .line 15
    .line 16
    if-ne p1, p3, :cond_2

    .line 17
    .line 18
    if-eqz p2, :cond_c

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/byazt/db/uj;->isClientBidding()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->isMultiBiddingAd()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_c

    .line 31
    .line 32
    :cond_1
    const/16 p1, 0x1f50

    .line 33
    .line 34
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->doubleValue(I)D

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_2
    const/16 p3, 0x1fc1

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    if-ne p1, p3, :cond_3

    .line 47
    .line 48
    if-eqz p2, :cond_c

    .line 49
    .line 50
    const/16 p1, 0x1f61

    .line 51
    .line 52
    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_3
    const/16 p3, 0x3f0

    .line 70
    .line 71
    if-ne p1, p3, :cond_4

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_c

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p1}, Lcom/byazt/ln/c;->c()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_4
    const/16 p3, 0x3f9

    .line 89
    .line 90
    if-ne p1, p3, :cond_6

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_c

    .line 97
    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    const/16 p1, 0x1f4e

    .line 101
    .line 102
    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/16 p1, 0x1f4f

    .line 107
    .line 108
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_0

    .line 113
    :cond_5
    const-string p1, ""

    .line 114
    .line 115
    :goto_0
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    new-instance p3, Lcom/byazt/pp/c;

    .line 120
    .line 121
    invoke-direct {p3, v0, p1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p2, p3}, Lcom/byazt/ln/c;->c(Lcom/byazt/pp/c;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_6
    const/16 p3, 0x3f1

    .line 130
    .line 131
    if-ne p1, p3, :cond_7

    .line 132
    .line 133
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_c

    .line 138
    .line 139
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-interface {p1}, Lcom/byazt/ln/c;->g_()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_7
    const/16 p3, 0x3f6

    .line 149
    .line 150
    if-ne p1, p3, :cond_8

    .line 151
    .line 152
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_c

    .line 157
    .line 158
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-interface {p1}, Lcom/byazt/ln/c;->h_()V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    const/16 p3, 0x402

    .line 167
    .line 168
    if-ne p1, p3, :cond_9

    .line 169
    .line 170
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-eqz p1, :cond_c

    .line 175
    .line 176
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-interface {p1}, Lcom/byazt/ln/c;->uj()V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_9
    const/16 p3, 0x3fd

    .line 185
    .line 186
    if-ne p1, p3, :cond_a

    .line 187
    .line 188
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-eqz p1, :cond_c

    .line 193
    .line 194
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-interface {p1}, Lcom/byazt/ln/c;->n()V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_a
    const/16 p3, 0x40d

    .line 203
    .line 204
    if-ne p1, p3, :cond_b

    .line 205
    .line 206
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-eqz p1, :cond_c

    .line 211
    .line 212
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-interface {p1}, Lcom/byazt/ln/c;->a()V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_b
    const/16 p3, 0x3fa

    .line 221
    .line 222
    if-ne p1, p3, :cond_c

    .line 223
    .line 224
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-eqz p1, :cond_c

    .line 229
    .line 230
    const/16 p1, 0x1f51

    .line 231
    .line 232
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    const/16 p3, 0x1f52

    .line 237
    .line 238
    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    int-to-float p3, p3

    .line 243
    const/16 v0, 0x1f53

    .line 244
    .line 245
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-direct {p0}, Lcom/byazt/db/n;->c()Lcom/byazt/ln/c;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    new-instance v1, Lcom/byazt/db/n$1;

    .line 254
    .line 255
    invoke-direct {v1, p0, p1, p3, p2}, Lcom/byazt/db/n$1;-><init>(Lcom/byazt/db/n;ZFLjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v0, v1}, Lcom/byazt/ln/c;->c(Lcom/byazt/bo/c;)V

    .line 259
    .line 260
    .line 261
    :cond_c
    :goto_1
    const/4 p1, 0x0

    .line 262
    return-object p1
.end method

.method public getReqId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/db/uj;->x:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x1fd3

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/db/uj;->x:Ljava/util/function/Function;

    .line 26
    .line 27
    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    return-object v0

    .line 40
    :cond_1
    invoke-super {p0}, Lcom/byazt/yl/ve;->getReqId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public isReadyStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/db/uj;->x:Ljava/util/function/Function;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/db/uj;->isReadyStatus(Ljava/util/function/Function;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public showAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/yl/ve;->showAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/byazt/db/uj;->x:Ljava/util/function/Function;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/16 p3, 0x1fb1

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-class p3, Ljava/lang/Void;

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/16 p3, 0x4e41

    .line 25
    .line 26
    invoke-virtual {p2, p3, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/byazt/db/uj;->x:Ljava/util/function/Function;

    .line 35
    .line 36
    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
