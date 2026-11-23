.class public Lt6/u;
.super Lq5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq5/b<",
        "Lcom/join/mgps/db/tables/GameMainTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lt6/u;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/GameMainTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lt6/u;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lq5/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static n()Lt6/u;
    .locals 1

    .line 1
    sget-object v0, Lt6/u;->b:Lt6/u;

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
    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->R()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lt6/u;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 19
    .line 20
    new-instance v0, Lt6/u;

    .line 21
    .line 22
    invoke-direct {v0}, Lt6/u;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lt6/u;->b:Lt6/u;

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lt6/u;->b:Lt6/u;

    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
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
    sget-object v1, Lt6/u;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 6
    .line 7
    const-string v2, "gameid"

    .line 8
    .line 9
    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/join/mgps/db/tables/GameMainTable;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    return-object v0
.end method
