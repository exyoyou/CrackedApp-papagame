.class public Lcom/byazt/db/x;
.super Lcom/byazt/db/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2de,
        0x47
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

.method private c()Lcom/byazt/uhf/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/uhf/c;

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
    .locals 6
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
    const/16 v0, 0x1fb3

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 6
    .line 7
    instance-of p1, p1, Lcom/byazt/uhf/c;

    .line 8
    .line 9
    if-eqz p1, :cond_a

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/db/x;->c()Lcom/byazt/uhf/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/byazt/uhf/c;->i_()V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    const/16 v0, 0x1fb4

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 25
    .line 26
    instance-of p1, p1, Lcom/byazt/uhf/c;

    .line 27
    .line 28
    if-eqz p1, :cond_a

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/byazt/db/x;->c()Lcom/byazt/uhf/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lcom/byazt/uhf/c;->j_()V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_1
    const/16 v0, 0x1fb5

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 44
    .line 45
    instance-of p1, p1, Lcom/byazt/uhf/c;

    .line 46
    .line 47
    if-eqz p1, :cond_a

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/byazt/db/x;->c()Lcom/byazt/uhf/c;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Lcom/byazt/uhf/c;->n()V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_2
    const/16 v0, 0x1fb6

    .line 59
    .line 60
    if-ne p1, v0, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 63
    .line 64
    instance-of p1, p1, Lcom/byazt/uhf/c;

    .line 65
    .line 66
    if-eqz p1, :cond_a

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/byazt/db/x;->c()Lcom/byazt/uhf/c;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Lcom/byazt/uhf/c;->uj()V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_3
    const/16 v0, 0x1fb7

    .line 78
    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 82
    .line 83
    instance-of p1, p1, Lcom/byazt/uhf/c;

    .line 84
    .line 85
    if-eqz p1, :cond_a

    .line 86
    .line 87
    invoke-direct {p0}, Lcom/byazt/db/x;->c()Lcom/byazt/uhf/c;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Lcom/byazt/uhf/c;->a()V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_4
    const/16 v0, 0x2026

    .line 97
    .line 98
    if-ne p1, v0, :cond_5

    .line 99
    .line 100
    iget-object p1, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 101
    .line 102
    instance-of p1, p1, Lcom/byazt/uhf/c;

    .line 103
    .line 104
    if-eqz p1, :cond_a

    .line 105
    .line 106
    invoke-direct {p0}, Lcom/byazt/db/x;->c()Lcom/byazt/uhf/c;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p1}, Lcom/byazt/uhf/c;->c()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_5
    const/16 v0, 0x2027

    .line 116
    .line 117
    if-ne p1, v0, :cond_7

    .line 118
    .line 119
    iget-object p1, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 120
    .line 121
    instance-of p1, p1, Lcom/byazt/uhf/c;

    .line 122
    .line 123
    if-eqz p1, :cond_a

    .line 124
    .line 125
    const/16 p1, 0x1f51

    .line 126
    .line 127
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/16 p1, 0x1f52

    .line 132
    .line 133
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    int-to-float v3, p1

    .line 138
    const/16 p1, 0x1f53

    .line 139
    .line 140
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const/16 p1, 0x1f54

    .line 145
    .line 146
    const-class v0, Ljava/util/Map;

    .line 147
    .line 148
    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Ljava/util/Map;

    .line 153
    .line 154
    new-instance v5, Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 157
    .line 158
    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    invoke-interface {v5, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    new-instance p1, Lcom/byazt/db/x$1;

    .line 165
    .line 166
    move-object v0, p1

    .line 167
    move-object v1, p0

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/byazt/db/x$1;-><init>(Lcom/byazt/db/x;ZFLjava/lang/String;Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    const-string p2, "GMRewardAd reward verify"

    .line 172
    .line 173
    invoke-static {p1, p2}, Lcom/byazt/bz/uj;->c(Lcom/byazt/bo/c;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0}, Lcom/byazt/db/x;->c()Lcom/byazt/uhf/c;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-interface {p2, p1}, Lcom/byazt/uhf/c;->c(Lcom/byazt/bo/c;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    const/16 v0, 0x3f9

    .line 185
    .line 186
    if-ne p1, v0, :cond_9

    .line 187
    .line 188
    iget-object p1, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 189
    .line 190
    instance-of p1, p1, Lcom/byazt/uhf/c;

    .line 191
    .line 192
    if-eqz p1, :cond_a

    .line 193
    .line 194
    const/4 p1, 0x0

    .line 195
    if-eqz p2, :cond_8

    .line 196
    .line 197
    const/16 v0, 0x1f4e

    .line 198
    .line 199
    invoke-interface {p2, v0, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(II)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    const/16 v0, 0x1f4f

    .line 204
    .line 205
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    goto :goto_0

    .line 210
    :cond_8
    const-string p2, ""

    .line 211
    .line 212
    :goto_0
    invoke-direct {p0}, Lcom/byazt/db/x;->c()Lcom/byazt/uhf/c;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    new-instance v1, Lcom/byazt/pp/c;

    .line 217
    .line 218
    invoke-direct {v1, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v0, v1}, Lcom/byazt/uhf/c;->c(Lcom/byazt/pp/c;)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_9
    const/16 v0, 0x1faf

    .line 226
    .line 227
    if-ne p1, v0, :cond_a

    .line 228
    .line 229
    const/16 p1, 0x1f50

    .line 230
    .line 231
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->doubleValue(I)D

    .line 232
    .line 233
    .line 234
    move-result-wide p1

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 236
    .line 237
    .line 238
    :cond_a
    :goto_1
    invoke-static {p3}, Lcom/byazt/hf/c;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
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
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    return-object v0

    .line 42
    :cond_1
    invoke-super {p0}, Lcom/byazt/yl/ve;->getReqId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
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
