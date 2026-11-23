.class public Lcom/facebook/imagepipeline/decoder/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x3

.field private static final m:I = 0x4

.field private static final n:I = 0x5

.field private static final o:I = 0x6

.field private static final p:I = 0x4000


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lcom/facebook/common/memory/a;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteArrayPool"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/facebook/common/memory/a;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/e;->h:Lcom/facebook/common/memory/a;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 14
    .line 15
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->b:I

    .line 16
    .line 17
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->d:I

    .line 18
    .line 19
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->f:I

    .line 20
    .line 21
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    .line 22
    .line 23
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 24
    .line 25
    return-void
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "inputStream"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x6

    .line 6
    :try_start_0
    iget v4, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 7
    .line 8
    if-eq v4, v3, :cond_f

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, -0x1

    .line 15
    if-eq v4, v5, :cond_f

    .line 16
    .line 17
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 18
    .line 19
    add-int/2addr v5, v2

    .line 20
    iput v5, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 21
    .line 22
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/decoder/e;->g:Z

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/decoder/e;->g:Z

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 32
    .line 33
    const/16 v7, 0xff

    .line 34
    .line 35
    if-eqz v6, :cond_c

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    if-eq v6, v2, :cond_a

    .line 39
    .line 40
    const/4 v9, 0x3

    .line 41
    if-eq v6, v8, :cond_9

    .line 42
    .line 43
    const/4 v10, 0x4

    .line 44
    if-eq v6, v9, :cond_3

    .line 45
    .line 46
    const/4 v5, 0x5

    .line 47
    if-eq v6, v10, :cond_2

    .line 48
    .line 49
    if-eq v6, v5, :cond_1

    .line 50
    .line 51
    invoke-static {v1}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/e;->b:I

    .line 56
    .line 57
    shl-int/lit8 v5, v5, 0x8

    .line 58
    .line 59
    add-int/2addr v5, v4

    .line 60
    sub-int/2addr v5, v8

    .line 61
    int-to-long v6, v5

    .line 62
    invoke-static {p1, v6, v7}, Lcom/facebook/common/util/e;->c(Ljava/io/InputStream;J)J

    .line 63
    .line 64
    .line 65
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 66
    .line 67
    add-int/2addr v6, v5

    .line 68
    iput v6, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 69
    .line 70
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iput v5, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    if-ne v4, v7, :cond_4

    .line 77
    .line 78
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    if-nez v4, :cond_5

    .line 82
    .line 83
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/16 v6, 0xd9

    .line 87
    .line 88
    if-ne v4, v6, :cond_6

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/facebook/imagepipeline/decoder/e;->g:Z

    .line 91
    .line 92
    add-int/lit8 v5, v5, -0x2

    .line 93
    .line 94
    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/decoder/e;->g(I)V

    .line 95
    .line 96
    .line 97
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    const/16 v6, 0xda

    .line 101
    .line 102
    if-ne v4, v6, :cond_7

    .line 103
    .line 104
    add-int/lit8 v5, v5, -0x2

    .line 105
    .line 106
    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/decoder/e;->g(I)V

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-static {v4}, Lcom/facebook/imagepipeline/decoder/e;->b(I)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_8

    .line 114
    .line 115
    iput v10, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_8
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_9
    if-ne v4, v7, :cond_e

    .line 122
    .line 123
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_a
    const/16 v5, 0xd8

    .line 127
    .line 128
    if-ne v4, v5, :cond_b

    .line 129
    .line 130
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_b
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_c
    if-ne v4, v7, :cond_d

    .line 137
    .line 138
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_d
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 142
    .line 143
    :cond_e
    :goto_1
    iput v4, p0, Lcom/facebook/imagepipeline/decoder/e;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :catch_0
    move-exception p1

    .line 148
    invoke-static {p1}, Lcom/facebook/common/internal/n;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 149
    .line 150
    .line 151
    :cond_f
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 152
    .line 153
    if-eq p1, v3, :cond_10

    .line 154
    .line 155
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    .line 156
    .line 157
    if-eq p1, v0, :cond_10

    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    :cond_10
    return v1
.end method

.method private static b(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markerSecondByte"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0xd0

    if-lt p0, v2, :cond_1

    const/16 v2, 0xd7

    if-gt p0, v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0xd9

    if-eq p0, v2, :cond_2

    const/16 v2, 0xd8

    if-eq p0, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private g(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->d:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->f:I

    .line 6
    .line 7
    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 8
    .line 9
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->d:I

    .line 10
    .line 11
    iput v0, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/decoder/e;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1
.end method

.method public h(Lcom/facebook/imagepipeline/image/e;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->y()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 13
    .line 14
    if-gt v0, v1, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    new-instance v0, Lcom/facebook/common/memory/f;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->q()Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/e;->h:Lcom/facebook/common/memory/a;

    .line 24
    .line 25
    const/16 v3, 0x4000

    .line 26
    .line 27
    invoke-interface {v1, v3}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [B

    .line 32
    .line 33
    iget-object v3, p0, Lcom/facebook/imagepipeline/decoder/e;->h:Lcom/facebook/common/memory/a;

    .line 34
    .line 35
    invoke-direct {v0, p1, v1, v3}, Lcom/facebook/common/memory/f;-><init>(Ljava/io/InputStream;[BLcom/facebook/common/references/g;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 39
    .line 40
    int-to-long v3, p1

    .line 41
    invoke-static {v0, v3, v4}, Lcom/facebook/common/util/e;->c(Ljava/io/InputStream;J)J

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/decoder/e;->a(Ljava/io/InputStream;)Z

    .line 45
    .line 46
    .line 47
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    .line 49
    .line 50
    .line 51
    return p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/n;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method
