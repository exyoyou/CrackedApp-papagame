.class public Lmc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lpc/o;

.field private d:Z

.field private e:Lqc/a;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmc/c;->a:Ljava/lang/String;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lmc/c;->b:I

    .line 5
    new-instance p1, Lqc/a;

    invoke-direct {p1}, Lqc/a;-><init>()V

    iput-object p1, p0, Lmc/c;->e:Lqc/a;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmc/c;->f:Z

    return-void

    .line 7
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Input zip file parameter is not null"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lmc/c;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private J()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->d(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget v0, p0, Lmc/c;->b:I

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 24
    .line 25
    new-instance v2, Ljava/io/File;

    .line 26
    .line 27
    iget-object v3, p0, Lmc/c;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "r"

    .line 33
    .line 34
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Lmc/a;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lmc/a;-><init>(Ljava/io/RandomAccessFile;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lmc/c;->g:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lmc/a;->d(Ljava/lang/String;)Lpc/o;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v2, p0, Lmc/c;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lpc/o;->F(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    return-void

    .line 65
    :catch_1
    move-exception v0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    move-object v4, v1

    .line 69
    move-object v1, v0

    .line 70
    move-object v0, v4

    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception v1

    .line 73
    move-object v4, v1

    .line 74
    move-object v1, v0

    .line 75
    move-object v0, v4

    .line 76
    :goto_0
    :try_start_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 77
    .line 78
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    :goto_1
    if-eqz v1, :cond_1

    .line 84
    .line 85
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 86
    .line 87
    .line 88
    :catch_3
    :cond_1
    throw v0

    .line 89
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 90
    .line 91
    const-string v1, "Invalid mode"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 98
    .line 99
    const-string v1, "no read access for the input zip file"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 106
    .line 107
    const-string v1, "zip file does not exist"

    .line 108
    .line 109
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0
.end method

.method private d(Ljava/io/File;Lpc/p;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmc/c;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 18
    .line 19
    const-string p2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    new-instance p3, Lnet/lingala/zip4j/zip/b;

    .line 26
    .line 27
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 28
    .line 29
    invoke-direct {p3, v0}, Lnet/lingala/zip4j/zip/b;-><init>(Lpc/o;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lmc/c;->e:Lqc/a;

    .line 33
    .line 34
    iget-boolean v1, p0, Lmc/c;->f:Z

    .line 35
    .line 36
    invoke-virtual {p3, p1, p2, v0, v1}, Lnet/lingala/zip4j/zip/b;->c(Ljava/io/File;Lpc/p;Lqc/a;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 41
    .line 42
    const-string p2, "internal error: zip model is null"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method private g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lmc/c;->J()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lmc/c;->h()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    new-instance v0, Lpc/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lpc/o;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 7
    .line 8
    iget-object v1, p0, Lmc/c;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lpc/o;->F(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 14
    .line 15
    iget-object v1, p0, Lmc/c;->g:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lpc/o;->w(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmc/c;->J()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public B(Lpc/h;)Lnet/lingala/zip4j/io/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0}, Lmc/c;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Lnet/lingala/zip4j/unzip/c;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/unzip/c;-><init>(Lpc/o;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/unzip/c;->g(Lpc/h;)Lnet/lingala/zip4j/io/h;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 21
    .line 22
    const-string v0, "zip model is null, cannot get inputstream"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 29
    .line 30
    const-string v0, "FileHeader is null, cannot get InputStream"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public C()Lqc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/c;->e:Lqc/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmc/c;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 5
    .line 6
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->y(Lpc/o;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public E()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lmc/c;->J()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 14
    .line 15
    const-string v1, "Zip Model is null"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 22
    .line 23
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 30
    .line 31
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 42
    .line 43
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 52
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-lt v1, v2, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lpc/h;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2}, Lpc/h;->D()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lmc/c;->d:Z

    .line 75
    .line 76
    :goto_2
    iget-boolean v0, p0, Lmc/c;->d:Z

    .line 77
    .line 78
    return v0

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 83
    .line 84
    const-string v1, "invalid zip file"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmc/c;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public G()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lmc/c;->J()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 14
    .line 15
    const-string v1, "Zip Model is null"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 22
    .line 23
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lmc/c;->J()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    return v0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public I(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lmc/c;->g()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lnet/lingala/zip4j/util/c;

    .line 17
    .line 18
    invoke-direct {v0}, Lnet/lingala/zip4j/util/c;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 22
    .line 23
    iget-object v2, p0, Lmc/c;->e:Lqc/a;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/c;->h(Lpc/o;Lqc/a;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 29
    .line 30
    iget-object v2, p0, Lmc/c;->e:Lqc/a;

    .line 31
    .line 32
    iget-boolean v3, p0, Lmc/c;->f:Z

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1, v2, v3}, Lnet/lingala/zip4j/util/c;->k(Lpc/o;Ljava/io/File;Lqc/a;Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 39
    .line 40
    const-string v0, "zip model is null, corrupt zip file?"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 47
    .line 48
    const-string v0, "output Zip File already exists"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 55
    .line 56
    const-string v0, "outputZipFile is null, cannot merge split files"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public K(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lmc/c;->J()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 23
    .line 24
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/h;->p(Lpc/o;Ljava/lang/String;)Lpc/h;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lmc/c;->L(Lpc/h;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    .line 45
    .line 46
    const-string v2, "could not find file header for file: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 63
    .line 64
    const-string v0, "Zip file format does not allow updating split/spanned files"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 71
    .line 72
    const-string v0, "file name is empty or null, cannot remove file"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public L(Lpc/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lmc/c;->J()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 19
    .line 20
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lnet/lingala/zip4j/util/c;

    .line 27
    .line 28
    invoke-direct {v0}, Lnet/lingala/zip4j/util/c;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 32
    .line 33
    iget-object v2, p0, Lmc/c;->e:Lqc/a;

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1, v2}, Lnet/lingala/zip4j/util/c;->i(Lpc/o;Lpc/h;Lqc/a;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 39
    .line 40
    iget-object v2, p0, Lmc/c;->e:Lqc/a;

    .line 41
    .line 42
    iget-boolean v3, p0, Lmc/c;->f:Z

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1, v2, v3}, Lnet/lingala/zip4j/util/c;->m(Lpc/o;Lpc/h;Lqc/a;Z)Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 49
    .line 50
    const-string v0, "Zip file format does not allow updating split/spanned files"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 57
    .line 58
    const-string v0, "file header is null, cannot remove file"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public M(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-direct {p0}, Lmc/c;->J()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lpc/o;->f()Lpc/f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lnet/lingala/zip4j/util/c;

    .line 25
    .line 26
    invoke-direct {v0}, Lnet/lingala/zip4j/util/c;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Lnet/lingala/zip4j/util/c;->o(Lpc/o;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 36
    .line 37
    const-string v0, "end of central directory is null, cannot set comment"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 44
    .line 45
    const-string v0, "zipModel is null, cannot update zip file"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 52
    .line 53
    const-string v0, "zip file does not exist, cannot set comment for zip file"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 60
    .line 61
    const-string v0, "input comment is null, cannot update zip file"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public N(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->B(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lmc/c;->g:Ljava/lang/String;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuffer;

    .line 19
    .line 20
    const-string v2, "unsupported charset: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 37
    .line 38
    const-string v0, "null or empty charset name"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public O(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lmc/c;->P([C)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public P([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lmc/c;->J()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 14
    .line 15
    const-string v0, "Zip Model is null"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 22
    .line 23
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 30
    .line 31
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_1
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 43
    .line 44
    invoke-virtual {v1}, Lpc/o;->b()Lpc/c;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-lt v0, v1, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 60
    .line 61
    invoke-virtual {v1}, Lpc/o;->b()Lpc/c;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 76
    .line 77
    invoke-virtual {v1}, Lpc/o;->b()Lpc/c;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lpc/h;

    .line 90
    .line 91
    invoke-virtual {v1}, Lpc/h;->D()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 98
    .line 99
    invoke-virtual {v1}, Lpc/o;->b()Lpc/c;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lpc/h;

    .line 112
    .line 113
    invoke-virtual {v1, p1}, Lpc/h;->b0([C)V

    .line 114
    .line 115
    .line 116
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 120
    .line 121
    const-string v0, "invalid zip file"

    .line 122
    .line 123
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public Q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmc/c;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public a(Ljava/io/File;Lpc/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
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
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p2}, Lmc/c;->b(Ljava/util/ArrayList;Lpc/p;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Ljava/util/ArrayList;Lpc/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmc/c;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/h;->a(Ljava/util/ArrayList;I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, Lmc/c;->e:Lqc/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lqc/a;->j()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eq v1, v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 36
    .line 37
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 45
    .line 46
    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/zip/b;

    .line 53
    .line 54
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/zip/b;-><init>(Lpc/o;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lmc/c;->e:Lqc/a;

    .line 60
    .line 61
    iget-boolean v2, p0, Lmc/c;->f:Z

    .line 62
    .line 63
    invoke-virtual {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/zip/b;->b(Ljava/util/ArrayList;Lpc/p;Lqc/a;Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 68
    .line 69
    const-string p2, "invalid operation - Zip4j is in busy state"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 76
    .line 77
    const-string p2, "input parameters are null, cannot add files to zip"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 84
    .line 85
    const-string p2, "One or more elements in the input ArrayList is not of type File"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 92
    .line 93
    const-string p2, "input file ArrayList is null, cannot add files"

    .line 94
    .line 95
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 100
    .line 101
    const-string p2, "internal error: zip model is null"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public c(Ljava/io/File;Lpc/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lmc/c;->d(Ljava/io/File;Lpc/p;Z)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 11
    .line 12
    const-string p2, "input parameters are null, cannot add folder to zip file"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 19
    .line 20
    const-string p2, "input path is null, cannot add folder to zip file"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public e(Ljava/lang/String;Lpc/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p2}, Lmc/c;->c(Ljava/io/File;Lpc/p;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 17
    .line 18
    const-string p2, "input path is null or empty, cannot add folder to zip file"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public f(Ljava/io/InputStream;Lpc/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lmc/c;->Q(Z)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lmc/c;->g()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 25
    .line 26
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 34
    .line 35
    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/zip/b;

    .line 42
    .line 43
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/zip/b;-><init>(Lpc/o;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/zip/b;->d(Ljava/io/InputStream;Lpc/p;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 53
    .line 54
    const-string p2, "internal error: zip model is null"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 61
    .line 62
    const-string p2, "zip parameters are null"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 69
    .line 70
    const-string p2, "inputstream is null, cannot add file to zip"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public i(Ljava/io/File;Lpc/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v2, p2

    .line 14
    invoke-virtual/range {v0 .. v5}, Lmc/c;->l(Ljava/util/ArrayList;Lpc/p;ZJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public j(Ljava/io/File;Lpc/p;ZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p2

    .line 11
    move v3, p3

    .line 12
    move-wide v4, p4

    .line 13
    invoke-virtual/range {v0 .. v5}, Lmc/c;->l(Ljava/util/ArrayList;Lpc/p;ZJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public k(Ljava/util/ArrayList;Lpc/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v3, 0x0

    .line 2
    const-wide/16 v4, -0x1

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    invoke-virtual/range {v0 .. v5}, Lmc/c;->l(Ljava/util/ArrayList;Lpc/p;ZJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public l(Ljava/util/ArrayList;Lpc/p;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/h;->a(Ljava/util/ArrayList;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lmc/c;->h()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 30
    .line 31
    invoke-virtual {v0, p3}, Lpc/o;->z(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p3, p0, Lmc/c;->c:Lpc/o;

    .line 35
    .line 36
    invoke-virtual {p3, p4, p5}, Lpc/o;->A(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lmc/c;->b(Ljava/util/ArrayList;Lpc/p;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 44
    .line 45
    const-string p2, "One or more elements in the input ArrayList is not of type File"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 52
    .line 53
    const-string p2, "input file ArrayList is null, cannot create zip file"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuffer;

    .line 62
    .line 63
    const-string p3, "zip file: "

    .line 64
    .line 65
    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Lmc/c;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    const-string p3, " already exists. To add files to existing zip file use addFile method"

    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 87
    .line 88
    const-string p2, "zip file path is empty"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public m(Ljava/io/File;Lpc/p;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lmc/c;->h()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 17
    .line 18
    invoke-virtual {v0, p3}, Lpc/o;->z(Z)V

    .line 19
    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iget-object p3, p0, Lmc/c;->c:Lpc/o;

    .line 24
    .line 25
    invoke-virtual {p3, p4, p5}, Lpc/o;->A(J)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p3, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lmc/c;->d(Ljava/io/File;Lpc/p;Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuffer;

    .line 36
    .line 37
    const-string p3, "zip file: "

    .line 38
    .line 39
    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p3, p0, Lmc/c;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    const-string p3, " already exists. To add files to existing zip file use addFolder method"

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 61
    .line 62
    const-string p2, "input parameters are null, cannot create zip file from folder"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 69
    .line 70
    const-string p2, "folderToAdd is null, cannot create zip file from folder"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public n(Ljava/lang/String;Lpc/p;ZJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-object v3, p2

    .line 14
    move v4, p3

    .line 15
    move-wide v5, p4

    .line 16
    invoke-virtual/range {v1 .. v6}, Lmc/c;->m(Ljava/io/File;Lpc/p;ZJ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 21
    .line 22
    const-string p2, "folderToAdd is empty or null, cannot create Zip File from folder"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public o(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lmc/c;->p(Ljava/lang/String;Lpc/k;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public p(Ljava/lang/String;Lpc/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->f(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lmc/c;->J()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lmc/c;->e:Lqc/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lqc/a;->j()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    new-instance v0, Lnet/lingala/zip4j/unzip/c;

    .line 34
    .line 35
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/unzip/c;-><init>(Lpc/o;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lmc/c;->e:Lqc/a;

    .line 41
    .line 42
    iget-boolean v2, p0, Lmc/c;->f:Z

    .line 43
    .line 44
    invoke-virtual {v0, p2, p1, v1, v2}, Lnet/lingala/zip4j/unzip/c;->e(Lpc/k;Ljava/lang/String;Lqc/a;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 49
    .line 50
    const-string p2, "invalid operation - Zip4j is in busy state"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 57
    .line 58
    const-string p2, "Internal error occurred when extracting zip file"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 65
    .line 66
    const-string p2, "invalid output path"

    .line 67
    .line 68
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 73
    .line 74
    const-string p2, "output path is null or invalid"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lmc/c;->r(Ljava/lang/String;Ljava/lang/String;Lpc/k;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Lpc/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lmc/c;->s(Ljava/lang/String;Ljava/lang/String;Lpc/k;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Lpc/k;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0}, Lmc/c;->J()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/h;->p(Lpc/o;Ljava/lang/String;)Lpc/h;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lmc/c;->e:Lqc/a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lqc/a;->j()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x1

    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lmc/c;->c:Lpc/o;

    .line 34
    .line 35
    iget-object v6, p0, Lmc/c;->e:Lqc/a;

    .line 36
    .line 37
    iget-boolean v7, p0, Lmc/c;->f:Z

    .line 38
    .line 39
    move-object v3, p2

    .line 40
    move-object v4, p3

    .line 41
    move-object v5, p4

    .line 42
    invoke-virtual/range {v1 .. v7}, Lpc/h;->a(Lpc/o;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 47
    .line 48
    const-string p2, "invalid operation - Zip4j is in busy state"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 55
    .line 56
    const-string p2, "file header not found for given file name, cannot extract file"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 63
    .line 64
    const-string p2, "destination string path is empty or null, cannot extract file"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 71
    .line 72
    const-string p2, "file to extract is null or empty, cannot extract file"

    .line 73
    .line 74
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public t(Lpc/h;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lmc/c;->u(Lpc/h;Ljava/lang/String;Lpc/k;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public u(Lpc/h;Ljava/lang/String;Lpc/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lmc/c;->v(Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public v(Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lmc/c;->J()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lmc/c;->e:Lqc/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lqc/a;->j()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lmc/c;->c:Lpc/o;

    .line 22
    .line 23
    iget-object v7, p0, Lmc/c;->e:Lqc/a;

    .line 24
    .line 25
    iget-boolean v8, p0, Lmc/c;->f:Z

    .line 26
    .line 27
    move-object v2, p1

    .line 28
    move-object v4, p2

    .line 29
    move-object v5, p3

    .line 30
    move-object v6, p4

    .line 31
    invoke-virtual/range {v2 .. v8}, Lpc/h;->a(Lpc/o;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 36
    .line 37
    const-string p2, "invalid operation - Zip4j is in busy state"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 44
    .line 45
    const-string p2, "destination path is empty or null, cannot extract file"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 52
    .line 53
    const-string p2, "input file header is null, cannot extract file"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public w()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmc/c;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public x(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    const-string p1, "windows-1254"

    .line 4
    .line 5
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->B(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lnet/lingala/zip4j/util/e;->D0:Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lmc/c;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    invoke-direct {p0}, Lmc/c;->g()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    invoke-virtual {v0}, Lpc/o;->f()Lpc/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 36
    .line 37
    invoke-virtual {v0}, Lpc/o;->f()Lpc/f;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lpc/f;->b()[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 48
    .line 49
    invoke-virtual {v0}, Lpc/o;->f()Lpc/f;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lpc/f;->b()[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    array-length v0, v0

    .line 58
    if-gtz v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p0, Lmc/c;->c:Lpc/o;

    .line 64
    .line 65
    invoke-virtual {v1}, Lpc/o;->f()Lpc/f;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lpc/f;->b()[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 85
    return-object p1

    .line 86
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 87
    .line 88
    const-string v0, "end of central directory record is null, cannot read comment"

    .line 89
    .line 90
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 95
    .line 96
    const-string v0, "zip model is null, cannot read comment"

    .line 97
    .line 98
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 103
    .line 104
    const-string v0, "zip file does not exist, cannot read comment"

    .line 105
    .line 106
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method public y()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lmc/c;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public z(Ljava/lang/String;)Lpc/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-direct {p0}, Lmc/c;->J()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lmc/c;->c:Lpc/o;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/h;->p(Lpc/o;Ljava/lang/String;)Lpc/h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 31
    .line 32
    const-string v0, "input file name is emtpy or null, cannot get FileHeader"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
