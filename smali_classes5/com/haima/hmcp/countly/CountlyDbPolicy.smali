.class public Lcom/haima/hmcp/countly/CountlyDbPolicy;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/countly/CountlyDiskPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "Lcom/haima/hmcp/countly/CountlyDiskPolicy<",
        "Lcom/haima/hmcp/countly/CountlyDBInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "countly.db"

.field public static final DB_VERSION:I = 0x1

.field public static final FIELD_COUNTLY_EVENT_ID:Ljava/lang/String; = "eventId"

.field public static final FIELD_COUNTLY_JSON:Ljava/lang/String; = "json"

.field public static final FIELD_COUNTLY_KEY_ID:Ljava/lang/String; = "id"

.field public static final FIELD_COUNTLY_STATUS:Ljava/lang/String; = "status"

.field public static final FIELD_COUNTLY_TIME_STAMP:Ljava/lang/String; = "timeStamp"

.field public static final NUM_ROW_LIMIT:I = 0x64

.field public static final TABLE_COUNTLY_NAME:Ljava/lang/String; = "countly_table"

.field private static final TAG:Ljava/lang/String; = "CountlyDbPolicy"

.field private static mInstance:Lcom/haima/hmcp/countly/CountlyDbPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "countly.db"

    .line 4
    .line 5
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==createTable==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "CREATE TABLE IF NOT EXISTS countly_table( id INTEGER PRIMARY KEY AUTOINCREMENT,eventId TEXT,timeStamp TEXT UNIQUE,json TEXT,status INTEGER)"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private declared-synchronized deleteCountly(Lcom/haima/hmcp/countly/CountlyDBInfo;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "==deleteCountly==="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/countly/CountlyDBInfo;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "countly_table"

    .line 37
    .line 38
    const-string v2, "eventId=? AND timeStamp=? "

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    new-array v3, v3, [Ljava/lang/String;

    .line 42
    .line 43
    iget-object v4, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->eventId:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    aput-object v4, v3, v5

    .line 47
    .line 48
    iget-object p1, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->timeStamp:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    aput-object p1, v3, v4

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p0

    .line 60
    throw p1
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==dropTable==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "DROP TABLE IF EXISTS countly_table"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private declared-synchronized getCountlyInfoLists()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/countly/CountlyDBInfo;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "select * from countly_table order by id desc limit 100"

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v3, v3, [Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Lcom/haima/hmcp/countly/CountlyDBInfo;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/haima/hmcp/countly/CountlyDBInfo;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "eventId"

    .line 39
    .line 40
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iput-object v3, v2, Lcom/haima/hmcp/countly/CountlyDBInfo;->eventId:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, "timeStamp"

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
    iput-object v3, v2, Lcom/haima/hmcp/countly/CountlyDBInfo;->timeStamp:Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, "json"

    .line 63
    .line 64
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iput-object v3, v2, Lcom/haima/hmcp/countly/CountlyDBInfo;->json:Ljava/lang/String;

    .line 73
    .line 74
    const-string v3, "status"

    .line 75
    .line 76
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iput v3, v2, Lcom/haima/hmcp/countly/CountlyDBInfo;->status:I

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    monitor-exit p0

    .line 97
    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    monitor-exit p0

    .line 100
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/haima/hmcp/countly/CountlyDbPolicy;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==getInstance==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->mInstance:Lcom/haima/hmcp/countly/CountlyDbPolicy;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-class v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/countly/CountlyDbPolicy;->mInstance:Lcom/haima/hmcp/countly/CountlyDbPolicy;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/haima/hmcp/countly/CountlyDbPolicy;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/haima/hmcp/countly/CountlyDbPolicy;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/haima/hmcp/countly/CountlyDbPolicy;->mInstance:Lcom/haima/hmcp/countly/CountlyDbPolicy;

    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    sget-object p0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->mInstance:Lcom/haima/hmcp/countly/CountlyDbPolicy;

    .line 32
    .line 33
    return-object p0
.end method

.method private declared-synchronized insertCountly(Lcom/haima/hmcp/countly/CountlyDBInfo;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "==insertCountly==="

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/countly/CountlyDBInfo;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/content/ContentValues;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "eventId"

    .line 34
    .line 35
    iget-object v2, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->eventId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "timeStamp"

    .line 41
    .line 42
    iget-object v2, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->timeStamp:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "json"

    .line 48
    .line 49
    iget-object v2, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->json:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "status"

    .line 55
    .line 56
    iget p1, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->status:I

    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v1, "countly_table"

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    .line 79
    throw p1
.end method

.method private declared-synchronized updateCountlyStatus(Lcom/haima/hmcp/countly/CountlyDBInfo;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "==updateCountlyStatus==="

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/countly/CountlyDBInfo;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/content/ContentValues;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "eventId"

    .line 34
    .line 35
    iget-object v2, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->eventId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "timeStamp"

    .line 41
    .line 42
    iget-object v2, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->timeStamp:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "json"

    .line 48
    .line 49
    iget-object v2, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->json:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "status"

    .line 55
    .line 56
    iget v2, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->status:I

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "countly_table"

    .line 70
    .line 71
    const-string v3, "eventId=?  AND timeStamp=? "

    .line 72
    .line 73
    const/4 v4, 0x2

    .line 74
    new-array v4, v4, [Ljava/lang/String;

    .line 75
    .line 76
    iget-object v5, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->eventId:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    aput-object v5, v4, v6

    .line 80
    .line 81
    iget-object p1, p1, Lcom/haima/hmcp/countly/CountlyDBInfo;->timeStamp:Ljava/lang/String;

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    aput-object p1, v4, v5

    .line 85
    .line 86
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    monitor-exit p0

    .line 93
    throw p1
.end method


# virtual methods
.method public deleteDiskCacheEvent(Lcom/haima/hmcp/countly/CountlyDBInfo;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/countly/CountlyDbPolicy;->deleteCountly(Lcom/haima/hmcp/countly/CountlyDBInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic deleteDiskCacheEvent(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/haima/hmcp/countly/CountlyDBInfo;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/countly/CountlyDbPolicy;->deleteDiskCacheEvent(Lcom/haima/hmcp/countly/CountlyDBInfo;)V

    return-void
.end method

.method public getDiskCacheEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/countly/CountlyDBInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/haima/hmcp/countly/CountlyDbPolicy;->getCountlyInfoLists()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/countly/CountlyDbPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==onCreate==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/haima/hmcp/countly/CountlyDbPolicy;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    sget-object p2, Lcom/haima/hmcp/countly/CountlyDbPolicy;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p3, "==onUpgrade==="

    .line 4
    .line 5
    invoke-static {p2, p3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/haima/hmcp/countly/CountlyDbPolicy;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/haima/hmcp/countly/CountlyDbPolicy;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public recordToDisk(Lcom/haima/hmcp/countly/CountlyDBInfo;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/countly/CountlyDbPolicy;->insertCountly(Lcom/haima/hmcp/countly/CountlyDBInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic recordToDisk(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/haima/hmcp/countly/CountlyDBInfo;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/countly/CountlyDbPolicy;->recordToDisk(Lcom/haima/hmcp/countly/CountlyDBInfo;)V

    return-void
.end method
