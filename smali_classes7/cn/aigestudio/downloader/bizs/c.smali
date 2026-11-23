.class public final Lcn/aigestudio/downloader/bizs/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/aigestudio/downloader/bizs/m;
.implements Lcn/aigestudio/downloader/bizs/n;


# static fields
.field private static c:Lcn/aigestudio/downloader/bizs/c;


# instance fields
.field private a:Lcn/aigestudio/downloader/bizs/o;

.field private b:Lcn/aigestudio/downloader/bizs/p;


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
    new-instance v0, Lcn/aigestudio/downloader/bizs/o;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/bizs/o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    .line 10
    .line 11
    new-instance v0, Lcn/aigestudio/downloader/bizs/p;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcn/aigestudio/downloader/bizs/p;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    .line 17
    .line 18
    return-void
.end method

.method public static k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;
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
    sget-object v0, Lcn/aigestudio/downloader/bizs/c;->c:Lcn/aigestudio/downloader/bizs/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcn/aigestudio/downloader/bizs/c;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcn/aigestudio/downloader/bizs/c;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcn/aigestudio/downloader/bizs/c;->c:Lcn/aigestudio/downloader/bizs/c;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcn/aigestudio/downloader/bizs/c;->c:Lcn/aigestudio/downloader/bizs/c;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/j;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->b(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/j;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized c(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/o;->c(Lcn/aigestudio/downloader/bizs/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized d(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/o;->d(Lcn/aigestudio/downloader/bizs/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized e(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->e(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/o;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized g(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/aigestudio/downloader/bizs/j;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->g(Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized h(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->a:Lcn/aigestudio/downloader/bizs/o;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/o;->h(Ljava/lang/String;)Lcn/aigestudio/downloader/bizs/f;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized i(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->i(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized j(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/c;->b:Lcn/aigestudio/downloader/bizs/p;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/p;->j(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method
