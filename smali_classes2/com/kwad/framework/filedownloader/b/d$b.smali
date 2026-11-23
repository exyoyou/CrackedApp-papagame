.class final Lcom/kwad/framework/filedownloader/b/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/kwad/framework/filedownloader/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aAK:Lcom/kwad/framework/filedownloader/b/d;

.field private aAL:Landroid/database/Cursor;

.field private final aAM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aAN:I


# direct methods
.method constructor <init>(Lcom/kwad/framework/filedownloader/b/d;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAM:Ljava/util/List;

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->a(Lcom/kwad/framework/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "ksad_file_download"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAL:Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_1
    move-exception v0

    .line 38
    invoke-static {p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(Lcom/kwad/framework/filedownloader/b/d;Landroid/database/sqlite/SQLiteException;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private BU()Lcom/kwad/framework/filedownloader/d/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAL:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->e(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAN:I

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method final BS()V
    .locals 8

    .line 1
    const-string v0, "DELETE FROM %s WHERE %s IN (%s);"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAL:Landroid/database/Cursor;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAM:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    const-string v1, ", "

    .line 20
    .line 21
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAM:Ljava/util/List;

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-boolean v2, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-array v2, v4, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object v1, v2, v3

    .line 36
    .line 37
    const-string v5, "delete %s"

    .line 38
    .line 39
    invoke-static {p0, v5, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/kwad/framework/filedownloader/b/d;->a(Lcom/kwad/framework/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v5, 0x3

    .line 49
    new-array v6, v5, [Ljava/lang/Object;

    .line 50
    .line 51
    const-string v7, "ksad_file_download"

    .line 52
    .line 53
    aput-object v7, v6, v3

    .line 54
    .line 55
    const-string v7, "_id"

    .line 56
    .line 57
    aput-object v7, v6, v4

    .line 58
    .line 59
    const/4 v7, 0x2

    .line 60
    aput-object v1, v6, v7

    .line 61
    .line 62
    invoke-static {v0, v6}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-array v5, v5, [Ljava/lang/Object;

    .line 70
    .line 71
    const-string v6, "ksad_file_download_connection"

    .line 72
    .line 73
    aput-object v6, v5, v3

    .line 74
    .line 75
    const-string v3, "id"

    .line 76
    .line 77
    aput-object v3, v5, v4

    .line 78
    .line 79
    aput-object v1, v5, v7

    .line 80
    .line 81
    invoke-static {v0, v5}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 96
    .line 97
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(Lcom/kwad/framework/filedownloader/b/d;Landroid/database/sqlite/SQLiteException;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAL:Landroid/database/Cursor;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_0
    return v0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d$b;->BU()Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAM:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/framework/filedownloader/b/d$b;->aAN:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
