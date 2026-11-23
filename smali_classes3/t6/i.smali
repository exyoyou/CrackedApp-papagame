.class public Lt6/i;
.super Lq5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq5/b<",
        "Lcom/join/mgps/db/tables/CloudDownRecoderTable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lt6/i;

.field private static c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RuntimeExceptionDao<",
            "Lcom/join/mgps/db/tables/CloudDownRecoderTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lt6/i;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lq5/b;-><init>(Lcom/j256/ormlite/dao/RuntimeExceptionDao;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static o()Lt6/i;
    .locals 1

    .line 1
    sget-object v0, Lt6/i;->b:Lt6/i;

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
    invoke-virtual {v0}, Lcom/join/android/app/common/db/DatabaseHelper;->s()Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lt6/i;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 19
    .line 20
    new-instance v0, Lt6/i;

    .line 21
    .line 22
    invoke-direct {v0}, Lt6/i;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lt6/i;->b:Lt6/i;

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lt6/i;->b:Lt6/i;

    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public n(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/db/tables/CloudDownRecoderTable;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lt6/i;->c:Lcom/j256/ormlite/dao/RuntimeExceptionDao;

    .line 13
    .line 14
    const-string v1, "gameId"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/dao/RuntimeExceptionDao;->queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-object p1

    .line 30
    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method
