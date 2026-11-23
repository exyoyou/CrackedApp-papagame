.class public Lnet/lingala/zip4j/unzip/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lpc/o;


# direct methods
.method public constructor <init>(Lpc/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/c;->a:Lpc/o;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 10
    .line 11
    const-string v0, "ZipModel is null"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method static synthetic a(Lnet/lingala/zip4j/unzip/c;Ljava/util/ArrayList;Lpc/k;Lqc/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/unzip/c;->h(Ljava/util/ArrayList;Lpc/k;Lqc/a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lnet/lingala/zip4j/unzip/c;Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lnet/lingala/zip4j/unzip/c;->i(Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Ljava/util/ArrayList;)J
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
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-wide v3, v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    if-lt v2, v5, :cond_0

    .line 12
    .line 13
    return-wide v3

    .line 14
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Lpc/h;

    .line 19
    .line 20
    invoke-virtual {v5}, Lpc/h;->A()Lpc/n;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    invoke-virtual {v5}, Lpc/h;->A()Lpc/n;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lpc/n;->f()J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    cmp-long v8, v6, v0

    .line 35
    .line 36
    if-lez v8, :cond_1

    .line 37
    .line 38
    invoke-virtual {v5}, Lpc/h;->A()Lpc/n;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lpc/n;->a()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v5}, Lpc/h;->e()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    :goto_1
    add-long/2addr v3, v5

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 56
    .line 57
    const-string v0, "fileHeaders is null, cannot calculate total work"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method private d(Lpc/h;Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Lpc/h;->p()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p3}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p3, p1

    .line 21
    :goto_0
    invoke-static {p3}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :try_start_0
    new-instance p2, Ljava/io/File;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Ljava/io/File;

    .line 54
    .line 55
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void

    .line 68
    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 70
    .line 71
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p2

    .line 75
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 76
    .line 77
    const-string p2, "Cannot check output directory structure...one of the parameters was null"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method private h(Ljava/util/ArrayList;Lpc/k;Lqc/a;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move-object v4, v2

    .line 15
    check-cast v4, Lpc/h;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v3, p0

    .line 19
    move-object v5, p4

    .line 20
    move-object v6, p2

    .line 21
    move-object v8, p3

    .line 22
    invoke-direct/range {v3 .. v8}, Lnet/lingala/zip4j/unzip/c;->i(Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lqc/a;->m()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    invoke-virtual {p3, p1}, Lqc/a;->setResult(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0}, Lqc/a;->u(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0
.end method

.method private i(Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;)V
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
    :try_start_0
    invoke-virtual {p1}, Lpc/h;->p()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p5, v0}, Lqc/a;->r(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lnet/lingala/zip4j/util/e;->E0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuffer;

    .line 19
    .line 20
    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :cond_0
    invoke-virtual {p1}, Lpc/h;->C()Z

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p1}, Lpc/h;->p()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-nez p3, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p3, Ljava/lang/StringBuffer;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p3, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Ljava/io/File;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    :try_start_2
    invoke-virtual {p5, p1}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw p2

    .line 88
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lnet/lingala/zip4j/unzip/c;->d(Lpc/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lnet/lingala/zip4j/unzip/d;

    .line 92
    .line 93
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/c;->a:Lpc/o;

    .line 94
    .line 95
    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/unzip/d;-><init>(Lpc/o;Lpc/h;)V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    .line 97
    .line 98
    :try_start_3
    invoke-virtual {v0, p5, p2, p4, p3}, Lnet/lingala/zip4j/unzip/d;->t(Lqc/a;Ljava/lang/String;Ljava/lang/String;Lpc/k;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    return-void

    .line 102
    :catch_1
    move-exception p1

    .line 103
    :try_start_4
    invoke-virtual {p5, p1}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 107
    .line 108
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p2
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 112
    :catch_2
    move-exception p1

    .line 113
    invoke-virtual {p5, p1}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 117
    .line 118
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw p2

    .line 122
    :catch_3
    move-exception p1

    .line 123
    invoke-virtual {p5, p1}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 128
    .line 129
    const-string p2, "fileHeader is null"

    .line 130
    .line 131
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method


# virtual methods
.method public e(Lpc/k;Ljava/lang/String;Lqc/a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/c;->a:Lpc/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/o;->b()Lpc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p3, v0}, Lqc/a;->p(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v5}, Lnet/lingala/zip4j/unzip/c;->c(Ljava/util/ArrayList;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-virtual {p3, v1, v2}, Lqc/a;->v(J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v0}, Lqc/a;->u(I)V

    .line 31
    .line 32
    .line 33
    if-eqz p4, :cond_0

    .line 34
    .line 35
    new-instance p4, Lnet/lingala/zip4j/unzip/a;

    .line 36
    .line 37
    const-string v4, "Zip4j"

    .line 38
    .line 39
    move-object v2, p4

    .line 40
    move-object v3, p0

    .line 41
    move-object v6, p1

    .line 42
    move-object v7, p3

    .line 43
    move-object v8, p2

    .line 44
    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/unzip/a;-><init>(Lnet/lingala/zip4j/unzip/c;Ljava/lang/String;Ljava/util/ArrayList;Lpc/k;Lqc/a;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0, v5, p1, p3, p2}, Lnet/lingala/zip4j/unzip/c;->h(Ljava/util/ArrayList;Lpc/k;Lqc/a;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 56
    .line 57
    const-string p2, "invalid central directory in zipModel"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public f(Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p5, v0}, Lqc/a;->p(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lpc/h;->e()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {p5, v1, v2}, Lqc/a;->v(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5, v0}, Lqc/a;->u(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p5, v0}, Lqc/a;->t(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lpc/h;->p()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p5, v0}, Lqc/a;->r(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p6, :cond_0

    .line 29
    .line 30
    new-instance p6, Lnet/lingala/zip4j/unzip/b;

    .line 31
    .line 32
    const-string v3, "Zip4j"

    .line 33
    .line 34
    move-object v1, p6

    .line 35
    move-object v2, p0

    .line 36
    move-object v4, p1

    .line 37
    move-object v5, p2

    .line 38
    move-object v6, p3

    .line 39
    move-object v7, p4

    .line 40
    move-object v8, p5

    .line 41
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/unzip/b;-><init>(Lnet/lingala/zip4j/unzip/c;Ljava/lang/String;Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p6}, Ljava/lang/Thread;->start()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-direct/range {p0 .. p5}, Lnet/lingala/zip4j/unzip/c;->i(Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5}, Lqc/a;->c()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 56
    .line 57
    const-string p2, "fileHeader is null"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public g(Lpc/h;)Lnet/lingala/zip4j/io/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/unzip/d;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/c;->a:Lpc/o;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/unzip/d;-><init>(Lpc/o;Lpc/h;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/d;->k()Lnet/lingala/zip4j/io/h;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
