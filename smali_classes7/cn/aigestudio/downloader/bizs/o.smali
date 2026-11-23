.class Lcn/aigestudio/downloader/bizs/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/aigestudio/downloader/bizs/m;


# instance fields
.field private final a:Lcn/aigestudio/downloader/bizs/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
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
    new-instance v0, Lcn/aigestudio/downloader/bizs/b;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/bizs/b;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x7

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    .line 17
    .line 18
    aput-object v3, v1, v2

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->k:Ljava/lang/String;

    .line 22
    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x3

    .line 36
    aput-object v2, v1, v3

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    .line 40
    .line 41
    aput-object v3, v1, v2

    .line 42
    .line 43
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x5

    .line 54
    aput-object v2, v1, v3

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 58
    .line 59
    aput-object p1, v1, v2

    .line 60
    .line 61
    const-string p1, "UPDATE task_info SET disposition=?,location=?,mime_type=?,totalBytes=?,file_name=?,currentBytes=? WHERE base_url=?"

    .line 62
    .line 63
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public d(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 18
    .line 19
    aput-object v3, v1, v2

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 23
    .line 24
    aput-object v3, v1, v2

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    .line 28
    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->k:Ljava/lang/String;

    .line 33
    .line 34
    aput-object v3, v1, v2

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->l:Ljava/lang/String;

    .line 38
    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    const/4 v2, 0x6

    .line 42
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    .line 43
    .line 44
    aput-object v3, v1, v2

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    iget-object v3, p1, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    .line 48
    .line 49
    aput-object v3, v1, v2

    .line 50
    .line 51
    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/16 v3, 0x8

    .line 62
    .line 63
    aput-object v2, v1, v3

    .line 64
    .line 65
    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/16 v2, 0x9

    .line 76
    .line 77
    aput-object p1, v1, v2

    .line 78
    .line 79
    const-string p1, "INSERT INTO task_info(base_url, real_url, file_path, file_name, mime_type, e_tag, disposition, location, currentBytes, totalBytes) values (?,?,?,?,?,?,?,?,?,?)"

    .line 80
    .line 81
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DELETE FROM task_info WHERE base_url=?"

    .line 8
    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public h(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/o;->a:Lcn/aigestudio/downloader/bizs/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SELECT base_url, real_url, file_path, file_name, mime_type, e_tag, disposition, location, currentBytes, totalBytes FROM task_info WHERE base_url=?"

    .line 8
    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcn/aigestudio/downloader/bizs/f;

    .line 24
    .line 25
    invoke-direct {v1}, Lcn/aigestudio/downloader/bizs/f;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iput-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->k:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v2, 0x5

    .line 64
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->l:Ljava/lang/String;

    .line 69
    .line 70
    const/4 v2, 0x6

    .line 71
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    .line 86
    const/16 v3, 0x8

    .line 87
    .line 88
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    int-to-long v3, v3

    .line 93
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 94
    .line 95
    .line 96
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 97
    .line 98
    const/16 v3, 0x9

    .line 99
    .line 100
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    int-to-long v3, v3

    .line 105
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 114
    .line 115
    .line 116
    return-object v1
.end method
