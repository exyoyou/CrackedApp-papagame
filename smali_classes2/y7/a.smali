.class public Ly7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ljava/lang/String; = "a"

.field private static f:Ly7/a;


# instance fields
.field private a:Ljava/util/concurrent/Semaphore;

.field private b:Ly7/b;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 11
    .line 12
    invoke-static {p1}, Ly7/b;->a(Landroid/content/Context;)Ly7/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Ly7/a;->b:Ly7/b;

    .line 17
    .line 18
    :try_start_0
    invoke-direct {p0}, Ly7/a;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object p1, p0, Ly7/a;->d:Landroid/content/Context;

    .line 27
    .line 28
    return-void
.end method

.method public static o(Landroid/content/Context;)Ly7/a;
    .locals 1

    .line 1
    sget-object v0, Ly7/a;->f:Ly7/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ly7/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ly7/a;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ly7/a;->f:Ly7/a;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, v0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    :cond_1
    new-instance v0, Ly7/a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Ly7/a;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Ly7/a;->f:Ly7/a;

    .line 29
    .line 30
    :cond_2
    sget-object p0, Ly7/a;->f:Ly7/a;

    .line 31
    .line 32
    return-object p0
.end method

.method private declared-synchronized p()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ly7/a;->b:Ly7/b;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_2
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method private q()Landroid/database/Cursor;
    .locals 3

    .line 1
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const-string v1, "SELECT * FROM BossTable limit 50"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    const-string v1, "EMUApkTable"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public c(Lcom/papa/sim/statistic/Event;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    const-string v1, "BossTable"

    .line 7
    .line 8
    const-string v2, "type = ?"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v3, v3, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object p1, v3, v4

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public d(Lcom/papa/sim/statistic/db/BossTable;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    const-string v1, "BossTable"

    .line 7
    .line 8
    const-string v2, "id = ?"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v3, v3, [Ljava/lang/String;

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getId()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object p1, v3, v4

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public delete(I)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ly7/a;->p()V

    .line 14
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "StatisticTable"

    const-string v2, "id = ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public delete(Lcom/papa/sim/statistic/Event;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "StatisticTable"

    const-string v2, "type = ?"

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public delete(Lcom/papa/sim/statistic/db/StatisticTable;)V
    .locals 5

    .line 5
    :try_start_0
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 6
    invoke-direct {p0}, Ly7/a;->p()V

    .line 7
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "StatisticTable"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    iget-object p1, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :goto_1
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 12
    throw p1
.end method

.method public e(Lcom/papa/sim/statistic/db/StatisticTable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ly7/a;->p()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    const-string v1, "update StatisticTable set send=3 where id=?"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v2, v2, [Ljava/lang/String;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object p1, v2, v3

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object p1, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_1
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    const-string v1, "type = ? and time =?"

    .line 7
    .line 8
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "StatisticTable"

    .line 13
    .line 14
    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    const-string v1, "3"

    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "StatisticTable"

    .line 13
    .line 14
    const-string v3, "send =?"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public h(Lcom/papa/sim/statistic/Event;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "SELECT * FROM StatisticTable where type=? "

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    xor-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public i(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "SELECT * FROM StatisticTable where type=? and args2=?"

    .line 15
    .line 16
    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 25
    .line 26
    .line 27
    xor-int/lit8 p1, p2, 0x1

    .line 28
    .line 29
    return p1
.end method

.method public j(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    const-string v1, "SELECT * FROM EMUApkTable where package_name=? "

    .line 7
    .line 8
    filled-new-array {p1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    .line 22
    .line 23
    xor-int/lit8 p1, v0, 0x1

    .line 24
    .line 25
    return p1
.end method

.method public k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/StatisticTable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    const-string v2, "SELECT * FROM StatisticTable  order by id limit 50"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 25
    .line 26
    invoke-direct {v2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "id"

    .line 30
    .line 31
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setId(I)V

    .line 40
    .line 41
    .line 42
    const-string v3, "uid"

    .line 43
    .line 44
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "type"

    .line 56
    .line 57
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v3, "args1"

    .line 69
    .line 70
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v3, "args2"

    .line 82
    .line 83
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v3, "time"

    .line 95
    .line 96
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v3, "ad"

    .line 108
    .line 109
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v3, "countType"

    .line 121
    .line 122
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v3, "send"

    .line 134
    .line 135
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setSend(I)V

    .line 144
    .line 145
    .line 146
    const-string v3, "newData"

    .line 147
    .line 148
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setNewData(I)V

    .line 157
    .line 158
    .line 159
    const-string v3, "isdirect"

    .line 160
    .line 161
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/StatisticTable;->setIsdirect(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    goto :goto_3

    .line 183
    :catch_0
    move-exception v2

    .line 184
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :goto_2
    return-object v0

    .line 189
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 190
    .line 191
    .line 192
    throw v0
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/BossTable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ly7/a;->q()Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Lcom/papa/sim/statistic/db/BossTable;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/papa/sim/statistic/db/BossTable;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "id"

    .line 25
    .line 26
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/BossTable;->setId(I)V

    .line 35
    .line 36
    .line 37
    const-string v3, "uid"

    .line 38
    .line 39
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/BossTable;->setUid(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v3, "type"

    .line 51
    .line 52
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/BossTable;->setType(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v3, "args1"

    .line 64
    .line 65
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/BossTable;->setArgs1(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v3, "args2"

    .line 77
    .line 78
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/BossTable;->setArgs2(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v3, "time"

    .line 90
    .line 91
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/BossTable;->setTime(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v3, "ad"

    .line 103
    .line 104
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/BossTable;->setAd(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v3, "countType"

    .line 116
    .line 117
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/BossTable;->setCountType(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    goto :goto_3

    .line 138
    :catch_0
    move-exception v2

    .line 139
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :goto_2
    return-object v0

    .line 144
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 145
    .line 146
    .line 147
    throw v0
.end method

.method public m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/EMUApkTable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ly7/a;->p()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    const-string v2, "SELECT * FROM EMUApkTable"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    new-instance v2, Lcom/papa/sim/statistic/db/EMUApkTable;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/papa/sim/statistic/db/EMUApkTable;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "id"

    .line 31
    .line 32
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setId(I)V

    .line 41
    .line 42
    .line 43
    const-string v3, "apk_name"

    .line 44
    .line 45
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setApk_name(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "logo"

    .line 57
    .line 58
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setLogo(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "package_name"

    .line 70
    .line 71
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setPackage_name(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v3, "launch_name"

    .line 83
    .line 84
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setLaunch_name(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v3, "team_info"

    .line 96
    .line 97
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setTeam_info(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v3, "ver_info"

    .line 109
    .line 110
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setVer_info(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v3, "down_url"

    .line 122
    .line 123
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setDown_url(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v3, "size"

    .line 135
    .line 136
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setSize(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v3, "release_date"

    .line 148
    .line 149
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setRelease_date(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v3, "ver"

    .line 161
    .line 162
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setVer(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v3, "ver_compatible"

    .line 174
    .line 175
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setVer_compatible(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v3, "tag_id"

    .line 187
    .line 188
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setTag_id(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string v3, "apkPath"

    .line 200
    .line 201
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v3, "downloadFinish"

    .line 213
    .line 214
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/db/EMUApkTable;->setDownloadFinish(I)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    .line 232
    .line 233
    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/papa/sim/statistic/db/StatisticTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ly7/a;->p()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    const-string v2, "SELECT * FROM StatisticTable where type=? and time=?"

    .line 13
    .line 14
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 29
    .line 30
    invoke-direct {p2}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "id"

    .line 34
    .line 35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setId(I)V

    .line 44
    .line 45
    .line 46
    const-string v1, "uid"

    .line 47
    .line 48
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setUid(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "type"

    .line 60
    .line 61
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "args1"

    .line 73
    .line 74
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "args2"

    .line 86
    .line 87
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs2(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v1, "time"

    .line 99
    .line 100
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "ad"

    .line 112
    .line 113
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setAd(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v1, "countType"

    .line 125
    .line 126
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setCountType(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v1, "send"

    .line 138
    .line 139
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setSend(I)V

    .line 148
    .line 149
    .line 150
    const-string v1, "newData"

    .line 151
    .line 152
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setNewData(I)V

    .line 161
    .line 162
    .line 163
    const-string v1, "isdirect"

    .line 164
    .line 165
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/db/StatisticTable;->setIsdirect(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 179
    .line 180
    .line 181
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 182
    .line 183
    .line 184
    return-object p2

    .line 185
    :cond_0
    iget-object p2, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :catch_0
    move-exception p2

    .line 192
    goto :goto_0

    .line 193
    :catchall_0
    move-exception p2

    .line 194
    goto :goto_2

    .line 195
    :catch_1
    move-exception p2

    .line 196
    move-object p1, v0

    .line 197
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 203
    .line 204
    .line 205
    if-eqz p1, :cond_1

    .line 206
    .line 207
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 208
    .line 209
    .line 210
    :cond_1
    return-object v0

    .line 211
    :catchall_1
    move-exception p2

    .line 212
    move-object v0, p1

    .line 213
    :goto_2
    iget-object p1, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 216
    .line 217
    .line 218
    if-eqz v0, :cond_2

    .line 219
    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 221
    .line 222
    .line 223
    :cond_2
    throw p2
.end method

.method public r(Lcom/papa/sim/statistic/db/StatisticTable;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v1, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 6
    .line 7
    .line 8
    invoke-direct/range {p0 .. p0}, Ly7/a;->p()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v2, 0x9

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    const/4 v4, 0x7

    .line 25
    const/4 v5, 0x6

    .line 26
    const/4 v6, 0x5

    .line 27
    const/4 v7, 0x4

    .line 28
    const/4 v8, 0x3

    .line 29
    const/4 v9, 0x2

    .line 30
    const/4 v10, 0x1

    .line 31
    const/4 v11, 0x0

    .line 32
    const/16 v12, 0xa

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    .line 38
    const-string v13, "INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(?, ?,?, ?, ?,?,?,?,?,?,?)"

    .line 39
    .line 40
    const/16 v14, 0xb

    .line 41
    .line 42
    new-array v14, v14, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    aput-object v15, v14, v11

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    aput-object v11, v14, v10

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    aput-object v10, v14, v9

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    aput-object v9, v14, v8

    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    aput-object v8, v14, v7

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    aput-object v7, v14, v6

    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getAd()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    aput-object v6, v14, v5

    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getCountType()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    aput-object v5, v14, v4

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getSend()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    aput-object v4, v14, v3

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getNewData()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    aput-object v3, v14, v2

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    aput-object v2, v14, v12

    .line 125
    .line 126
    invoke-virtual {v0, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    .line 132
    const-string v13, "INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(null, ?,?, ?, ?,?,?,?,?,?,?)"

    .line 133
    .line 134
    new-array v12, v12, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    aput-object v14, v12, v11

    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    aput-object v11, v12, v10

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    aput-object v10, v12, v9

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    aput-object v9, v12, v8

    .line 159
    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    aput-object v8, v12, v7

    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getAd()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    aput-object v7, v12, v6

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getCountType()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    aput-object v6, v12, v5

    .line 177
    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getSend()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    aput-object v5, v12, v4

    .line 187
    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getNewData()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    aput-object v4, v12, v3

    .line 197
    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    aput-object v3, v12, v2

    .line 207
    .line 208
    invoke-virtual {v0, v13, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :goto_0
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    .line 216
    :try_start_1
    iget-object v0, v1, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 219
    .line 220
    .line 221
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    move-object v2, v0

    .line 229
    goto :goto_2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    .line 233
    .line 234
    :try_start_3
    iget-object v0, v1, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 237
    .line 238
    .line 239
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :catch_1
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    .line 248
    .line 249
    :goto_1
    return-void

    .line 250
    :goto_2
    :try_start_4
    iget-object v0, v1, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 253
    .line 254
    .line 255
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :catch_2
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    .line 264
    .line 265
    :goto_3
    throw v2
.end method

.method public s(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/StatisticTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v1, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 6
    .line 7
    .line 8
    invoke-direct/range {p0 .. p0}, Ly7/a;->p()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v4, 0x9

    .line 37
    .line 38
    const/16 v5, 0x8

    .line 39
    .line 40
    const/4 v6, 0x7

    .line 41
    const/4 v7, 0x6

    .line 42
    const/4 v8, 0x5

    .line 43
    const/4 v9, 0x4

    .line 44
    const/4 v10, 0x3

    .line 45
    const/4 v11, 0x2

    .line 46
    const/4 v12, 0x1

    .line 47
    const/4 v13, 0x0

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    iget-object v3, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    .line 52
    const-string v15, "INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(?, ?,?, ?, ?,?,?,?,?,?,?)"

    .line 53
    .line 54
    const/16 v14, 0xb

    .line 55
    .line 56
    new-array v14, v14, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v16

    .line 62
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v16

    .line 66
    aput-object v16, v14, v13

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    aput-object v13, v14, v12

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    aput-object v12, v14, v11

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    aput-object v11, v14, v10

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    aput-object v10, v14, v9

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    aput-object v9, v14, v8

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getAd()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    aput-object v8, v14, v7

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getCountType()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    aput-object v7, v14, v6

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getSend()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    aput-object v6, v14, v5

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getNewData()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    aput-object v5, v14, v4

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const/16 v4, 0xa

    .line 139
    .line 140
    aput-object v2, v14, v4

    .line 141
    .line 142
    invoke-virtual {v3, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    iget-object v3, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 147
    .line 148
    const-string v14, "INSERT INTO StatisticTable (id, uid,type, args1, args2,time,ad,countType,send,newData,isdirect) VALUES(null,?, ?, ?, ?,?,?,?,?,?,?)"

    .line 149
    .line 150
    const/16 v15, 0xa

    .line 151
    .line 152
    new-array v15, v15, [Ljava/lang/Object;

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getUid()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v16

    .line 158
    aput-object v16, v15, v13

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    aput-object v13, v15, v12

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    aput-object v12, v15, v11

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs2()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    aput-object v11, v15, v10

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    aput-object v10, v15, v9

    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getAd()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    aput-object v9, v15, v8

    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getCountType()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    aput-object v8, v15, v7

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getSend()I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    aput-object v7, v15, v6

    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getNewData()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    aput-object v6, v15, v5

    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    aput-object v2, v15, v4

    .line 225
    .line 226
    invoke-virtual {v3, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_1
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :catchall_0
    move-exception v0

    .line 238
    iget-object v2, v1, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 241
    .line 242
    .line 243
    iget-object v2, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 244
    .line 245
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :catch_0
    :goto_1
    iget-object v0, v1, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 252
    .line 253
    .line 254
    iget-object v0, v1, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public t(Lcom/papa/sim/statistic/db/BossTable;)V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ly7/a;->p()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getId()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x6

    .line 19
    const/4 v2, 0x5

    .line 20
    const/4 v3, 0x4

    .line 21
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x7

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    .line 30
    const-string v9, "INSERT INTO BossTable VALUES(?, ?,?, ?, ?,?,?,?)"

    .line 31
    .line 32
    const/16 v10, 0x8

    .line 33
    .line 34
    new-array v10, v10, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    aput-object v11, v10, v7

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getUid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    aput-object v7, v10, v6

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getType()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    aput-object v6, v10, v5

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getArgs1()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    aput-object v5, v10, v4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getArgs2()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    aput-object v4, v10, v3

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getTime()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    aput-object v3, v10, v2

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getAd()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    aput-object v2, v10, v1

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getCountType()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    aput-object p1, v10, v8

    .line 87
    .line 88
    invoke-virtual {v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    .line 94
    const-string v9, "INSERT INTO BossTable VALUES(null, ?,?, ?, ?,?,?,?)"

    .line 95
    .line 96
    new-array v8, v8, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getUid()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    aput-object v10, v8, v7

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getType()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    aput-object v7, v8, v6

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getArgs1()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    aput-object v6, v8, v5

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getArgs2()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    aput-object v5, v8, v4

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getTime()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    aput-object v4, v8, v3

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getAd()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    aput-object v3, v8, v2

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/BossTable;->getCountType()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    aput-object p1, v8, v1

    .line 139
    .line 140
    invoke-virtual {v0, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :goto_0
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    :try_start_1
    iget-object p1, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    goto :goto_2

    .line 161
    :catch_0
    move-exception p1

    .line 162
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .line 164
    .line 165
    :try_start_3
    iget-object p1, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :catch_1
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :goto_1
    return-void

    .line 181
    :goto_2
    :try_start_4
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :catch_2
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    :goto_3
    throw p1
.end method

.method public u(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/db/EMUApkTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ly7/a;->p()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/papa/sim/statistic/db/EMUApkTable;

    .line 29
    .line 30
    iget-object v1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    .line 32
    const-string v2, "INSERT INTO EMUApkTable VALUES(?,?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?)"

    .line 33
    .line 34
    const/16 v3, 0xf

    .line 35
    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v4, v3, v5

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getApk_name()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x1

    .line 54
    aput-object v4, v3, v5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getLogo()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/4 v5, 0x2

    .line 61
    aput-object v4, v3, v5

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getPackage_name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const/4 v5, 0x3

    .line 68
    aput-object v4, v3, v5

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getLaunch_name()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const/4 v5, 0x4

    .line 75
    aput-object v4, v3, v5

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getTeam_info()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v5, 0x5

    .line 82
    aput-object v4, v3, v5

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getVer_info()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const/4 v5, 0x6

    .line 89
    aput-object v4, v3, v5

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getDown_url()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const/4 v5, 0x7

    .line 96
    aput-object v4, v3, v5

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getSize()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const/16 v5, 0x8

    .line 103
    .line 104
    aput-object v4, v3, v5

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getRelease_date()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const/16 v5, 0x9

    .line 111
    .line 112
    aput-object v4, v3, v5

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getVer()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const/16 v5, 0xa

    .line 119
    .line 120
    aput-object v4, v3, v5

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getVer_compatible()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const/16 v5, 0xb

    .line 127
    .line 128
    aput-object v4, v3, v5

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const/16 v5, 0xc

    .line 135
    .line 136
    aput-object v4, v3, v5

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getApkPath()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const/16 v5, 0xd

    .line 143
    .line 144
    aput-object v4, v3, v5

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/EMUApkTable;->getDownloadFinish()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/16 v4, 0xe

    .line 155
    .line 156
    aput-object v0, v3, v4

    .line 157
    .line 158
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_0
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catchall_0
    move-exception p1

    .line 170
    goto :goto_2

    .line 171
    :catch_0
    move-exception p1

    .line 172
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .line 174
    .line 175
    :goto_1
    iget-object p1, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :goto_2
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 194
    .line 195
    .line 196
    throw p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ly7/a;->p()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    const-string v1, "update StatisticTable set send=1,isdirect=1 where type=? and time=?"

    .line 17
    .line 18
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    iget-object p2, p0, Ly7/a;->a:Ljava/util/concurrent/Semaphore;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Ly7/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method
