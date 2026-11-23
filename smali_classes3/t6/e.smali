.class public Lt6/e;
.super Lq5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq5/b<",
        "Lcom/join/mgps/db/tables/CacheTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lt6/e;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CacheTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lq5/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r()Lt6/e;
    .locals 1

    .line 1
    sget-object v0, Lt6/e;->b:Lt6/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lq5/e;->d(Landroid/content/Context;)Lq5/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lq5/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->k()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 19
    .line 20
    new-instance v0, Lt6/e;

    .line 21
    .line 22
    invoke-direct {v0}, Lt6/e;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lt6/e;->b:Lt6/e;

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lt6/e;->b:Lt6/e;

    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public n(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    sget-object v0, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    const-string v2, "type"

    .line 12
    .line 13
    sget v3, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_GLOBAL_DATA:I

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 24
    .line 25
    .line 26
    const-string v2, "gameId"

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public o(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    sget-object v0, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    const-string v2, "type"

    .line 12
    .line 13
    sget v3, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_GRADE:I

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 24
    .line 25
    .line 26
    const-string v2, "gameId"

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "gameId"
        }
    .end annotation

    .line 1
    sget-object v0, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    const-string v2, "type"

    .line 12
    .line 13
    sget v3, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_USER_INFO:I

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string v2, "uid"

    .line 33
    .line 34
    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 39
    .line 40
    .line 41
    :cond_0
    const-string p1, "gameId"

    .line 42
    .line 43
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v1, p1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public q(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    sget-object v0, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    const-string v2, "type"

    .line 12
    .line 13
    sget v3, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_WORSHIP:I

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 24
    .line 25
    .line 26
    const-string v2, "gameId"

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lt6/e;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public s(JLcom/join/mgps/dto/GameWorldGlobalData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "data"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/CacheTable;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/db/tables/CacheTable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/db/tables/CacheTable;->setGameId(J)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_GLOBAL_DATA:I

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setType(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setData(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public t(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GradeListInfoData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/CacheTable;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/db/tables/CacheTable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/db/tables/CacheTable;->setGameId(J)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_GRADE:I

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setType(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setData(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public u(Ljava/lang/String;JLcom/join/mgps/dto/GameWorldUserInfoWrap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "gameId",
            "data"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/CacheTable;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/db/tables/CacheTable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2, p3}, Lcom/join/mgps/db/tables/CacheTable;->setGameId(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setUid(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget p1, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_USER_INFO:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setType(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setData(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public v(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldRealTimeWorshipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/db/tables/CacheTable;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/db/tables/CacheTable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/db/tables/CacheTable;->setGameId(J)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/join/mgps/db/tables/CacheTable;->TYPE_GAME_WORLD_WORSHIP:I

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setType(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/CacheTable;->setData(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    return-void
.end method
