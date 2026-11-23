.class public Lcom/byazt/vvt/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/vvt/ve$tt;,
        Lcom/byazt/vvt/ve$c;
    }
.end annotation


# static fields
.field public static final c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byazt/vvt/ve$tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/LruCache;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/byazt/vvt/ve;->c:Landroid/util/LruCache;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/byazt/vvt/ve;->tt:Ljava/util/Map;

    .line 16
    .line 17
    return-void
.end method

.method public static c(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/vvt/ve;->tt:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/byazt/vvt/ve$tt;

    invoke-direct {v2}, Lcom/byazt/vvt/ve$tt;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/vvt/ve$tt;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/byazt/vvt/ve$tt;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()V
    .locals 2

    .line 12
    new-instance v0, Lcom/byazt/vvt/ve$3;

    const-string v1, "cacheDataCenter-clearOldData"

    invoke-direct {v0, v1}, Lcom/byazt/vvt/ve$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)V
    .locals 3

    .line 7
    sget-object v0, Lcom/byazt/vvt/ve;->c:Landroid/util/LruCache;

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 10
    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/x$ve;->yp()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/byazt/vvt/ve$2;

    const-string v2, "cacheDataCenter-recordShow"

    invoke-direct {v1, v2, p0, v0}, Lcom/byazt/vvt/ve$2;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;I)V

    invoke-static {v1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static c(Lcom/byazt/vvt/ve$c;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/vvt/ve$c;->c(Lcom/byazt/vvt/ve$c;)I

    move-result v0

    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->yp()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/byazt/vvt/ve$1;

    const-string v1, "cacheDataCenter-recordSend"

    invoke-direct {v0, v1, p0, p1}, Lcom/byazt/vvt/ve$1;-><init>(Ljava/lang/String;Lcom/byazt/vvt/ve$c;I)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static tt(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    if-eq p0, v1, :cond_1

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    if-ne p0, v4, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Lcom/byazt/eti/n;->uj(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/byazt/eti/n;->n(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/byazt/by/n;->sl()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/16 v4, 0x10

    .line 37
    .line 38
    and-int/2addr p0, v4

    .line 39
    if-ne p0, v4, :cond_2

    .line 40
    .line 41
    invoke-static {v1}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p1}, Lcom/byazt/eti/n;->uj(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/byazt/eti/n;->n(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :try_start_4
    new-instance p0, Lcom/byazt/tdq/uj;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/byazt/tdq/uj;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/byazt/tdq/uj;->c(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/byazt/tdq/uj;->tt(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    const/4 v1, 0x0

    .line 69
    :catchall_1
    move-wide p0, v2

    .line 70
    :goto_1
    :try_start_6
    const-string v4, "has_cache"

    .line 71
    .line 72
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    const-string v1, "cache_exp_ts"

    .line 76
    .line 77
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide p0

    .line 81
    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 82
    .line 83
    .line 84
    :catchall_2
    return-object v0
.end method

.method private static uj(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/byazt/ete/x$ve;->yp()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-gtz v1, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    const-wide/32 v5, 0xea60

    .line 20
    .line 21
    .line 22
    int-to-long v7, v1

    .line 23
    mul-long v7, v7, v5

    .line 24
    .line 25
    sub-long/2addr v3, v7

    .line 26
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v6, "meta_req_record_v1"

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const-string v8, "slot_type = ? and create_time >= ? and event_type = 1 and appid = ?"

    .line 34
    .line 35
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    filled-new-array {v9, v10, v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    invoke-static/range {v5 .. v12}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/4 v6, 0x2

    .line 55
    const-string v7, "status"

    .line 56
    .line 57
    const/4 v8, 0x1

    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eqz v10, :cond_5

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v14, 0x0

    .line 71
    :goto_0
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    const-string v9, "request_count"

    .line 80
    .line 81
    if-ne v15, v8, :cond_1

    .line 82
    .line 83
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    add-int/2addr v10, v9

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const-string v2, "response_count"

    .line 94
    .line 95
    if-ne v15, v6, :cond_2

    .line 96
    .line 97
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    add-int/2addr v11, v9

    .line 106
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    add-int/2addr v12, v2

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    const/4 v6, 0x3

    .line 117
    if-ne v15, v6, :cond_3

    .line 118
    .line 119
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    add-int/2addr v13, v6

    .line 128
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    add-int/2addr v14, v2

    .line 137
    :cond_3
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_4

    .line 142
    .line 143
    add-int/2addr v10, v11

    .line 144
    add-int/2addr v10, v13

    .line 145
    add-int v2, v12, v14

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    const/4 v2, 0x0

    .line 149
    const/4 v6, 0x2

    .line 150
    goto :goto_0

    .line 151
    :cond_5
    const/4 v2, 0x0

    .line 152
    const/4 v10, 0x0

    .line 153
    const/4 v12, 0x0

    .line 154
    const/4 v14, 0x0

    .line 155
    :goto_2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v17

    .line 159
    const-string v18, "meta_req_record_v1"

    .line 160
    .line 161
    const/16 v19, 0x0

    .line 162
    .line 163
    const-string v20, "slot_type = ? and create_time >= ? and event_type = 2 and appid = ?"

    .line 164
    .line 165
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    filled-new-array {v6, v3, v0}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v21

    .line 177
    const/16 v22, 0x0

    .line 178
    .line 179
    const/16 v23, 0x0

    .line 180
    .line 181
    const/16 v24, 0x0

    .line 182
    .line 183
    invoke-static/range {v17 .. v24}, Lcom/byazt/pe/c;->query(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_9

    .line 188
    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_9

    .line 194
    .line 195
    const/4 v9, 0x0

    .line 196
    const/16 v16, 0x0

    .line 197
    .line 198
    :cond_6
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-ne v3, v8, :cond_7

    .line 211
    .line 212
    add-int/lit8 v9, v9, 0x1

    .line 213
    .line 214
    const/4 v4, 0x2

    .line 215
    goto :goto_3

    .line 216
    :cond_7
    const/4 v4, 0x2

    .line 217
    if-ne v3, v4, :cond_8

    .line 218
    .line 219
    add-int/lit8 v16, v16, 0x1

    .line 220
    .line 221
    :cond_8
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-nez v3, :cond_6

    .line 226
    .line 227
    add-int v3, v9, v16

    .line 228
    .line 229
    move v4, v9

    .line 230
    move v9, v3

    .line 231
    move/from16 v3, v16

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_9
    const/4 v3, 0x0

    .line 235
    const/4 v4, 0x0

    .line 236
    const/4 v9, 0x0

    .line 237
    :goto_4
    if-eqz v5, :cond_a

    .line 238
    .line 239
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 240
    .line 241
    .line 242
    :cond_a
    if-eqz v0, :cond_b

    .line 243
    .line 244
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    .line 246
    .line 247
    :cond_b
    const/4 v0, -0x1

    .line 248
    const/high16 v5, 0x42c80000    # 100.0f

    .line 249
    .line 250
    if-gtz v10, :cond_c

    .line 251
    .line 252
    const/4 v6, -0x1

    .line 253
    goto :goto_5

    .line 254
    :cond_c
    int-to-float v6, v2

    .line 255
    mul-float v6, v6, v5

    .line 256
    .line 257
    int-to-float v7, v10

    .line 258
    div-float/2addr v6, v7

    .line 259
    float-to-int v6, v6

    .line 260
    :goto_5
    if-gtz v2, :cond_d

    .line 261
    .line 262
    const/4 v7, -0x1

    .line 263
    goto :goto_6

    .line 264
    :cond_d
    int-to-float v7, v12

    .line 265
    mul-float v7, v7, v5

    .line 266
    .line 267
    int-to-float v8, v2

    .line 268
    div-float/2addr v7, v8

    .line 269
    float-to-int v7, v7

    .line 270
    :goto_6
    if-gtz v2, :cond_e

    .line 271
    .line 272
    const/4 v8, -0x1

    .line 273
    goto :goto_7

    .line 274
    :cond_e
    int-to-float v8, v14

    .line 275
    mul-float v8, v8, v5

    .line 276
    .line 277
    int-to-float v11, v2

    .line 278
    div-float/2addr v8, v11

    .line 279
    float-to-int v8, v8

    .line 280
    :goto_7
    if-lez v9, :cond_10

    .line 281
    .line 282
    if-gtz v2, :cond_f

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_f
    int-to-float v11, v9

    .line 286
    mul-float v11, v11, v5

    .line 287
    .line 288
    int-to-float v12, v2

    .line 289
    div-float/2addr v11, v12

    .line 290
    float-to-int v11, v11

    .line 291
    goto :goto_9

    .line 292
    :cond_10
    :goto_8
    const/4 v11, -0x1

    .line 293
    :goto_9
    if-gtz v9, :cond_11

    .line 294
    .line 295
    const/4 v3, -0x1

    .line 296
    goto :goto_a

    .line 297
    :cond_11
    int-to-float v3, v3

    .line 298
    mul-float v3, v3, v5

    .line 299
    .line 300
    int-to-float v12, v9

    .line 301
    div-float/2addr v3, v12

    .line 302
    float-to-int v3, v3

    .line 303
    :goto_a
    if-gtz v9, :cond_12

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_12
    int-to-float v0, v4

    .line 307
    mul-float v0, v0, v5

    .line 308
    .line 309
    int-to-float v4, v9

    .line 310
    div-float/2addr v0, v4

    .line 311
    float-to-int v0, v0

    .line 312
    :goto_b
    new-instance v4, Lorg/json/JSONObject;

    .line 313
    .line 314
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 315
    .line 316
    .line 317
    :try_start_0
    const-string v5, "send_request_sum"

    .line 318
    .line 319
    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    .line 321
    .line 322
    const-string v5, "send_response_sum"

    .line 323
    .line 324
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    .line 326
    .line 327
    const-string v2, "send_fill_rate"

    .line 328
    .line 329
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    .line 331
    .line 332
    const-string v2, "send_net_rate"

    .line 333
    .line 334
    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    .line 336
    .line 337
    const-string v2, "send_cache_rate"

    .line 338
    .line 339
    invoke-virtual {v4, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 340
    .line 341
    .line 342
    const-string v2, "show_sum"

    .line 343
    .line 344
    invoke-virtual {v4, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    .line 346
    .line 347
    const-string v2, "show_rate"

    .line 348
    .line 349
    invoke-virtual {v4, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    .line 351
    .line 352
    const-string v2, "show_cache_rate"

    .line 353
    .line 354
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    .line 356
    .line 357
    const-string v2, "show_net_rate"

    .line 358
    .line 359
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    .line 361
    .line 362
    const-string v0, "interval_minute"

    .line 363
    .line 364
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .line 366
    .line 367
    return-object v4

    .line 368
    :catch_0
    const/4 v0, 0x0

    .line 369
    return-object v0
.end method

.method public static synthetic ve(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/vvt/ve;->uj(ILjava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
