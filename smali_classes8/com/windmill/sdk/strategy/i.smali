.class public Lcom/windmill/sdk/strategy/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/windmill/sdk/strategy/i;


# instance fields
.field a:Ljava/text/SimpleDateFormat;

.field private b:Lcom/windmill/sdk/strategy/m;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/windmill/sdk/strategy/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/strategy/i;->d:Lcom/windmill/sdk/strategy/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/windmill/sdk/strategy/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/windmill/sdk/strategy/i;->d:Lcom/windmill/sdk/strategy/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/windmill/sdk/strategy/i;

    invoke-direct {v1}, Lcom/windmill/sdk/strategy/i;-><init>()V

    sput-object v1, Lcom/windmill/sdk/strategy/i;->d:Lcom/windmill/sdk/strategy/i;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/windmill/sdk/strategy/i;->d:Lcom/windmill/sdk/strategy/i;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/strategy/i;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x7

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/FreEntity;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/windmill/sdk/strategy/i;->b:Lcom/windmill/sdk/strategy/m;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p2, :cond_0

    const-string p2, "placementId = ? and month = ? and day = ?"

    goto :goto_0

    :cond_0
    const-string p2, "tbPlacementId = ? and month = ? and day = ?"

    :goto_0
    move-object v7, p2

    const-string v5, "table_frequency"

    const/4 v6, 0x0

    const/4 p2, 0x3

    new-array v8, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v8, p2

    .line 40
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v8, p2

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v8, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 41
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "channelId"

    .line 42
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string p1, "tbPlacementId"

    .line 43
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p1, "placementId"

    .line 44
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "month"

    .line 45
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string p1, "day"

    .line 46
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string p1, "hour"

    .line 47
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string p1, "tameStamp"

    .line 48
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 49
    new-instance p1, Lcom/windmill/sdk/models/FreEntity;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/windmill/sdk/models/FreEntity;-><init>(ILjava/lang/String;Ljava/lang/String;IIIJ)V

    .line 50
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 53
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    .line 57
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_4

    .line 58
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_4
    iget-object p2, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_5

    .line 60
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 61
    :cond_5
    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/windmill/sdk/strategy/m;

    invoke-direct {v0, p1}, Lcom/windmill/sdk/strategy/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/windmill/sdk/strategy/i;->b:Lcom/windmill/sdk/strategy/m;

    .line 8
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/windmill/sdk/strategy/i;->a:Ljava/text/SimpleDateFormat;

    .line 9
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/strategy/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/windmill/sdk/strategy/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/models/FreEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 12
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/windmill/sdk/models/FreEntity;->setTameStamp(J)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/windmill/sdk/models/FreEntity;->setMonth(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/windmill/sdk/models/FreEntity;->setDay(I)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/models/FreEntity;->setHour(I)V

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/strategy/i;->b:Lcom/windmill/sdk/strategy/m;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_frequency"

    .line 18
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/strategy/i;->b(Lcom/windmill/sdk/models/FreEntity;)Landroid/content/ContentValues;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 19
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v0, "-------------insert exposed success------------"

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 26
    :cond_2
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "month",
            "day"
        }
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/i;->b:Lcom/windmill/sdk/strategy/m;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_frequency"

    const-string v2, "month != ? or day != ?"

    .line 28
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------delete data success------------:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 33
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 34
    iget-object p2, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_2

    .line 35
    iget-object p2, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 36
    :cond_2
    throw p1
.end method

.method public b(Lcom/windmill/sdk/models/FreEntity;)Landroid/content/ContentValues;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/windmill/sdk/models/FreEntity;->getChannelId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "channelId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "tbPlacementId"

    .line 52
    invoke-virtual {p1}, Lcom/windmill/sdk/models/FreEntity;->getTbPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "placementId"

    .line 53
    invoke-virtual {p1}, Lcom/windmill/sdk/models/FreEntity;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/windmill/sdk/models/FreEntity;->getMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    invoke-virtual {p1}, Lcom/windmill/sdk/models/FreEntity;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p1}, Lcom/windmill/sdk/models/FreEntity;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    invoke-virtual {p1}, Lcom/windmill/sdk/models/FreEntity;->getTameStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "tameStamp"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public b(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/i;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/FreEntity;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/windmill/sdk/strategy/i;->b:Lcom/windmill/sdk/strategy/m;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from table_frequency"

    .line 5
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "channelId"

    .line 7
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v2, "tbPlacementId"

    .line 8
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "placementId"

    .line 9
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "month"

    .line 10
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v2, "day"

    .line 11
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v2, "hour"

    .line 12
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v2, "tameStamp"

    .line 13
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 14
    new-instance v2, Lcom/windmill/sdk/models/FreEntity;

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/windmill/sdk/models/FreEntity;-><init>(ILjava/lang/String;Ljava/lang/String;IIIJ)V

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 18
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 21
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 25
    :cond_4
    throw v0
.end method

.method public b(Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/FreEntity;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/windmill/sdk/strategy/i;->b:Lcom/windmill/sdk/strategy/m;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p2, :cond_0

    const-string p2, "placementId = ? and month = ? and day = ? and hour = ?"

    goto :goto_0

    :cond_0
    const-string p2, "tbPlacementId = ? and month = ? and day = ? and hour = ?"

    :goto_0
    move-object v7, p2

    const-string v5, "table_frequency"

    const/4 v6, 0x0

    const/4 p2, 0x4

    new-array v8, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v8, p2

    .line 29
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v8, p2

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v8, p2

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/strategy/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v8, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 30
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "channelId"

    .line 31
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string p1, "tbPlacementId"

    .line 32
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p1, "placementId"

    .line 33
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "month"

    .line 34
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string p1, "day"

    .line 35
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string p1, "hour"

    .line 36
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string p1, "tameStamp"

    .line 37
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 38
    new-instance p1, Lcom/windmill/sdk/models/FreEntity;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/windmill/sdk/models/FreEntity;-><init>(ILjava/lang/String;Ljava/lang/String;IIIJ)V

    .line 39
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 41
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    .line 43
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    .line 45
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_4

    .line 46
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_4
    iget-object p2, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_5

    .line 48
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 49
    :cond_5
    throw p1
.end method

.method public c(Ljava/lang/String;I)Lcom/windmill/sdk/models/FreEntity;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/strategy/i;->b:Lcom/windmill/sdk/strategy/m;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p2, :cond_0

    const-string p2, "select * from table_frequency where placementId = ? order by tameStamp DESC limit 1"

    goto :goto_0

    :cond_0
    const-string p2, "select * from table_frequency where tbPlacementId = ? order by tameStamp DESC limit 1"

    .line 4
    :goto_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "channelId"

    .line 6
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string p2, "tbPlacementId"

    .line 7
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p2, "placementId"

    .line 8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p2, "month"

    .line 9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string p2, "day"

    .line 10
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string p2, "hour"

    .line 11
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string p2, "tameStamp"

    .line 12
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 13
    new-instance p2, Lcom/windmill/sdk/models/FreEntity;

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lcom/windmill/sdk/models/FreEntity;-><init>(ILjava/lang/String;Ljava/lang/String;IIIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p2

    .line 14
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 15
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    .line 16
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p2, v0

    .line 17
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p2, :cond_2

    .line 18
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    return-object v0

    :catchall_2
    move-exception p1

    if-eqz p2, :cond_4

    .line 20
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_4
    iget-object p2, p0, Lcom/windmill/sdk/strategy/i;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 23
    :cond_5
    throw p1
.end method

.method public c(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/i;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb

    const/16 v1, 0xd

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
