.class public Lcom/join/android/app/component/album/lib/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/album/lib/b$g;
    }
.end annotation


# static fields
.field private static j:Lcom/join/android/app/component/album/lib/b; = null

.field private static final k:I = 0x0

.field private static final l:I = 0x2

.field private static final m:I = 0x4

.field private static final n:I = 0x8


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field private e:Z

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/os/Handler;

.field private i:Lcom/join/android/app/component/album/lib/b$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->c:Ljava/util/Map;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/join/android/app/component/album/lib/b;->d:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/join/android/app/component/album/lib/b;->e:Z

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Lcom/join/android/app/component/album/lib/b$a;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b$a;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->h:Landroid/os/Handler;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;

    .line 41
    .line 42
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/b;->i:Lcom/join/android/app/component/album/lib/b$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/b;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/component/album/lib/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/album/lib/b;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/android/app/component/album/lib/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/lib/b;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static g(Landroid/content/Context;)Lcom/join/android/app/component/album/lib/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/component/album/lib/b;->j:Lcom/join/android/app/component/album/lib/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/join/android/app/component/album/lib/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/join/android/app/component/album/lib/b;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/lib/b;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/join/android/app/component/album/lib/b;->j:Lcom/join/android/app/component/album/lib/b;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0

    .line 20
    :cond_0
    :goto_0
    sget-object p0, Lcom/join/android/app/component/album/lib/b;->j:Lcom/join/android/app/component/album/lib/b;

    .line 21
    .line 22
    return-object p0
.end method

.method private h()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b$d;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized i()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "mounted"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;

    .line 21
    .line 22
    const-string v1, "\u6682\u65e0\u5916\u90e8\u5b58\u50a8"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/join/android/app/component/album/lib/b;->e:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->b:Landroid/content/Context;

    .line 39
    .line 40
    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/join/android/app/component/album/lib/b;->g:Landroid/app/ProgressDialog;

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b;->i:Lcom/join/android/app/component/album/lib/b$g;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/join/android/app/component/album/lib/b$g;->a()V

    .line 54
    .line 55
    .line 56
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    .line 57
    .line 58
    new-instance v1, Lcom/join/android/app/component/album/lib/b$b;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/lib/b$b;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    monitor-exit p0

    .line 73
    throw v0
.end method

.method public declared-synchronized j(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b;->i:Lcom/join/android/app/component/album/lib/b$g;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/join/android/app/component/album/lib/b$g;->a()V

    .line 7
    .line 8
    .line 9
    :cond_0
    new-instance p1, Lcom/join/android/app/component/album/lib/b$c;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/join/android/app/component/album/lib/b$c;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public k(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/join/android/app/component/album/lib/b;->h()Ljava/io/FilenameFilter;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/join/android/app/component/album/lib/b;->m(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-object v0
.end method

.method public l(Lcom/join/android/app/component/album/lib/b$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b;->i:Lcom/join/android/app/component/album/lib/b$g;

    .line 2
    .line 3
    return-void
.end method

.method m(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/album/lib/b$e;-><init>(Lcom/join/android/app/component/album/lib/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method n(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b$f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b$f;-><init>(Lcom/join/android/app/component/album/lib/b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
