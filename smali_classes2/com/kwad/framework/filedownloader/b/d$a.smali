.class public final Lcom/kwad/framework/filedownloader/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final aAI:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private aAJ:Lcom/kwad/framework/filedownloader/b/d$b;

.field final synthetic aAK:Lcom/kwad/framework/filedownloader/b/d;

.field private final aAv:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final aAw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kwad/framework/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAw:Landroid/util/SparseArray;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final BS()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAJ:Lcom/kwad/framework/filedownloader/b/d$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/b/d$b;->BS()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->a(Lcom/kwad/framework/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-gez v1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-ge v3, v1, :cond_4

    .line 32
    .line 33
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lcom/kwad/framework/filedownloader/d/c;

    .line 46
    .line 47
    const-string v6, "ksad_file_download"

    .line 48
    .line 49
    const-string v7, "_id = ?"

    .line 50
    .line 51
    const/4 v8, 0x1

    .line 52
    new-array v9, v8, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    aput-object v10, v9, v2

    .line 59
    .line 60
    invoke-virtual {v0, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const-string v6, "ksad_file_download"

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/d/c;->CV()Landroid/content/ContentValues;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const/4 v9, 0x0

    .line 70
    invoke-virtual {v0, v6, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-le v6, v8, :cond_3

    .line 78
    .line 79
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 80
    .line 81
    invoke-virtual {v6, v4}, Lcom/kwad/framework/filedownloader/b/d;->cD(I)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-lez v7, :cond_3

    .line 90
    .line 91
    const-string v7, "ksad_file_download_connection"

    .line 92
    .line 93
    const-string v10, "id = ?"

    .line 94
    .line 95
    new-array v8, v8, [Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    aput-object v4, v8, v2

    .line 102
    .line 103
    invoke-virtual {v0, v7, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Lcom/kwad/framework/filedownloader/d/a;

    .line 121
    .line 122
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-virtual {v6, v7}, Lcom/kwad/framework/filedownloader/d/a;->setId(I)V

    .line 127
    .line 128
    .line 129
    const-string v7, "ksad_file_download_connection"

    .line 130
    .line 131
    invoke-virtual {v6}, Lcom/kwad/framework/filedownloader/d/a;->CV()Landroid/content/ContentValues;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v0, v7, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 143
    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAw:Landroid/util/SparseArray;

    .line 147
    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    monitor-enter v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 151
    :try_start_2
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    :goto_2
    if-ge v2, v3, :cond_6

    .line 158
    .line 159
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 160
    .line 161
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lcom/kwad/framework/filedownloader/d/c;

    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 172
    .line 173
    invoke-virtual {v5, v4}, Lcom/kwad/framework/filedownloader/b/d;->cD(I)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    if-eqz v5, :cond_5

    .line 178
    .line 179
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-lez v6, :cond_5

    .line 184
    .line 185
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAw:Landroid/util/SparseArray;

    .line 186
    .line 187
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    :try_start_3
    iget-object v7, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAw:Landroid/util/SparseArray;

    .line 189
    .line 190
    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    monitor-exit v6

    .line 194
    goto :goto_3

    .line 195
    :catchall_0
    move-exception v2

    .line 196
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :try_start_4
    throw v2

    .line 198
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_6
    monitor-exit v1

    .line 202
    goto :goto_4

    .line 203
    :catchall_1
    move-exception v2

    .line 204
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    :try_start_5
    throw v2

    .line 206
    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 207
    .line 208
    .line 209
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catchall_2
    move-exception v1

    .line 219
    goto :goto_5

    .line 220
    :catch_1
    move-exception v1

    .line 221
    :try_start_7
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 222
    .line 223
    .line 224
    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :catch_2
    move-exception v0

    .line 229
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :catch_3
    move-exception v1

    .line 234
    :try_start_9
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 235
    .line 236
    invoke-static {v2, v1}, Lcom/kwad/framework/filedownloader/b/d;->a(Lcom/kwad/framework/filedownloader/b/d;Landroid/database/sqlite/SQLiteException;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 237
    .line 238
    .line 239
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :catch_4
    move-exception v0

    .line 244
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :goto_5
    :try_start_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :catch_5
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    :goto_6
    throw v1

    .line 257
    :catchall_3
    return-void
.end method

.method public final a(ILcom/kwad/framework/filedownloader/d/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lcom/kwad/framework/filedownloader/d/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1

    .line 20
    :cond_0
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/b/d$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/b/d$b;-><init>(Lcom/kwad/framework/filedownloader/b/d;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAJ:Lcom/kwad/framework/filedownloader/b/d$b;

    .line 9
    .line 10
    return-object v0
.end method
