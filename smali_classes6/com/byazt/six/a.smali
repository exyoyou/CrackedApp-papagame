.class public Lcom/byazt/six/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f6,
        0x22
    }
.end annotation


# static fields
.field public static c:I = 0x7d0

.field public static volatile tt:Lcom/byazt/six/a;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/ku/ve;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/byazt/ku/tt;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Ljava/lang/Object;

.field public ve:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/six/a;->uj:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/six/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Lcom/byazt/six/a$1;

    .line 20
    .line 21
    sget v1, Lcom/byazt/six/a;->c:I

    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Lcom/byazt/six/a$1;-><init>(Lcom/byazt/six/a;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/byazt/six/a;->ve:Ljava/util/Set;

    .line 38
    .line 39
    return-void
.end method

.method public static c()Lcom/byazt/six/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/six/a;->tt:Lcom/byazt/six/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/six/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/six/a;->tt:Lcom/byazt/six/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/six/a;

    invoke-direct {v1}, Lcom/byazt/six/a;-><init>()V

    sput-object v1, Lcom/byazt/six/a;->tt:Lcom/byazt/six/a;

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
    sget-object v0, Lcom/byazt/six/a;->tt:Lcom/byazt/six/a;

    return-object v0
.end method

.method private uj(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/six/a;->uj:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public static ve()Ljava/lang/String;
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT , update_time TEXT)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/ku/tt;
    .locals 10

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/six/a;->uj:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ku/tt;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_1

    return-object v2

    .line 11
    :cond_1
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v2

    const-string v3, "template_diff_new"

    const/4 v4, 0x0

    const-string v5, "id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/byazt/mf/tt;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "rit"

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    .line 14
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "md5"

    .line 15
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    .line 16
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    .line 17
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    .line 18
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "update_time"

    .line 19
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 20
    new-instance v8, Lcom/byazt/ku/tt;

    invoke-direct {v8}, Lcom/byazt/ku/tt;-><init>()V

    .line 21
    invoke-virtual {v8, v0}, Lcom/byazt/ku/tt;->c(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v2}, Lcom/byazt/ku/tt;->tt(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v3}, Lcom/byazt/ku/tt;->ve(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v4}, Lcom/byazt/ku/tt;->uj(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v5}, Lcom/byazt/ku/tt;->n(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v6}, Lcom/byazt/ku/tt;->a(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v7}, Lcom/byazt/ku/tt;->c(Ljava/lang/Long;)Lcom/byazt/ku/tt;

    move-result-object v0

    .line 28
    iget-object v3, p0, Lcom/byazt/six/a;->uj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    iget-object v4, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    invoke-virtual {v4, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :try_start_3
    iget-object v3, p0, Lcom/byazt/six/a;->ve:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_2

    .line 33
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 34
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    const-string v2, "TmplDbHelper"

    const-string v3, "getTemplate error"

    .line 36
    invoke-static {v2, v3, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    :goto_1
    return-object v1

    :catchall_3
    move-exception p1

    .line 38
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public c(Lcom/byazt/ku/tt;Z)V
    .locals 9

    if-eqz p1, :cond_a

    .line 39
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ku/tt;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v1

    const-string v2, "template_diff_new"

    const/4 v3, 0x0

    const-string v4, "id=?"

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->tt()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/byazt/mf/tt;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 43
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "rit"

    .line 44
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 46
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "rit"

    .line 47
    invoke-virtual {p1}, Lcom/byazt/ku/tt;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "id"

    .line 48
    invoke-virtual {p1}, Lcom/byazt/ku/tt;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "md5"

    .line 49
    invoke-virtual {p1}, Lcom/byazt/ku/tt;->ve()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    .line 50
    invoke-virtual {p1}, Lcom/byazt/ku/tt;->uj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    .line 51
    invoke-virtual {p1}, Lcom/byazt/ku/tt;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "version"

    .line 52
    invoke-virtual {p1}, Lcom/byazt/ku/tt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "update_time"

    .line 53
    invoke-virtual {p1}, Lcom/byazt/ku/tt;->sp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v1, :cond_5

    .line 54
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v1

    const-string v3, "template_diff_new"

    const-string v4, "id=?"

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->tt()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v0, v4, v5}, Lcom/byazt/mf/tt;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 55
    :cond_5
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v1

    const-string v3, "template_diff_new"

    invoke-interface {v1, v3, v0}, Lcom/byazt/mf/tt;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 56
    :goto_2
    iget-object v0, p0, Lcom/byazt/six/a;->uj:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 59
    iget-object v0, p0, Lcom/byazt/six/a;->ve:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_9

    .line 60
    :try_start_2
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/mf/c;->a()Lcom/byazt/mf/n;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_3

    .line 61
    :cond_6
    iget-object p2, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p2, :cond_7

    .line 62
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    :cond_7
    new-instance p2, Lcom/byazt/ku/ve;

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->ve()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v1, v3}, Lcom/byazt/ku/ve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 65
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->a()Lcom/byazt/mf/n;

    move-result-object v0

    invoke-virtual {p2}, Lcom/byazt/ku/ve;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/byazt/mf/n;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_8
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->a()Lcom/byazt/mf/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ku/tt;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/byazt/mf/n;->update(Ljava/lang/String;Lcom/byazt/ku/ve;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_9
    :goto_3
    return-void

    :catchall_2
    move-exception p1

    .line 67
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_a
    :goto_4
    return-void
.end method

.method public c(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 68
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 70
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 71
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 72
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/byazt/six/a;->uj(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v1

    aget-object v2, p1, v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "template_diff_new"

    const-string v4, "id=?"

    invoke-interface {v1, v3, v4, v2}, Lcom/byazt/mf/tt;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/byazt/six/a;->ve(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public tt()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/ku/tt;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/byazt/six/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/byazt/six/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v4

    const-string v5, "template_diff_new"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Lcom/byazt/mf/tt;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 41
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "rit"

    .line 42
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 43
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "md5"

    .line 44
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    .line 45
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "data"

    .line 46
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "version"

    .line 47
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "update_time"

    .line 48
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 49
    new-instance v11, Lcom/byazt/ku/tt;

    invoke-direct {v11}, Lcom/byazt/ku/tt;-><init>()V

    .line 50
    invoke-virtual {v11, v4}, Lcom/byazt/ku/tt;->c(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v11

    .line 51
    invoke-virtual {v11, v5}, Lcom/byazt/ku/tt;->tt(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v11

    .line 52
    invoke-virtual {v11, v6}, Lcom/byazt/ku/tt;->ve(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v11

    .line 53
    invoke-virtual {v11, v7}, Lcom/byazt/ku/tt;->uj(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v7

    .line 54
    invoke-virtual {v7, v8}, Lcom/byazt/ku/tt;->n(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v7

    .line 55
    invoke-virtual {v7, v9}, Lcom/byazt/ku/tt;->a(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v7

    .line 56
    invoke-virtual {v7, v10}, Lcom/byazt/ku/tt;->c(Ljava/lang/Long;)Lcom/byazt/ku/tt;

    move-result-object v7

    .line 57
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v7, p0, Lcom/byazt/six/a;->uj:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    iget-object v8, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    iget-object v7, p0, Lcom/byazt/six/a;->ve:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byazt/mf/c;->a()Lcom/byazt/mf/n;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 63
    iget-object v7, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v7, :cond_2

    .line 64
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    if-eqz v5, :cond_1

    .line 65
    iget-object v7, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 66
    iget-object v7, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Lcom/byazt/ku/ve;

    invoke-direct {v8, v4, v5, v6}, Lcom/byazt/ku/ve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 67
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    :cond_3
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    const-string v2, "TmplDbHelper"

    const-string v4, "getTemplate error"

    .line 69
    invoke-static {v2, v4, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 70
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public tt(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/byazt/ku/tt;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->tt()Lcom/byazt/mf/tt;

    move-result-object v1

    const-string v2, "template_diff_new"

    const/4 v3, 0x0

    const-string v4, "rit=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/byazt/mf/tt;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const-string v2, "id"

    .line 6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    iget-object v3, p0, Lcom/byazt/six/a;->uj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    iget-object v4, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/ku/tt;

    .line 10
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    .line 11
    :try_start_2
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v3, "md5"

    .line 12
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    .line 13
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    .line 14
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    .line 15
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "update_time"

    .line 16
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 17
    new-instance v8, Lcom/byazt/ku/tt;

    invoke-direct {v8}, Lcom/byazt/ku/tt;-><init>()V

    .line 18
    invoke-virtual {v8, p1}, Lcom/byazt/ku/tt;->c(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v8

    .line 19
    invoke-virtual {v8, v2}, Lcom/byazt/ku/tt;->tt(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v8

    .line 20
    invoke-virtual {v8, v3}, Lcom/byazt/ku/tt;->ve(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v3

    .line 21
    invoke-virtual {v3, v4}, Lcom/byazt/ku/tt;->uj(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v3

    .line 22
    invoke-virtual {v3, v5}, Lcom/byazt/ku/tt;->n(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v3

    .line 23
    invoke-virtual {v3, v6}, Lcom/byazt/ku/tt;->a(Ljava/lang/String;)Lcom/byazt/ku/tt;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v7}, Lcom/byazt/ku/tt;->c(Ljava/lang/Long;)Lcom/byazt/ku/tt;

    move-result-object v3

    .line 25
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v4, p0, Lcom/byazt/six/a;->uj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    :try_start_3
    iget-object v5, p0, Lcom/byazt/six/a;->sp:Landroid/util/LruCache;

    invoke-virtual {v5, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    :try_start_4
    iget-object v3, p0, Lcom/byazt/six/a;->ve:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 30
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    .line 31
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    .line 32
    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v2, :cond_1

    .line 33
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_2
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_5
    if-eqz v0, :cond_6

    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 34
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 35
    :cond_7
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public ve(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ku/ve;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ku/ve;->c()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/mf/c;->a()Lcom/byazt/mf/n;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/mf/c;->a()Lcom/byazt/mf/n;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/byazt/mf/n;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/byazt/six/a;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method
