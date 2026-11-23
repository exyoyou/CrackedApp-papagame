.class public Lcom/byazt/yws/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x362,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/yws/uj$c;
    }
.end annotation


# static fields
.field public static final tt:Ljava/lang/Object;


# instance fields
.field public c:Landroid/database/sqlite/SQLiteDatabase;

.field public final uj:Ljava/lang/String;

.field public final ve:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/yws/uj;->tt:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/yws/uj;->ve:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/yws/uj;->uj:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/yws/uj;->tt:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/byazt/yws/uj;->uj:Ljava/lang/String;

    const-string v2, "ttopensdk.db"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    sget v1, Lcom/byazt/omf/p;->uj:I

    const/16 v2, 0x1bbc

    if-lt v1, v2, :cond_3

    const/16 v1, 0xd

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    .line 6
    :goto_1
    new-instance v2, Lcom/byazt/non/tt;

    iget-object v3, p0, Lcom/byazt/yws/uj;->ve:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/byazt/non/tt;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/byazt/yws/uj;->uj:Ljava/lang/String;

    const-string v2, "ttopensdk2.db"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    new-instance v2, Lcom/byazt/non/c;

    iget-object v1, p0, Lcom/byazt/yws/uj;->ve:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/byazt/non/c;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    invoke-direct {p0}, Lcom/byazt/yws/uj;->a()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 13
    :cond_7
    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/yws/uj;->c()V

    .line 15
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 16
    invoke-direct {p0}, Lcom/byazt/yws/uj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    throw p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/yws/uj;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/yws/uj;->a()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1

    .line 23
    :cond_0
    throw p1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/yws/uj;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/yws/uj;->a()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const-wide/16 p1, -0x1

    .line 22
    .line 23
    :goto_0
    return-wide p1

    .line 24
    :cond_0
    throw p1
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yws/uj;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/yws/uj;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    move-object v7, p7

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    new-instance p2, Lcom/byazt/yws/uj$c;

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-direct {p2, p0, p3}, Lcom/byazt/yws/uj$c;-><init>(Lcom/byazt/yws/uj;Lcom/byazt/yws/uj$1;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/byazt/yws/uj;->a()Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-nez p3, :cond_0

    .line 30
    .line 31
    move-object p1, p2

    .line 32
    :goto_0
    return-object p1

    .line 33
    :cond_0
    throw p1
.end method

.method public tt()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yws/uj;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/yws/uj;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/yws/uj;->a()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1

    .line 23
    :cond_0
    throw p1
.end method

.method public ve()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yws/uj;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/yws/uj;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
