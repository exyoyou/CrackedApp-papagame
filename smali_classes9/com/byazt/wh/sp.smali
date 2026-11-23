.class public Lcom/byazt/wh/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0x5b
    }
.end annotation


# instance fields
.field public a:Landroid/database/sqlite/SQLiteStatement;

.field public final c:Landroid/database/sqlite/SQLiteDatabase;

.field public n:Landroid/database/sqlite/SQLiteStatement;

.field public sp:Landroid/database/sqlite/SQLiteStatement;

.field public final tt:Ljava/lang/String;

.field public final uj:[Ljava/lang/String;

.field public final ve:[Ljava/lang/String;

.field public x:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/wh/sp;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/wh/sp;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/wh/sp;->ve:[Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/wh/sp;->uj:[Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/wh/sp;->n:Landroid/database/sqlite/SQLiteStatement;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "INSERT INTO "

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/wh/sp;->tt:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/wh/sp;->ve:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/byazt/w/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/wh/sp;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/byazt/wh/sp;->n:Landroid/database/sqlite/SQLiteStatement;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/wh/sp;->n:Landroid/database/sqlite/SQLiteStatement;

    .line 27
    .line 28
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v1, p0, Lcom/byazt/wh/sp;->n:Landroid/database/sqlite/SQLiteStatement;

    .line 30
    .line 31
    if-eq v1, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/wh/sp;->n:Landroid/database/sqlite/SQLiteStatement;

    .line 41
    .line 42
    return-object v0
.end method

.method public tt()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wh/sp;->sp:Landroid/database/sqlite/SQLiteStatement;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/wh/sp;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/wh/sp;->uj:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/w/i;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/wh/sp;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/byazt/wh/sp;->sp:Landroid/database/sqlite/SQLiteStatement;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/wh/sp;->sp:Landroid/database/sqlite/SQLiteStatement;

    .line 25
    .line 26
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v1, p0, Lcom/byazt/wh/sp;->sp:Landroid/database/sqlite/SQLiteStatement;

    .line 28
    .line 29
    if-eq v1, v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/wh/sp;->sp:Landroid/database/sqlite/SQLiteStatement;

    .line 39
    .line 40
    return-object v0
.end method

.method public uj()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/wh/sp;->x:Landroid/database/sqlite/SQLiteStatement;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/wh/sp;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/wh/sp;->ve:[Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/wh/sp;->uj:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/byazt/w/i;->tt(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/wh/sp;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/byazt/wh/sp;->x:Landroid/database/sqlite/SQLiteStatement;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/wh/sp;->x:Landroid/database/sqlite/SQLiteStatement;

    .line 27
    .line 28
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v1, p0, Lcom/byazt/wh/sp;->x:Landroid/database/sqlite/SQLiteStatement;

    .line 30
    .line 31
    if-eq v1, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/wh/sp;->x:Landroid/database/sqlite/SQLiteStatement;

    .line 41
    .line 42
    return-object v0
.end method

.method public ve()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/wh/sp;->a:Landroid/database/sqlite/SQLiteStatement;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/wh/sp;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/wh/sp;->ve:[Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/wh/sp;->uj:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/byazt/w/i;->c(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/wh/sp;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/byazt/wh/sp;->a:Landroid/database/sqlite/SQLiteStatement;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/wh/sp;->a:Landroid/database/sqlite/SQLiteStatement;

    .line 27
    .line 28
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v1, p0, Lcom/byazt/wh/sp;->a:Landroid/database/sqlite/SQLiteStatement;

    .line 30
    .line 31
    if-eq v1, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/wh/sp;->a:Landroid/database/sqlite/SQLiteStatement;

    .line 41
    .line 42
    return-object v0
.end method
