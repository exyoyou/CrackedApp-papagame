.class public Lcom/facebook/imageformat/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static d:Lcom/facebook/imageformat/d;


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/imageformat/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/facebook/imageformat/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/facebook/imageformat/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/imageformat/d;->c:Lcom/facebook/imageformat/a;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/facebook/imageformat/d;->i()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imageformat/d;->e()Lcom/facebook/imageformat/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/facebook/imageformat/d;->a(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/facebook/imageformat/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-static {v1}, Lcom/facebook/imageformat/d;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v1}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    move-object v0, v1

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-object v0, v1

    .line 19
    goto :goto_0

    .line 20
    :catchall_1
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :catch_1
    :goto_0
    :try_start_2
    sget-object p0, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    .line 24
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :goto_1
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public static d(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "is"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageformat/d;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/facebook/common/internal/n;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public static declared-synchronized e()Lcom/facebook/imageformat/d;
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/imageformat/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/imageformat/d;->d:Lcom/facebook/imageformat/d;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/facebook/imageformat/d;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/facebook/imageformat/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/facebook/imageformat/d;->d:Lcom/facebook/imageformat/d;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/facebook/imageformat/d;->d:Lcom/facebook/imageformat/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method private static f(ILjava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "maxHeaderLength",
            "is",
            "imageHeaderBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    array-length v0, p2

    .line 8
    const/4 v1, 0x0

    .line 9
    if-lt v0, p0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2, v1, p0}, Lcom/facebook/common/internal/b;->b(Ljava/io/InputStream;[BII)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 35
    .line 36
    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    invoke-static {p1, p2, v1, p0}, Lcom/facebook/common/internal/b;->b(Ljava/io/InputStream;[BII)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imageformat/d;->c:Lcom/facebook/imageformat/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imageformat/a;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/facebook/imageformat/d;->a:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/imageformat/d;->b:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/facebook/imageformat/c$a;

    .line 28
    .line 29
    iget v2, p0, Lcom/facebook/imageformat/d;->a:I

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/facebook/imageformat/c$a;->b()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lcom/facebook/imageformat/d;->a:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/facebook/imageformat/d;->a:I

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Lcom/facebook/imageformat/d;->f(ILjava/io/InputStream;[B)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/facebook/imageformat/d;->c:Lcom/facebook/imageformat/a;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/facebook/imageformat/a;->a([BI)Lcom/facebook/imageformat/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v2, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    .line 21
    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/imageformat/d;->b:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/facebook/imageformat/c$a;

    .line 44
    .line 45
    invoke-interface {v2, v1, p1}, Lcom/facebook/imageformat/c$a;->a([BI)Lcom/facebook/imageformat/c;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    sget-object v3, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    .line 52
    .line 53
    if-eq v2, v3, :cond_1

    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_2
    sget-object p1, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    .line 57
    .line 58
    return-object p1
.end method

.method public g(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customImageFormatCheckers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imageformat/d;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/imageformat/d;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useNewOrder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imageformat/d;->c:Lcom/facebook/imageformat/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imageformat/a;->k(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
