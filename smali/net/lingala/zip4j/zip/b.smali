.class public Lnet/lingala/zip4j/zip/b;
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
    iput-object p1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 10
    .line 11
    const-string v0, "zip model is null in ZipEngine constructor"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method static synthetic a(Lnet/lingala/zip4j/zip/b;Ljava/util/ArrayList;Lpc/p;Lqc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/b;->h(Ljava/util/ArrayList;Lpc/p;Lqc/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Ljava/util/ArrayList;Lpc/p;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-lt v2, v3, :cond_0

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    instance-of v3, v3, Ljava/io/File;

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2}, Lpc/p;->l()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2}, Lpc/p;->f()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/io/File;

    .line 50
    .line 51
    invoke-static {v3}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    const-wide/16 v5, 0x2

    .line 56
    .line 57
    mul-long v3, v3, v5

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/io/File;

    .line 65
    .line 66
    invoke-static {v3}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    :goto_1
    add-long/2addr v0, v3

    .line 71
    iget-object v3, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 72
    .line 73
    invoke-virtual {v3}, Lpc/o;->b()Lpc/c;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    iget-object v3, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 80
    .line 81
    invoke-virtual {v3}, Lpc/o;->b()Lpc/c;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    iget-object v3, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 92
    .line 93
    invoke-virtual {v3}, Lpc/o;->b()Lpc/c;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-lez v3, :cond_2

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/io/File;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p2}, Lpc/p;->i()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p2}, Lpc/p;->e()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v3, v4, v5}, Lnet/lingala/zip4j/util/h;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 130
    .line 131
    invoke-static {v4, v3}, Lnet/lingala/zip4j/util/h;->p(Lpc/o;Ljava/lang/String;)Lpc/h;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-eqz v3, :cond_2

    .line 136
    .line 137
    new-instance v4, Ljava/io/File;

    .line 138
    .line 139
    iget-object v5, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 140
    .line 141
    invoke-virtual {v5}, Lpc/o;->m()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v4}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v4

    .line 152
    invoke-virtual {v3}, Lpc/h;->e()J

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    sub-long/2addr v4, v6

    .line 157
    add-long/2addr v0, v4

    .line 158
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 163
    .line 164
    const-string p2, "file list is null, cannot calculate total work"

    .line 165
    .line 166
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1
.end method

