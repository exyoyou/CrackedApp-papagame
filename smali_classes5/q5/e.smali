.class public Lq5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lq5/e;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/android/app/common/db/DatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 6
    .line 7
    iput-object p1, p0, Lq5/e;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq5/e;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 6
    .line 7
    iput-object v0, p0, Lq5/e;->a:Landroid/content/Context;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Lq5/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lq5/e;->c:Lq5/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq5/e;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lq5/e;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lq5/e;->c:Lq5/e;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lq5/e;->c:Lq5/e;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dbName"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/join/android/app/common/db/DatabaseHelper;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {}, Lcom/join/android/app/common/db/DatabaseHelper;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lq5/e;->a()V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/android/app/common/db/DatabaseHelper;->H0(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lq5/e;->a:Landroid/content/Context;

    .line 47
    .line 48
    const-class v0, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 55
    .line 56
    iput-object p1, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    monitor-exit p0

    .line 62
    throw p1
.end method

.method public declared-synchronized c()Lcom/join/android/app/common/db/DatabaseHelper;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lq5/e;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lq5/e;->a:Landroid/content/Context;

    .line 10
    .line 11
    const-class v1, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 18
    .line 19
    iput-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :try_start_1
    invoke-virtual {v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iput-object v1, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 30
    .line 31
    invoke-direct {p0}, Lq5/e;->a()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lq5/e;->a:Landroid/content/Context;

    .line 35
    .line 36
    const-class v2, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 37
    .line 38
    invoke-static {v0, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 43
    .line 44
    iput-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    :try_start_2
    iput-object v1, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 48
    .line 49
    invoke-direct {p0}, Lq5/e;->a()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lq5/e;->a:Landroid/content/Context;

    .line 53
    .line 54
    const-class v1, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/join/android/app/common/db/DatabaseHelper;

    .line 61
    .line 62
    iput-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 63
    .line 64
    :cond_1
    :goto_0
    iget-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p0

    .line 70
    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lq5/e;->b:Lcom/join/android/app/common/db/DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method
