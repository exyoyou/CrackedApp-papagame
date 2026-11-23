.class public Lt6/v;
.super Lq5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq5/b<",
        "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lt6/v;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lt6/v;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lq5/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static n()Lt6/v;
    .locals 1

    .line 1
    sget-object v0, Lt6/v;->b:Lt6/v;

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
    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->a0()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lt6/v;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 19
    .line 20
    new-instance v0, Lt6/v;

    .line 21
    .line 22
    invoke-direct {v0}, Lt6/v;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lt6/v;->b:Lt6/v;

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lt6/v;->b:Lt6/v;

    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public o(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lt6/v;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 6
    .line 7
    const-string v1, "userId"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public p(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lt6/v;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :try_start_0
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "userId"

    .line 16
    .line 17
    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    .line 22
    .line 23
    .line 24
    const-string p1, "isUped"

    .line 25
    .line 26
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v2, p1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-object v0
.end method
