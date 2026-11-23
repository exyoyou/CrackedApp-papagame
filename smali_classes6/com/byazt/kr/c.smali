.class public Lcom/byazt/kr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5c6,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/kr/c;


# instance fields
.field public tt:Lcom/byazt/tj/tt;

.field public ve:Landroid/database/sqlite/SQLiteDatabase;


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

.method public static c()Lcom/byazt/kr/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/kr/c;->c:Lcom/byazt/kr/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/kr/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/kr/c;->c:Lcom/byazt/kr/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/kr/c;

    invoke-direct {v1}, Lcom/byazt/kr/c;-><init>()V

    sput-object v1, Lcom/byazt/kr/c;->c:Lcom/byazt/kr/c;

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
    sget-object v0, Lcom/byazt/kr/c;->c:Lcom/byazt/kr/c;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 1

    .line 7
    :try_start_0
    new-instance v0, Lcom/byazt/kr/tt;

    invoke-direct {v0, p1}, Lcom/byazt/kr/tt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/kr/c;->ve:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/mg/da;->tt(Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    new-instance p1, Lcom/byazt/tj/tt;

    invoke-direct {p1}, Lcom/byazt/tj/tt;-><init>()V

    iput-object p1, p0, Lcom/byazt/kr/c;->tt:Lcom/byazt/tj/tt;

    return-void
.end method

.method public declared-synchronized c(Lcom/byazt/bk/c;)V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kr/c;->tt:Lcom/byazt/tj/tt;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/byazt/kr/c;->ve:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/tj/tt;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/byazt/bk/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kr/c;->tt:Lcom/byazt/tj/tt;

    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/byazt/kr/c;->ve:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/tj/tt;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 15
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
