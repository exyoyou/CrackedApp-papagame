.class public Lcom/kwad/framework/filedownloader/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/r$a;
    }
.end annotation


# static fields
.field private static final aAj:Ljava/lang/Object;

.field private static final aAl:Ljava/lang/Object;


# instance fields
.field private aAk:Lcom/kwad/framework/filedownloader/w;

.field private volatile aAm:Lcom/kwad/framework/filedownloader/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/framework/filedownloader/r;->aAj:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/kwad/framework/filedownloader/r;->aAl:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static BG()Lcom/kwad/framework/filedownloader/r;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/r$a;->BL()Lcom/kwad/framework/filedownloader/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static BI()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/n;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/framework/filedownloader/services/c$b;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    const-class v1, Lcom/kwad/framework/filedownloader/r;

    const-string v2, "init Downloader with params: %s %s"

    invoke-static {v1, v2, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/framework/filedownloader/f/c;->aY(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/kwad/framework/filedownloader/download/b;->a(Lcom/kwad/framework/filedownloader/services/c$b;)V

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the provided context must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/kwad/framework/filedownloader/e;)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/kwad/framework/filedownloader/f;->Bl()Lcom/kwad/framework/filedownloader/f;

    move-result-object v0

    const-string v1, "event.service.connect.changed"

    invoke-virtual {v0, v1, p0}, Lcom/kwad/framework/filedownloader/event/a;->a(Ljava/lang/String;Lcom/kwad/framework/filedownloader/event/c;)Z

    return-void
.end method

.method public static aX(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/kwad/framework/filedownloader/f/c;->aY(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static bV(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/framework/filedownloader/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private cy(I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/h;->ct(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object p1, v0, v1

    .line 24
    .line 25
    const-string p1, "request pause but not exist %d"

    .line 26
    .line 27
    invoke-static {p0, p1, v0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/kwad/framework/filedownloader/a$a;

    .line 46
    .line 47
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->pause()Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method


# virtual methods
.method public final BH()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/r;->BI()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/c;->Dx()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/n;->aW(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method final BJ()Lcom/kwad/framework/filedownloader/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/r;->aAk:Lcom/kwad/framework/filedownloader/w;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/kwad/framework/filedownloader/r;->aAj:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/r;->aAk:Lcom/kwad/framework/filedownloader/w;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/framework/filedownloader/ab;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/kwad/framework/filedownloader/ab;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/r;->aAk:Lcom/kwad/framework/filedownloader/w;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/r;->aAk:Lcom/kwad/framework/filedownloader/w;

    .line 25
    .line 26
    return-object v0
.end method

.method final BK()Lcom/kwad/framework/filedownloader/v;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/r;->aAm:Lcom/kwad/framework/filedownloader/v;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/kwad/framework/filedownloader/r;->aAl:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/r;->aAm:Lcom/kwad/framework/filedownloader/v;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/framework/filedownloader/z;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/kwad/framework/filedownloader/z;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/r;->aAm:Lcom/kwad/framework/filedownloader/v;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/r;->aAm:Lcom/kwad/framework/filedownloader/v;

    .line 20
    .line 21
    check-cast v1, Lcom/kwad/framework/filedownloader/e;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/r;->a(Lcom/kwad/framework/filedownloader/e;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/r;->aAm:Lcom/kwad/framework/filedownloader/v;

    .line 32
    .line 33
    return-object v0
.end method

.method public final v(ILjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/r;->cy(I)I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/n;->cx(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/kwad/framework/filedownloader/f/f;->cm(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 38
    .line 39
    .line 40
    :cond_1
    new-instance p1, Ljava/io/File;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 52
    .line 53
    .line 54
    :cond_2
    return v0

    .line 55
    :cond_3
    const/4 p1, 0x0

    .line 56
    return p1
.end method
