.class public final Lcom/kwad/framework/filedownloader/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/b/d$b;,
        Lcom/kwad/framework/filedownloader/b/d$a;
    }
.end annotation


# static fields
.field private static aAF:Z


# instance fields
.field private final aAG:Lcom/kwad/framework/filedownloader/b/e;

.field private aAH:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/framework/filedownloader/b/e;

    .line 5
    .line 6
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/c;->Dx()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/b/e;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAG:Lcom/kwad/framework/filedownloader/b/e;

    .line 14
    .line 15
    return-void
.end method

.method private BT()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAH:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAG:Lcom/kwad/framework/filedownloader/b/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAH:Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAH:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    return-object v0
.end method

.method static synthetic a(Lcom/kwad/framework/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private a(ILandroid/content/ContentValues;)V
    .locals 6

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ksad_file_download"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 37
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p2

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method private a(ILandroid/database/sqlite/SQLiteException;)V
    .locals 1
    .param p2    # Landroid/database/sqlite/SQLiteException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    instance-of v0, p2, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->cF(I)Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->cE(I)V

    .line 44
    :cond_0
    invoke-static {p2}, Lcom/kwad/framework/filedownloader/b/d;->o(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 45
    sput-boolean p1, Lcom/kwad/framework/filedownloader/b/d;->aAF:Z

    return-void

    .line 46
    :cond_1
    invoke-static {p2}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteException;)V
    .locals 1

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/framework/filedownloader/b/d;Landroid/database/sqlite/SQLiteException;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method private static d(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/kwad/framework/filedownloader/d/c;

    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/d/c;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "_id"

    .line 11
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->setId(I)V

    const-string v1, "url"

    .line 12
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->setUrl(Ljava/lang/String;)V

    const-string v1, "path"

    .line 13
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pathAsDirectory"

    .line 14
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/kwad/framework/filedownloader/d/c;->d(Ljava/lang/String;Z)V

    const-string v1, "status"

    .line 16
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    const-string v1, "sofar"

    .line 17
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    const-string v1, "total"

    .line 18
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->ah(J)V

    const-string v1, "errMsg"

    .line 19
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    const-string v1, "etag"

    .line 20
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->cg(Ljava/lang/String;)V

    const-string v1, "filename"

    .line 21
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->ci(Ljava/lang/String;)V

    const-string v1, "connectionCount"

    .line 22
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/kwad/framework/filedownloader/d/c;->cV(I)V

    return-object v0
.end method

.method private d(Lcom/kwad/framework/filedownloader/d/c;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ksad_file_download"

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CV()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 5
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method static synthetic e(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/framework/filedownloader/b/d;->d(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static o(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method static synthetic p(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static printStackTrace(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/framework/filedownloader/b/d;->o(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final BR()Lcom/kwad/framework/filedownloader/b/a$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/b/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lcom/kwad/framework/filedownloader/b/d$a;-><init>(Lcom/kwad/framework/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/kwad/framework/filedownloader/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;>;)",
            "Lcom/kwad/framework/filedownloader/b/a$a;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/kwad/framework/filedownloader/b/d$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/framework/filedownloader/b/d$a;-><init>(Lcom/kwad/framework/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public final a(IIJ)V
    .locals 5

    .line 6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "currentOffset"

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "ksad_file_download_connection"

    const-string v1, "id = ? AND connectionIndex = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 10
    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p2

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method public final a(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    .line 20
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v1, "total"

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "etag"

    .line 22
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "filename"

    .line 23
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final a(ILjava/lang/String;JJI)V
    .locals 2

    .line 13
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sofar"

    .line 14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "total"

    .line 15
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "etag"

    .line 16
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "connectionCount"

    .line 17
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;)V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "errMsg"

    .line 31
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 32
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;J)V
    .locals 2

    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "errMsg"

    .line 26
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 27
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string p2, "sofar"

    .line 28
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final a(Lcom/kwad/framework/filedownloader/d/a;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ksad_file_download_connection"

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/a;->CV()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/a;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final b(IJ)V
    .locals 3

    .line 12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 13
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v1, "sofar"

    .line 14
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final b(Lcom/kwad/framework/filedownloader/d/c;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "update but model == null!"

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1, v0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kwad/framework/filedownloader/b/d;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CV()Landroid/content/ContentValues;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "ksad_file_download"

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 6
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 9
    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 10
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->d(Lcom/kwad/framework/filedownloader/d/c;)V

    :goto_0
    return-void
.end method

.method public final c(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->cF(I)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final cB(I)V
    .locals 0

    return-void
.end method

.method public final cC(I)Lcom/kwad/framework/filedownloader/d/c;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "SELECT * FROM %s WHERE %s = ?"

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v4, "ksad_file_download"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v4, v3, v5

    .line 15
    .line 16
    const-string v4, "_id"

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    aput-object v4, v3, v6

    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-array v3, v6, [Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    aput-object v4, v3, v5

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/b/d;->d(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception v2

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_3

    .line 57
    :catch_2
    move-exception p1

    .line 58
    move-object v1, v0

    .line 59
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_3
    move-exception v2

    .line 64
    move-object v1, v0

    .line 65
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_2
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    move-object v0, v1

    .line 74
    :goto_3
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final cD(I)Ljava/util/List;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "SELECT * FROM %s WHERE %s = ?"

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    new-array v4, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v5, "ksad_file_download_connection"

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aput-object v5, v4, v6

    .line 20
    .line 21
    const-string v5, "id"

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    aput-object v5, v4, v7

    .line 25
    .line 26
    invoke-static {v3, v4}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-array v4, v7, [Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    aput-object v5, v4, v6

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    new-instance v2, Lcom/kwad/framework/filedownloader/d/a;

    .line 49
    .line 50
    invoke-direct {v2}, Lcom/kwad/framework/filedownloader/d/a;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Lcom/kwad/framework/filedownloader/d/a;->setId(I)V

    .line 54
    .line 55
    .line 56
    const-string v3, "connectionIndex"

    .line 57
    .line 58
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v2, v3}, Lcom/kwad/framework/filedownloader/d/a;->setIndex(I)V

    .line 67
    .line 68
    .line 69
    const-string v3, "startOffset"

    .line 70
    .line 71
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    invoke-virtual {v2, v3, v4}, Lcom/kwad/framework/filedownloader/d/a;->setStartOffset(J)V

    .line 80
    .line 81
    .line 82
    const-string v3, "currentOffset"

    .line 83
    .line 84
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    invoke-virtual {v2, v3, v4}, Lcom/kwad/framework/filedownloader/d/a;->ad(J)V

    .line 93
    .line 94
    .line 95
    const-string v3, "endOffset"

    .line 96
    .line 97
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    invoke-virtual {v2, v3, v4}, Lcom/kwad/framework/filedownloader/d/a;->ae(J)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    goto :goto_2

    .line 114
    :catch_0
    move-exception p1

    .line 115
    :try_start_1
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catch_1
    move-exception v2

    .line 120
    invoke-direct {p0, p1, v2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :goto_2
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public final cE(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "DELETE FROM ksad_file_download_connection WHERE id = "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_1
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final cF(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ksad_file_download"

    .line 7
    .line 8
    const-string v3, "_id = ?"

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    new-array v5, v4, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    aput-object p1, v5, v0

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return v0
.end method

.method public final cG(I)V
    .locals 0

    return-void
.end method

.method public final clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ksad_file_download"

    .line 7
    .line 8
    invoke-virtual {v1, v2, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "ksad_file_download_connection"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_1
    move-exception v0

    .line 27
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final d(IJ)V
    .locals 3

    .line 6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v1, "sofar"

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final w(II)V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "connectionCount"

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v1, "ksad_file_download"

    .line 20
    .line 21
    const-string v2, "_id = ? "

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    new-array v3, v3, [Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x0

    .line 31
    aput-object v4, v3, v5

    .line 32
    .line 33
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_1
    move-exception p2

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
