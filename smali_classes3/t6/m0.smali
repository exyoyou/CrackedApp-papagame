.class public Lt6/m0;
.super Lq5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq5/b<",
        "Lcom/join/mgps/db/tables/UserLocalRecordTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:J = 0x1cf7c5800L

.field private static c:Lt6/m0;

.field private static d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/UserLocalRecordTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lq5/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static p()Lt6/m0;
    .locals 1

    .line 1
    sget-object v0, Lt6/m0;->c:Lt6/m0;

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
    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->B0()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 19
    .line 20
    new-instance v0, Lt6/m0;

    .line 21
    .line 22
    invoke-direct {v0}, Lt6/m0;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lt6/m0;->c:Lt6/m0;

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lt6/m0;->c:Lt6/m0;

    .line 28
    .line 29
    return-object v0
.end method

.method private static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraKey"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public n(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "uid"

    .line 20
    .line 21
    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 22
    .line 23
    .line 24
    sget-object p1, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 31
    .line 32
    .line 33
    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return v1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bizType",
            "uid",
            "beforeTimestamp"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    sget-object v0, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "bizType"

    .line 26
    .line 27
    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v3, "uid"

    .line 36
    .line 37
    invoke-virtual {p1, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "updatedAt"

    .line 46
    .line 47
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedDelete;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I

    .line 64
    .line 65
    .line 66
    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return p1

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return v1
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/db/tables/UserLocalRecordTable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bizType",
            "uid",
            "scopeKey",
            "extraKey"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    sget-object v0, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "bizType"

    .line 32
    .line 33
    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v2, "uid"

    .line 42
    .line 43
    invoke-virtual {p1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "scopeKey"

    .line 52
    .line 53
    invoke-virtual {p1, p2, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "extraKey"

    .line 62
    .line 63
    invoke-static {p4}, Lt6/m0;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p1, p2, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/join/mgps/db/tables/UserLocalRecordTable;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    return-object p1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_0
    return-object v1
.end method

.method public r(Lcom/join/mgps/db/tables/UserLocalRecordTable;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getBizType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getScopeKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getExtraKey()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lt6/m0;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->setExtraKey(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getBizType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getUid()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getScopeKey()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getExtraKey()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {p0, v2, v3, v4, v5}, Lt6/m0;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/db/tables/UserLocalRecordTable;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-wide/16 v3, 0x0

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getCreatedAt()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    cmp-long v2, v5, v3

    .line 78
    .line 79
    if-gtz v2, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->setCreatedAt(J)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->setUpdatedAt(J)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->create(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {p1, v5}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->setId(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getCreatedAt()J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    cmp-long v7, v5, v3

    .line 105
    .line 106
    if-lez v7, :cond_3

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->getCreatedAt()J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    move-wide v2, v0

    .line 114
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->setCreatedAt(J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/db/tables/UserLocalRecordTable;->setUpdatedAt(J)V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lt6/m0;->d:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->update(Ljava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_1
    return-void
.end method