.method private f(Lpc/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/p;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lpc/p;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 19
    .line 20
    const-string v0, "unsupported compression type"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lpc/p;->d()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Lpc/p;->b()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-gez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Lpc/p;->b()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v1, 0x9

    .line 43
    .line 44
    if-gt v0, v1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 48
    .line 49
    const-string v0, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lpc/p;->l()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_7

    .line 60
    .line 61
    invoke-virtual {p1}, Lpc/p;->f()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1}, Lpc/p;->f()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/16 v1, 0x63

    .line 72
    .line 73
    if-ne v0, v1, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 77
    .line 78
    const-string v0, "unsupported encryption method"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lpc/p;->h()[C

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-virtual {p1}, Lpc/p;->h()[C

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    array-length p1, p1

    .line 95
    if-lez p1, :cond_6

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 99
    .line 100
    const-string v0, "input password is empty or null"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_7
    const/4 v0, -0x1

    .line 107
    invoke-virtual {p1, v0}, Lpc/p;->q(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lpc/p;->v(I)V

    .line 111
    .line 112
    .line 113
    :goto_3
    return-void

    .line 114
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 115
    .line 116
    const-string v0, "cannot validate zip parameters"

    .line 117
    .line 118
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1
.end method

.method private g()Lpc/f;
    .locals 3

    .line 1
    new-instance v0, Lpc/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lpc/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/32 v1, 0x6054b50

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lpc/f;->q(J)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lpc/f;->n(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lpc/f;->s(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lpc/f;->t(I)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lpc/f;->p(J)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private h(Ljava/util/ArrayList;Lpc/p;Lqc/a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_10

    .line 2
    .line 3
    if-eqz p2, :cond_10

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_f

    .line 10
    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 12
    .line 13
    invoke-virtual {v0}, Lpc/o;->f()Lpc/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 20
    .line 21
    invoke-direct {p0}, Lnet/lingala/zip4j/zip/b;->g()Lpc/f;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lpc/o;->v(Lpc/f;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/zip/b;->f(Lpc/p;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/b;->j(Ljava/util/ArrayList;Lpc/p;Lqc/a;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 36
    .line 37
    invoke-virtual {v1}, Lpc/o;->m()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    new-instance v2, Lnet/lingala/zip4j/io/g;

    .line 46
    .line 47
    new-instance v3, Ljava/io/File;

    .line 48
    .line 49
    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 50
    .line 51
    invoke-virtual {v4}, Lpc/o;->m()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 59
    .line 60
    invoke-virtual {v4}, Lpc/o;->i()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    invoke-direct {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/io/File;J)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Lnet/lingala/zip4j/io/i;

    .line 68
    .line 69
    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 70
    .line 71
    invoke-direct {v3, v2, v4}, Lnet/lingala/zip4j/io/i;-><init>(Ljava/io/OutputStream;Lpc/o;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    :try_start_1
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 77
    .line 78
    invoke-virtual {v1}, Lpc/o;->f()Lpc/f;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 85
    .line 86
    invoke-virtual {v1}, Lpc/o;->f()Lpc/f;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lpc/f;->f()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/io/g;->seek(J)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 99
    .line 100
    const-string p2, "invalid end of central directory record"

    .line 101
    .line 102
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_2
    :goto_0
    const/16 v1, 0x1000

    .line 107
    .line 108
    new-array v1, v1, [B

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-lt v4, v5, :cond_4

    .line 117
    .line 118
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->h()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Lqc/a;->c()V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    .line 128
    .line 129
    :catch_0
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    .line 131
    .line 132
    :catch_1
    return-void

    .line 133
    :cond_4
    :try_start_4
    invoke-virtual {p3}, Lqc/a;->m()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    const/4 v6, 0x3

    .line 138
    if-eqz v5, :cond_6

    .line 139
    .line 140
    invoke-virtual {p3, v6}, Lqc/a;->setResult(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, v2}, Lqc/a;->u(I)V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    .line 145
    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 149
    .line 150
    .line 151
    :catch_2
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 152
    .line 153
    .line 154
    :catch_3
    return-void

    .line 155
    :cond_6
    :try_start_7
    invoke-virtual {p2}, Lpc/p;->clone()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Lpc/p;

    .line 160
    .line 161
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Ljava/io/File;

    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {p3, v7}, Lqc/a;->r(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    check-cast v7, Ljava/io/File;

    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-nez v7, :cond_9

    .line 185
    .line 186
    invoke-virtual {v5}, Lpc/p;->l()Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_8

    .line 191
    .line 192
    invoke-virtual {v5}, Lpc/p;->f()I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-nez v7, :cond_8

    .line 197
    .line 198
    invoke-virtual {p3, v6}, Lqc/a;->p(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Ljava/io/File;

    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-static {v7, p3}, Lnet/lingala/zip4j/util/d;->b(Ljava/lang/String;Lqc/a;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v7

    .line 215
    long-to-int v8, v7

    .line 216
    invoke-virtual {v5, v8}, Lpc/p;->D(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3, v2}, Lqc/a;->p(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3}, Lqc/a;->m()Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-eqz v7, :cond_8

    .line 227
    .line 228
    invoke-virtual {p3, v6}, Lqc/a;->setResult(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3, v2}, Lqc/a;->u(I)V
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 232
    .line 233
    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 237
    .line 238
    .line 239
    :catch_4
    :cond_7
    :try_start_9
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 240
    .line 241
    .line 242
    :catch_5
    return-void

    .line 243
    :cond_8
    :try_start_a
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    check-cast v7, Ljava/io/File;

    .line 248
    .line 249
    invoke-static {v7}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    .line 250
    .line 251
    .line 252
    move-result-wide v7

    .line 253
    const-wide/16 v9, 0x0

    .line 254
    .line 255
    cmp-long v11, v7, v9

    .line 256
    .line 257
    if-nez v11, :cond_9

    .line 258
    .line 259
    invoke-virtual {v5, v2}, Lpc/p;->s(I)V

    .line 260
    .line 261
    .line 262
    :cond_9
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    check-cast v7, Ljava/io/File;

    .line 267
    .line 268
    invoke-virtual {v3, v7, v5}, Lnet/lingala/zip4j/io/d;->q(Ljava/io/File;Lpc/p;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    check-cast v5, Ljava/io/File;

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_a

    .line 282
    .line 283
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->b()V

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_a
    new-instance v5, Ljava/io/FileInputStream;

    .line 288
    .line 289
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    check-cast v7, Ljava/io/File;

    .line 294
    .line 295
    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 296
    .line 297
    .line 298
    :goto_2
    :try_start_b
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    const/4 v7, -0x1

    .line 303
    if-ne v0, v7, :cond_b

    .line 304
    .line 305
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->b()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 309
    .line 310
    .line 311
    move-object v0, v5

    .line 312
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_b
    invoke-virtual {p3}, Lqc/a;->m()Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-eqz v7, :cond_c

    .line 321
    .line 322
    invoke-virtual {p3, v6}, Lqc/a;->setResult(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p3, v2}, Lqc/a;->u(I)V
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 326
    .line 327
    .line 328
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 329
    .line 330
    .line 331
    :catch_6
    :try_start_d
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 332
    .line 333
    .line 334
    :catch_7
    return-void

    .line 335
    :cond_c
    :try_start_e
    invoke-virtual {v3, v1, v2, v0}, Lnet/lingala/zip4j/io/i;->write([BII)V

    .line 336
    .line 337
    .line 338
    int-to-long v7, v0

    .line 339
    invoke-virtual {p3, v7, v8}, Lqc/a;->w(J)V
    :try_end_e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 340
    .line 341
    .line 342
    goto :goto_2

    .line 343
    :catchall_0
    move-exception p1

    .line 344
    goto :goto_8

    .line 345
    :catch_8
    move-exception p1

    .line 346
    goto :goto_4

    .line 347
    :catch_9
    move-exception p1

    .line 348
    goto :goto_5

    .line 349
    :catchall_1
    move-exception p1

    .line 350
    goto :goto_9

    .line 351
    :catch_a
    move-exception p1

    .line 352
    move-object v5, v0

    .line 353
    :goto_4
    move-object v0, v3

    .line 354
    goto :goto_6

    .line 355
    :catch_b
    move-exception p1

    .line 356
    move-object v5, v0

    .line 357
    :goto_5
    move-object v0, v3

    .line 358
    goto :goto_7

    .line 359
    :catchall_2
    move-exception p1

    .line 360
    move-object v3, v0

    .line 361
    goto :goto_9

    .line 362
    :catch_c
    move-exception p1

    .line 363
    move-object v5, v0

    .line 364
    :goto_6
    :try_start_f
    invoke-virtual {p3, p1}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 365
    .line 366
    .line 367
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 368
    .line 369
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 370
    .line 371
    .line 372
    throw p2

    .line 373
    :catch_d
    move-exception p1

    .line 374
    move-object v5, v0

    .line 375
    :goto_7
    invoke-virtual {p3, p1}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 379
    :catchall_3
    move-exception p1

    .line 380
    move-object v3, v0

    .line 381
    :goto_8
    move-object v0, v5

    .line 382
    :goto_9
    if-eqz v0, :cond_d

    .line 383
    .line 384
    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 385
    .line 386
    .line 387
    goto :goto_a

    .line 388
    :catch_e
    nop

    .line 389
    :cond_d
    :goto_a
    if-eqz v3, :cond_e

    .line 390
    .line 391
    :try_start_11
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 392
    .line 393
    .line 394
    :catch_f
    :cond_e
    throw p1

    .line 395
    :cond_f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 396
    .line 397
    const-string p2, "no files to add"

    .line 398
    .line 399
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw p1

    .line 403
    :cond_10
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 404
    .line 405
    const-string p2, "one of the input parameters is null when adding files"

    .line 406
    .line 407
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw p1
.end method

.method private i()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/o;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 36
    .line 37
    const-string v2, "rw"

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 51
    .line 52
    const-string v1, "invalid output path"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method private j(Ljava/util/ArrayList;Lpc/p;Lqc/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const-string v0, "offsetCentralDir"

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    invoke-virtual {v1}, Lpc/o;->b()Lpc/c;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_8

    .line 12
    .line 13
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 14
    .line 15
    invoke-virtual {v1}, Lpc/o;->b()Lpc/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_8

    .line 24
    .line 25
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 26
    .line 27
    invoke-virtual {v1}, Lpc/o;->b()Lpc/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-gtz v1, :cond_0

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    move-object v4, v1

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-lt v3, v5, :cond_2

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    :catch_0
    :cond_1
    return-void

    .line 59
    :cond_2
    :try_start_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {p2}, Lpc/p;->i()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {p2}, Lpc/p;->e()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-static {v5, v6, v7}, Lnet/lingala/zip4j/util/h;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-object v6, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 82
    .line 83
    invoke-static {v6, v5}, Lnet/lingala/zip4j/util/h;->p(Lpc/o;Ljava/lang/String;)Lpc/h;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_6

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 92
    .line 93
    .line 94
    move-object v4, v1

    .line 95
    :cond_3
    new-instance v6, Lnet/lingala/zip4j/util/c;

    .line 96
    .line 97
    invoke-direct {v6}, Lnet/lingala/zip4j/util/c;-><init>()V

    .line 98
    .line 99
    .line 100
    const/4 v7, 0x2

    .line 101
    invoke-virtual {p3, v7}, Lqc/a;->p(I)V

    .line 102
    .line 103
    .line 104
    iget-object v7, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 105
    .line 106
    invoke-virtual {v6, v7, v5, p3}, Lnet/lingala/zip4j/util/c;->j(Lpc/o;Lpc/h;Lqc/a;)Ljava/util/HashMap;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {p3}, Lqc/a;->m()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_5

    .line 115
    .line 116
    const/4 p1, 0x3

    .line 117
    invoke-virtual {p3, p1}, Lqc/a;->setResult(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v2}, Lqc/a;->u(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .line 122
    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 126
    .line 127
    .line 128
    :catch_1
    :cond_4
    return-void

    .line 129
    :cond_5
    :try_start_4
    invoke-virtual {p3, v2}, Lqc/a;->p(I)V

    .line 130
    .line 131
    .line 132
    if-nez v4, :cond_6

    .line 133
    .line 134
    invoke-direct {p0}, Lnet/lingala/zip4j/zip/b;->i()Ljava/io/RandomAccessFile;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v5, :cond_6

    .line 139
    .line 140
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v5
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    const-wide/16 v7, 0x0

    .line 157
    .line 158
    cmp-long v9, v5, v7

    .line 159
    .line 160
    if-ltz v9, :cond_6

    .line 161
    .line 162
    :try_start_6
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 167
    .line 168
    const-string p2, "Error while parsing offset central directory. Cannot update already existing file header"

    .line 169
    .line 170
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :catch_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 175
    .line 176
    const-string p2, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    .line 177
    .line 178
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :catchall_0
    move-exception p1

    .line 187
    goto :goto_2

    .line 188
    :catch_4
    move-exception p1

    .line 189
    :try_start_7
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 190
    .line 191
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 195
    :goto_2
    if-eqz v4, :cond_7

    .line 196
    .line 197
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 198
    .line 199
    .line 200
    :catch_5
    :cond_7
    throw p1

    .line 201
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;Lpc/p;Lqc/a;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p3, v0}, Lqc/a;->p(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p3, v1}, Lqc/a;->u(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v1}, Lqc/a;->setResult(I)V

    .line 20
    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/zip/b;->e(Ljava/util/ArrayList;Lpc/p;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p3, v1, v2}, Lqc/a;->v(J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    check-cast p4, Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-virtual {p3, p4}, Lqc/a;->r(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p4, Lnet/lingala/zip4j/zip/a;

    .line 45
    .line 46
    const-string v2, "Zip4j"

    .line 47
    .line 48
    move-object v0, p4

    .line 49
    move-object v1, p0

    .line 50
    move-object v3, p1

    .line 51
    move-object v4, p2

    .line 52
    move-object v5, p3

    .line 53
    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/zip/a;-><init>(Lnet/lingala/zip4j/zip/b;Ljava/lang/String;Ljava/util/ArrayList;Lpc/p;Lqc/a;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/b;->h(Ljava/util/ArrayList;Lpc/p;Lqc/a;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 65
    .line 66
    const-string p2, "no files to add"

    .line 67
    .line 68
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 73
    .line 74
    const-string p2, "one of the input parameters is null when adding files"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public c(Ljava/io/File;Lpc/p;Lqc/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->d(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    invoke-virtual {p2}, Lpc/p;->m()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, ""

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Lpc/p;->t(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lpc/p;->o()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/h;->u(Ljava/io/File;Z)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p2}, Lpc/p;->m()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0, v0, p2, p3, p4}, Lnet/lingala/zip4j/zip/b;->b(Ljava/util/ArrayList;Lpc/p;Lqc/a;Z)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 119
    .line 120
    new-instance p3, Ljava/lang/StringBuffer;

    .line 121
    .line 122
    const-string p4, "cannot read folder: "

    .line 123
    .line 124
    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p2

    .line 142
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 143
    .line 144
    const-string p2, "input file is not a folder, user addFileToZip method to add files"

    .line 145
    .line 146
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 151
    .line 152
    const-string p2, "input folder does not exist"

    .line 153
    .line 154
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 159
    .line 160
    const-string p2, "one of the input parameters is null, cannot add folder to zip"

    .line 161
    .line 162
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public d(Ljava/io/InputStream;Lpc/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/zip/b;->f(Lpc/p;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 10
    .line 11
    invoke-virtual {v1}, Lpc/o;->m()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v2, Lnet/lingala/zip4j/io/g;

    .line 20
    .line 21
    new-instance v3, Ljava/io/File;

    .line 22
    .line 23
    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 24
    .line 25
    invoke-virtual {v4}, Lpc/o;->m()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 33
    .line 34
    invoke-virtual {v4}, Lpc/o;->i()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-direct {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/io/File;J)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lnet/lingala/zip4j/io/i;

    .line 42
    .line 43
    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 44
    .line 45
    invoke-direct {v3, v2, v4}, Lnet/lingala/zip4j/io/i;-><init>(Ljava/io/OutputStream;Lpc/o;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    :try_start_1
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 51
    .line 52
    invoke-virtual {v1}, Lpc/o;->f()Lpc/f;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Lpc/o;

    .line 59
    .line 60
    invoke-virtual {v1}, Lpc/o;->f()Lpc/f;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lpc/f;->f()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/io/g;->seek(J)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 73
    .line 74
    const-string p2, "invalid end of central directory record"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_1
    :goto_0
    const/16 v1, 0x1000

    .line 81
    .line 82
    new-array v1, v1, [B

    .line 83
    .line 84
    invoke-virtual {v3, v0, p2}, Lnet/lingala/zip4j/io/d;->q(Ljava/io/File;Lpc/p;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lpc/p;->g()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v2, "/"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p2}, Lpc/p;->g()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string v0, "\\"

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-nez p2, :cond_3

    .line 110
    .line 111
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    const/4 v0, -0x1

    .line 116
    if-ne p2, v0, :cond_2

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/4 v0, 0x0

    .line 120
    invoke-virtual {v3, v1, v0, p2}, Lnet/lingala/zip4j/io/i;->write([BII)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->b()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->h()V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    :try_start_2
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    .line 132
    .line 133
    :catch_0
    return-void

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    move-object v0, v3

    .line 136
    goto :goto_5

    .line 137
    :catch_1
    move-exception p1

    .line 138
    move-object v0, v3

    .line 139
    goto :goto_3

    .line 140
    :catch_2
    move-exception p1

    .line 141
    move-object v0, v3

    .line 142
    goto :goto_4

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    goto :goto_5

    .line 145
    :catch_3
    move-exception p1

    .line 146
    :goto_3
    :try_start_3
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 147
    .line 148
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw p2

    .line 152
    :catch_4
    move-exception p1

    .line 153
    :goto_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    :goto_5
    if-eqz v0, :cond_4

    .line 155
    .line 156
    :try_start_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 157
    .line 158
    .line 159
    :catch_5
    :cond_4
    throw p1

    .line 160
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 161
    .line 162
    const-string p2, "one of the input parameters is null, cannot add stream to zip"

    .line 163
    .line 164
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1
.end method
