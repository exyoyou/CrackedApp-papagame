.class Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;
.super Lcn/fly/commons/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/commons/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 4
    .line 5
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    const-string v0, "ol it"

    .line 13
    .line 14
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 15
    .line 16
    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v2}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "mpmj"

    .line 24
    .line 25
    const-string v2, "307200,4194304,0.7,0.5"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcn/fly/commons/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-wide/32 v3, 0x4b000

    .line 38
    .line 39
    .line 40
    const-wide/32 v5, 0x400000

    .line 41
    .line 42
    .line 43
    const-wide v7, 0x3fe6666666666666L    # 0.7

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    const-string v2, ","

    .line 53
    .line 54
    const/4 v11, 0x4

    .line 55
    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 60
    if-ne v2, v11, :cond_0

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    :try_start_1
    aget-object v2, v0, v2

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :catchall_0
    const/4 v2, 0x1

    .line 74
    :try_start_2
    aget-object v2, v0, v2

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :catchall_1
    const/4 v2, 0x2

    .line 85
    :try_start_3
    aget-object v2, v0, v2

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 92
    .line 93
    .line 94
    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 95
    :catchall_2
    const/4 v2, 0x3

    .line 96
    :try_start_4
    aget-object v0, v0, v2

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 103
    .line 104
    .line 105
    move-result-wide v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 106
    :catchall_3
    :cond_0
    :try_start_5
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 107
    .line 108
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->i(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Lcn/fly/tools/utils/FlyPersistence$h;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    move-wide v12, v3

    .line 113
    move-wide v14, v5

    .line 114
    move-wide/from16 v16, v7

    .line 115
    .line 116
    move-wide/from16 v18, v9

    .line 117
    .line 118
    invoke-static/range {v11 .. v19}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$h;JJDD)V

    .line 119
    .line 120
    .line 121
    const-wide/16 v11, 0x0

    .line 122
    .line 123
    cmp-long v0, v3, v11

    .line 124
    .line 125
    if-lez v0, :cond_1

    .line 126
    .line 127
    cmp-long v0, v5, v11

    .line 128
    .line 129
    if-lez v0, :cond_1

    .line 130
    .line 131
    cmp-long v0, v5, v3

    .line 132
    .line 133
    if-lez v0, :cond_1

    .line 134
    .line 135
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 136
    .line 137
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Lcn/fly/tools/utils/h;->a(Landroid/content/Context;)Lcn/fly/tools/utils/h;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v2, "key_lru_min"

    .line 146
    .line 147
    invoke-virtual {v0, v2, v3, v4}, Lcn/fly/tools/utils/h;->a(Ljava/lang/String;J)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 151
    .line 152
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lcn/fly/tools/utils/h;->a(Landroid/content/Context;)Lcn/fly/tools/utils/h;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v2, "key_lru_max"

    .line 161
    .line 162
    invoke-virtual {v0, v2, v5, v6}, Lcn/fly/tools/utils/h;->a(Ljava/lang/String;J)V

    .line 163
    .line 164
    .line 165
    :cond_1
    const-wide/16 v2, 0x0

    .line 166
    .line 167
    cmpl-double v0, v7, v2

    .line 168
    .line 169
    if-lez v0, :cond_2

    .line 170
    .line 171
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 172
    .line 173
    cmpg-double v0, v7, v4

    .line 174
    .line 175
    if-gez v0, :cond_2

    .line 176
    .line 177
    cmpl-double v0, v9, v2

    .line 178
    .line 179
    if-lez v0, :cond_2

    .line 180
    .line 181
    cmpg-double v0, v9, v4

    .line 182
    .line 183
    if-gez v0, :cond_2

    .line 184
    .line 185
    cmpl-double v0, v7, v9

    .line 186
    .line 187
    if-lez v0, :cond_2

    .line 188
    .line 189
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 190
    .line 191
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lcn/fly/tools/utils/h;->a(Landroid/content/Context;)Lcn/fly/tools/utils/h;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v2, "key_lru_re"

    .line 200
    .line 201
    invoke-virtual {v0, v2, v7, v8}, Lcn/fly/tools/utils/h;->a(Ljava/lang/String;D)V

    .line 202
    .line 203
    .line 204
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 205
    .line 206
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Lcn/fly/tools/utils/h;->a(Landroid/content/Context;)Lcn/fly/tools/utils/h;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v2, "key_lru_ie"

    .line 215
    .line 216
    invoke-virtual {v0, v2, v9, v10}, Lcn/fly/tools/utils/h;->a(Ljava/lang/String;D)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :catchall_4
    move-exception v0

    .line 221
    :try_start_6
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 222
    .line 223
    invoke-virtual {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v0, v2}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 228
    .line 229
    .line 230
    :cond_2
    :goto_0
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 231
    .line 232
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :catchall_5
    move-exception v0

    .line 241
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$7;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 242
    .line 243
    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->k(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 248
    .line 249
    .line 250
    throw v0
.end method
