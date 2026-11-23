.class public Lcom/byazt/wh/n;
.super Lcom/byazt/wh/ve$c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zz/gt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x2e
    }
.end annotation


# static fields
.field public static volatile tt:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field public volatile a:Z

.field public c:Lcom/byazt/wh/tt;

.field public n:Lcom/byazt/wh/sp;

.field public uj:Lcom/byazt/wh/sp;

.field public ve:Lcom/byazt/wh/sp;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/wh/n;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/byazt/wh/ve$c;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/byazt/wh/n;->c:Lcom/byazt/wh/tt;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/wh/n;->a:Z

    .line 5
    invoke-virtual {p0}, Lcom/byazt/wh/n;->c()V

    return-void
.end method

.method private c(IIIILandroid/database/sqlite/SQLiteStatement;)V
    .locals 5

    .line 98
    :try_start_0
    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "chunkIndex"

    .line 100
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    sget-object p4, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    const-string v2, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    .line 103
    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 105
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    .line 114
    :try_start_0
    monitor-enter p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "curOffset"

    .line 116
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    sget-object p4, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string p5, "downloadChunk"

    const-string v1, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 119
    invoke-virtual {p4, p5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    monitor-exit p6

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 121
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(IIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    .line 106
    :try_start_0
    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "curOffset"

    .line 108
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    sget-object p3, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string p4, "downloadChunk"

    const-string v1, "_id = ? AND chunkIndex = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 111
    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 113
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(ILandroid/content/ContentValues;)V
    .locals 5

    const/16 v0, 0xa

    .line 164
    :goto_0
    :try_start_0
    sget-object v1, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x5

    .line 165
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 166
    :try_start_2
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 167
    :cond_0
    :try_start_3
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 168
    :try_start_4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 169
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(ILandroid/database/sqlite/SQLiteStatement;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 71
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    int-to-long v1, p1

    .line 72
    :try_start_1
    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 73
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 74
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 75
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lcom/byazt/t/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/byazt/t/DownloadInfo;->bindValue(Landroid/database/sqlite/SQLiteStatement;)V

    .line 81
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 82
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 83
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/byazt/t/tt;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/byazt/t/tt;->c(Landroid/database/sqlite/SQLiteStatement;)V

    .line 86
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 87
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 88
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;IIIILandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/byazt/wh/n;->c(IIIILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p6}, Lcom/byazt/wh/n;->c(IIIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;IIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/byazt/wh/n;->c(IIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;ILandroid/content/ContentValues;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/byazt/wh/n;->c(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;ILandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/wh/n;->c(ILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/wh/n;->uj(Lcom/byazt/t/DownloadInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;Lcom/byazt/t/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/byazt/wh/n;->c(Lcom/byazt/t/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;Lcom/byazt/t/tt;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/byazt/wh/n;->c(Lcom/byazt/t/tt;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;Ljava/util/List;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/wh/n;->c(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/byazt/wh/n;->c(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/t/DownloadInfo;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isSavePathRedirected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {v0}, Lcom/byazt/w/a;->tt(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 22
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ltz v4, :cond_8

    .line 23
    sget-object v5, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 24
    :cond_0
    sget-object v5, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v5

    .line 25
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/byazt/wh/n;->i()V

    .line 26
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_3

    .line 27
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v6

    const-string v9, "clear_invalid_task_error"

    invoke-virtual {v6, v9}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 29
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    move-object/from16 v10, p1

    .line 30
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v10, p1

    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "CAST(_id AS TEXT) IN ("

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    new-array v10, v10, [C

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V

    const-string v10, "\u0000"

    const-string v12, "?,"

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "?)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 32
    sget-object v10, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "downloader"

    invoke-virtual {v10, v11, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 33
    sget-object v10, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "downloadChunk"

    invoke-virtual {v10, v11, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v6, ", "

    move-object/from16 v9, p2

    .line 34
    invoke-static {v6, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 35
    sget-object v9, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "downloader"

    const-string v11, "_id IN (?)"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    sget-object v9, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "downloadChunk"

    const-string v11, "_id IN (?)"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v10, v11, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_5

    .line 37
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 38
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/byazt/t/DownloadInfo;

    .line 39
    sget-object v11, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "downloader"

    const-string v13, "_id = ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-virtual {v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    sget-object v11, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "downloader"

    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->toContentValues()Landroid/content/ContentValues;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 41
    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v11

    if-le v11, v8, :cond_4

    .line 42
    invoke-virtual {v1, v9}, Lcom/byazt/wh/n;->ve(I)Ljava/util/List;

    move-result-object v11

    .line 43
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 44
    sget-object v12, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "downloadChunk"

    const-string v15, "_id = ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v7

    invoke-virtual {v12, v13, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/byazt/t/tt;

    .line 46
    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/byazt/t/tt;->tt(I)V

    .line 47
    sget-object v12, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "downloadChunk"

    invoke-virtual {v11}, Lcom/byazt/t/tt;->c()Landroid/content/ContentValues;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 48
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_4
    if-ge v7, v0, :cond_7

    .line 49
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v4

    .line 50
    invoke-virtual {v1, v4}, Lcom/byazt/wh/n;->ve(I)Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-static {v6}, Lcom/byazt/w/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 52
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 53
    invoke-virtual {v3, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 54
    :cond_7
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_5
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/byazt/wh/n;->da()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 56
    :try_start_2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    .line 57
    :goto_6
    :try_start_3
    monitor-exit v5

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/byazt/wh/n;->da()V

    throw v2

    .line 59
    :goto_7
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    :goto_8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wh/n;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/byazt/wh/n;->a:Z

    return p1
.end method

.method private da()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method private declared-synchronized sl()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/wh/n;->i()V

    .line 2
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-direct {p0}, Lcom/byazt/wh/n;->da()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    :try_start_3
    invoke-direct {p0}, Lcom/byazt/wh/n;->da()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 10
    :try_start_4
    invoke-direct {p0}, Lcom/byazt/wh/n;->da()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public static synthetic sp()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/wh/n;)Lcom/byazt/wh/sp;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byazt/wh/n;->uj:Lcom/byazt/wh/sp;

    return-object p0
.end method

.method private tt(Lcom/byazt/t/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/byazt/t/DownloadInfo;->bindValue(Landroid/database/sqlite/SQLiteStatement;)V

    .line 18
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getBindValueCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 19
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 20
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 21
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized uj(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/wh/n;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/wh/n;->ve(Lcom/byazt/t/DownloadInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    .line 9
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/byazt/wh/n;->ve:Lcom/byazt/wh/sp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/byazt/wh/sp;->ve()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->tt(Lcom/byazt/t/DownloadInfo;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 16
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic uj(Lcom/byazt/wh/n;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/wh/n;->sl()V

    return-void
.end method

.method private update(ILandroid/content/ContentValues;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$3;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/wh/n$3;-><init>(Lcom/byazt/wh/n;ILandroid/content/ContentValues;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/wh/n;)Lcom/byazt/wh/sp;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/wh/n;->ve:Lcom/byazt/wh/sp;

    return-object p0
.end method

.method private ve(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 16
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wh/n;->ve:Lcom/byazt/wh/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$9;

    invoke-direct {v0, p0, p1}, Lcom/byazt/wh/n$9;-><init>(Lcom/byazt/wh/n;Lcom/byazt/t/DownloadInfo;)V

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private x()V
    .locals 6

    .line 1
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/wh/n;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/byazt/wh/c;->c()Lcom/byazt/wh/c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    new-instance v1, Lcom/byazt/wh/sp;

    sget-object v2, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloader"

    sget-object v4, Lcom/byazt/ev/ve;->c:[Ljava/lang/String;

    sget-object v5, Lcom/byazt/ev/ve;->tt:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/byazt/wh/sp;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/byazt/wh/n;->ve:Lcom/byazt/wh/sp;

    .line 6
    new-instance v1, Lcom/byazt/wh/sp;

    sget-object v2, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloadChunk"

    sget-object v4, Lcom/byazt/ev/ve;->ve:[Ljava/lang/String;

    sget-object v5, Lcom/byazt/ev/ve;->uj:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/byazt/wh/sp;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/byazt/wh/n;->uj:Lcom/byazt/wh/sp;

    .line 7
    new-instance v1, Lcom/byazt/wh/sp;

    sget-object v2, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "segments"

    sget-object v4, Lcom/byazt/ev/ve;->n:[Ljava/lang/String;

    sget-object v5, Lcom/byazt/ev/ve;->a:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/byazt/wh/sp;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/byazt/wh/n;->n:Lcom/byazt/wh/sp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/wh/n$11;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/byazt/wh/n$11;-><init>(Lcom/byazt/wh/n;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public c(II)Lcom/byazt/t/DownloadInfo;
    .locals 6

    .line 122
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 123
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xa

    .line 124
    :goto_0
    :try_start_0
    sget-object v2, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const-wide/16 v2, 0x5

    .line 125
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 126
    :try_start_2
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "chunkCount"

    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    sget-object p2, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloader"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 131
    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 132
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method public c(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 3

    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x4

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "curBytes"

    .line 145
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IJLjava/lang/String;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;
    .locals 3

    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "totalBytes"

    .line 138
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "eTag"

    .line 139
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "name"

    .line 141
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-object v1, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    :try_start_0
    sget-object v4, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM %s WHERE %s = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "downloader"

    aput-object v7, v6, v1

    const-string v7, "url"

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 66
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Lcom/byazt/t/DownloadInfo;

    invoke-direct {p1, v3}, Lcom/byazt/t/DownloadInfo;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    new-array p1, v2, [Landroid/database/Cursor;

    aput-object v3, p1, v1

    .line 68
    invoke-static {p1}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 69
    :try_start_1
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v2, [Landroid/database/Cursor;

    aput-object v3, p1, v1

    .line 70
    invoke-static {p1}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    new-array v0, v2, [Landroid/database/Cursor;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 3

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/byazt/wh/n;->c(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V

    return-void
.end method

.method public c(IIII)V
    .locals 7

    .line 95
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-eq p4, p2, :cond_1

    if-ltz p4, :cond_1

    .line 96
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wh/n;->uj:Lcom/byazt/wh/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$8;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/byazt/wh/n$8;-><init>(Lcom/byazt/wh/n;IIII)V

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(IIIJ)V
    .locals 8

    .line 92
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    .line 93
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wh/n;->uj:Lcom/byazt/wh/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$7;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/byazt/wh/n$7;-><init>(Lcom/byazt/wh/n;IIIJ)V

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(IIJ)V
    .locals 7

    .line 89
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    .line 90
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wh/n;->uj:Lcom/byazt/wh/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$6;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/byazt/wh/n$6;-><init>(Lcom/byazt/wh/n;IIJ)V

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;>;)V"
        }
    .end annotation

    .line 171
    :try_start_0
    invoke-static {p1}, Lcom/byazt/w/a;->c(Landroid/util/SparseArray;)Ljava/util/HashMap;

    move-result-object p1

    .line 172
    invoke-static {p2}, Lcom/byazt/w/a;->c(Landroid/util/SparseArray;)Ljava/util/HashMap;

    move-result-object p2

    .line 173
    iget-object v0, p0, Lcom/byazt/wh/n;->c:Lcom/byazt/wh/tt;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1, p2}, Lcom/byazt/wh/tt;->c(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public c(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;>;",
            "Lcom/byazt/wh/uj;",
            ")V"
        }
    .end annotation

    .line 15
    :try_start_0
    new-instance v0, Lcom/byazt/wh/n$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/wh/n$1;-><init>(Lcom/byazt/wh/n;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/byazt/wh/uj;)V

    .line 16
    invoke-static {}, Lcom/byazt/zz/ve;->rh()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/t/tt;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 77
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wh/n;->uj:Lcom/byazt/wh/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$5;

    invoke-direct {v0, p0, p1}, Lcom/byazt/wh/n$5;-><init>(Lcom/byazt/wh/n;Lcom/byazt/t/tt;)V

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/wh/tt;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/byazt/wh/n;->c:Lcom/byazt/wh/tt;

    return-void
.end method

.method public c(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/byazt/wh/n;->tt(I)Lcom/byazt/t/DownloadInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 61
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return v0
.end method

.method public c(ILjava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/byazt/h/i;",
            ">;)Z"
        }
    .end annotation

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 149
    sget-object v2, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 150
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 151
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 152
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/h/i;

    .line 153
    invoke-virtual {v5}, Lcom/byazt/h/i;->sl()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 154
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 155
    :cond_1
    iget-object p2, p0, Lcom/byazt/wh/n;->n:Lcom/byazt/wh/sp;

    invoke-virtual {p2}, Lcom/byazt/wh/sp;->uj()Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 156
    monitor-enter p2

    .line 157
    :try_start_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    const/4 v4, 0x1

    int-to-long v5, p1

    .line 158
    invoke-virtual {p2, v4, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 159
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p2, v2, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 161
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string p1, "SqlDownloadCache"

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "updateSegments cost="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/byazt/w/a;->ve(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_1
    move-exception p1

    .line 163
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    if-eqz p1, :cond_1

    .line 134
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$10;

    invoke-direct {v0, p0, p1}, Lcom/byazt/wh/n$10;-><init>(Lcom/byazt/wh/n;Lcom/byazt/t/DownloadInfo;)V

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public da(I)Lcom/byazt/t/DownloadInfo;
    .locals 3

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x7

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(I)Lcom/byazt/t/DownloadInfo;
    .locals 3

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public n(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 3

    .line 6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "curBytes"

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public n(I)Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 3
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wh/n;->ve:Lcom/byazt/wh/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/byazt/wh/sp;->tt()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->c(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public sl(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lcom/byazt/wh/n;->t(I)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sp(I)Lcom/byazt/t/DownloadInfo;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(I)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_0
    sget-object v3, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    const-string v4, "SELECT * FROM %s WHERE %s = ?"

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    new-array v5, v5, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v6, "segments"

    .line 19
    .line 20
    aput-object v6, v5, v0

    .line 21
    .line 22
    const-string v6, "_id"

    .line 23
    .line 24
    aput-object v6, v5, v2

    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-array v5, v2, [Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    aput-object p1, v5, v0

    .line 37
    .line 38
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    const-string v3, "info"

    .line 49
    .line 50
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ltz v3, :cond_0

    .line 55
    .line 56
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object v3, v1

    .line 62
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v5, Lorg/json/JSONArray;

    .line 68
    .line 69
    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-ge v3, v6, :cond_1

    .line 78
    .line 79
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    new-instance v7, Lcom/byazt/h/i;

    .line 84
    .line 85
    invoke-direct {v7, v6}, Lcom/byazt/h/i;-><init>(Lorg/json/JSONObject;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/byazt/h/i;->ve()J

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    new-array v1, v2, [Landroid/database/Cursor;

    .line 103
    .line 104
    aput-object p1, v1, v0

    .line 105
    .line 106
    invoke-static {v1}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    .line 107
    .line 108
    .line 109
    return-object v4

    .line 110
    :cond_2
    new-array v2, v2, [Landroid/database/Cursor;

    .line 111
    .line 112
    aput-object p1, v2, v0

    .line 113
    .line 114
    invoke-static {v2}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :catchall_0
    move-exception v3

    .line 119
    goto :goto_2

    .line 120
    :catchall_1
    move-exception v3

    .line 121
    move-object p1, v1

    .line 122
    :goto_2
    :try_start_2
    invoke-static {v3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    .line 124
    .line 125
    new-array v2, v2, [Landroid/database/Cursor;

    .line 126
    .line 127
    aput-object p1, v2, v0

    .line 128
    .line 129
    invoke-static {v2}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :catchall_2
    move-exception v1

    .line 134
    new-array v2, v2, [Landroid/database/Cursor;

    .line 135
    .line 136
    aput-object p1, v2, v0

    .line 137
    .line 138
    invoke-static {v2}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    .line 139
    .line 140
    .line 141
    throw v1

    .line 142
    :cond_3
    :goto_3
    return-object v1
.end method

.method public tt(I)Lcom/byazt/t/DownloadInfo;
    .locals 7

    .line 5
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 6
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 7
    :try_start_0
    sget-object v3, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT * FROM %s WHERE %s = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "downloader"

    aput-object v6, v5, v0

    const-string v6, "_id"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    .line 9
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    new-instance v3, Lcom/byazt/t/DownloadInfo;

    invoke-direct {v3, p1}, Lcom/byazt/t/DownloadInfo;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v2, [Landroid/database/Cursor;

    aput-object p1, v1, v0

    .line 12
    invoke-static {v1}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    return-object v3

    :cond_0
    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object p1, v1

    .line 13
    :goto_0
    :try_start_2
    invoke-static {v3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    .line 14
    invoke-static {v2}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_2
    move-exception v1

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    throw v1

    :cond_1
    :goto_1
    return-object v1
.end method

.method public tt(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 4

    .line 23
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "curBytes"

    .line 25
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    const/4 p2, 0x0

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isFirstDownload"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public tt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;)V"
        }
    .end annotation

    .line 28
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/byazt/wh/n;->uj(I)V

    if-eqz p2, :cond_1

    .line 29
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/t/tt;

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p2}, Lcom/byazt/wh/n;->c(Lcom/byazt/t/tt;)V

    .line 31
    invoke-virtual {p2}, Lcom/byazt/t/tt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p2}, Lcom/byazt/t/tt;->sp()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/t/tt;

    .line 33
    invoke-virtual {p0, v0}, Lcom/byazt/wh/n;->c(Lcom/byazt/t/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 34
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 0

    .line 3
    return-void
.end method

.method public tt(Lcom/byazt/t/tt;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/byazt/wh/n;->c(Lcom/byazt/t/tt;)V

    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wh/n;->n:Lcom/byazt/wh/sp;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/wh/sp;->tt()Landroid/database/sqlite/SQLiteStatement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->c(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public uj(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 3

    .line 17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x2

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "curBytes"

    .line 19
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public uj(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public uj(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 4
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wh/n;->uj:Lcom/byazt/wh/sp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$4;

    invoke-direct {v0, p0, p1}, Lcom/byazt/wh/n$4;-><init>(Lcom/byazt/wh/n;I)V

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public uj()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/byazt/wh/n;->a:Z

    return v0
.end method

.method public ve(IJ)Lcom/byazt/t/DownloadInfo;
    .locals 3

    .line 21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x3

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "curBytes"

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isFirstDownload"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "isFirstSuccess"

    .line 25
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public ve(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 5
    sget-object v1, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6
    :try_start_0
    sget-object v4, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM %s WHERE %s = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "downloadChunk"

    aput-object v7, v6, v1

    const-string v7, "_id"

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    .line 8
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 9
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/byazt/t/tt;

    invoke-direct {p1, v3}, Lcom/byazt/t/tt;-><init>(Landroid/database/Cursor;)V

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [Landroid/database/Cursor;

    aput-object v3, p1, v1

    .line 12
    invoke-static {p1}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v2, [Landroid/database/Cursor;

    aput-object v3, p1, v1

    .line 14
    invoke-static {p1}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    new-array v0, v2, [Landroid/database/Cursor;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/byazt/w/a;->c([Landroid/database/Cursor;)V

    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public ve(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public ve()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/byazt/wh/n;->x()V

    .line 19
    sget-object v0, Lcom/byazt/wh/n;->tt:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/byazt/wh/n$2;

    invoke-direct {v0, p0}, Lcom/byazt/wh/n$2;-><init>(Lcom/byazt/wh/n;)V

    invoke-static {v0}, Lcom/byazt/zz/ve;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x(I)Lcom/byazt/t/DownloadInfo;
    .locals 3

    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x5

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isFirstDownload"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/byazt/wh/n;->update(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic yp(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/wh/n;->sl(I)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
