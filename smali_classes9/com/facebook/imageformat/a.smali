.class public Lcom/facebook/imageformat/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imageformat/c$a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final c:I = 0x14

.field private static final d:I = 0x15

.field private static final e:[B

.field private static final f:I

.field private static final g:[B

.field private static final h:I

.field private static final i:[B

.field private static final j:[B

.field private static final k:I = 0x6

.field private static final l:[B

.field private static final m:I

.field private static final n:[B

.field private static final o:I

.field private static final p:[B

.field private static final q:[[B

.field private static final r:I = 0xc

.field private static final s:[B

.field private static final t:[B

.field private static final u:I


# instance fields
.field final a:I

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/facebook/imageformat/a;->e:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    sput v1, Lcom/facebook/imageformat/a;->f:I

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    fill-array-data v1, :array_1

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/facebook/imageformat/a;->g:[B

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    sput v1, Lcom/facebook/imageformat/a;->h:I

    .line 23
    .line 24
    const-string v1, "GIF87a"

    .line 25
    .line 26
    invoke-static {v1}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sput-object v1, Lcom/facebook/imageformat/a;->i:[B

    .line 31
    .line 32
    const-string v1, "GIF89a"

    .line 33
    .line 34
    invoke-static {v1}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lcom/facebook/imageformat/a;->j:[B

    .line 39
    .line 40
    const-string v1, "BM"

    .line 41
    .line 42
    invoke-static {v1}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Lcom/facebook/imageformat/a;->l:[B

    .line 47
    .line 48
    array-length v1, v1

    .line 49
    sput v1, Lcom/facebook/imageformat/a;->m:I

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    new-array v2, v1, [B

    .line 53
    .line 54
    fill-array-data v2, :array_2

    .line 55
    .line 56
    .line 57
    sput-object v2, Lcom/facebook/imageformat/a;->n:[B

    .line 58
    .line 59
    array-length v2, v2

    .line 60
    sput v2, Lcom/facebook/imageformat/a;->o:I

    .line 61
    .line 62
    const-string v2, "ftyp"

    .line 63
    .line 64
    invoke-static {v2}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sput-object v2, Lcom/facebook/imageformat/a;->p:[B

    .line 69
    .line 70
    const/4 v2, 0x6

    .line 71
    new-array v2, v2, [[B

    .line 72
    .line 73
    const-string v3, "heic"

    .line 74
    .line 75
    invoke-static {v3}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v4, 0x0

    .line 80
    aput-object v3, v2, v4

    .line 81
    .line 82
    const-string v3, "heix"

    .line 83
    .line 84
    invoke-static {v3}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const/4 v4, 0x1

    .line 89
    aput-object v3, v2, v4

    .line 90
    .line 91
    const-string v3, "hevc"

    .line 92
    .line 93
    invoke-static {v3}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const/4 v4, 0x2

    .line 98
    aput-object v3, v2, v4

    .line 99
    .line 100
    const-string v3, "hevx"

    .line 101
    .line 102
    invoke-static {v3}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    aput-object v3, v2, v0

    .line 107
    .line 108
    const-string v0, "mif1"

    .line 109
    .line 110
    invoke-static {v0}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    aput-object v0, v2, v1

    .line 115
    .line 116
    const-string v0, "msf1"

    .line 117
    .line 118
    invoke-static {v0}, Lcom/facebook/imageformat/e;->a(Ljava/lang/String;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/4 v3, 0x5

    .line 123
    aput-object v0, v2, v3

    .line 124
    .line 125
    sput-object v2, Lcom/facebook/imageformat/a;->q:[[B

    .line 126
    .line 127
    new-array v0, v1, [B

    .line 128
    .line 129
    fill-array-data v0, :array_3

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/facebook/imageformat/a;->s:[B

    .line 133
    .line 134
    new-array v1, v1, [B

    .line 135
    .line 136
    fill-array-data v1, :array_4

    .line 137
    .line 138
    .line 139
    sput-object v1, Lcom/facebook/imageformat/a;->t:[B

    .line 140
    .line 141
    array-length v0, v0

    .line 142
    sput v0, Lcom/facebook/imageformat/a;->u:I

    .line 143
    .line 144
    return-void

    .line 145
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_3
    .array-data 1
        0x49t
        0x49t
        0x2at
        0x0t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_4
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    const/16 v1, 0x15

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v3, 0x14

    .line 15
    .line 16
    aput v3, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    sget v3, Lcom/facebook/imageformat/a;->f:I

    .line 20
    .line 21
    aput v3, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    sget v3, Lcom/facebook/imageformat/a;->h:I

    .line 25
    .line 26
    aput v3, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    const/4 v3, 0x6

    .line 30
    aput v3, v0, v1

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    sget v4, Lcom/facebook/imageformat/a;->m:I

    .line 34
    .line 35
    aput v4, v0, v1

    .line 36
    .line 37
    sget v1, Lcom/facebook/imageformat/a;->o:I

    .line 38
    .line 39
    aput v1, v0, v3

    .line 40
    .line 41
    const/4 v1, 0x7

    .line 42
    const/16 v3, 0xc

    .line 43
    .line 44
    aput v3, v0, v1

    .line 45
    .line 46
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a([I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/facebook/imageformat/a;->a:I

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/facebook/imageformat/a;->b:Z

    .line 53
    .line 54
    return-void
.end method

.method private static c([BI)Lcom/facebook/imageformat/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "headerSize"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lm3/c;->h([BII)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lm3/c;->g([BI)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/facebook/imageformat/b;->f:Lcom/facebook/imageformat/c;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-static {p0, v0}, Lm3/c;->f([BI)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object p0, Lcom/facebook/imageformat/b;->g:Lcom/facebook/imageformat/c;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-static {p0, v0, p1}, Lm3/c;->c([BII)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    invoke-static {p0, v0}, Lm3/c;->b([BI)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    sget-object p0, Lcom/facebook/imageformat/b;->j:Lcom/facebook/imageformat/c;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    invoke-static {p0, v0}, Lm3/c;->d([BI)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    sget-object p0, Lcom/facebook/imageformat/b;->i:Lcom/facebook/imageformat/c;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_3
    sget-object p0, Lcom/facebook/imageformat/b;->h:Lcom/facebook/imageformat/c;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_4
    sget-object p0, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    .line 59
    .line 60
    return-object p0
.end method

.method private static d([BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "headerSize"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/a;->l:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p1, v1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/imageformat/e;->d([B[B)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private static e([BI)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "headerSize"
        }
    .end annotation

    .line 1
    sget v0, Lcom/facebook/imageformat/a;->u:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    sget-object p1, Lcom/facebook/imageformat/a;->s:[B

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/facebook/imageformat/e;->d([B[B)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/facebook/imageformat/a;->t:[B

    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/facebook/imageformat/e;->d([B[B)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method private static f([BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "headerSize"
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    sget-object p1, Lcom/facebook/imageformat/a;->i:[B

    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/facebook/imageformat/e;->d([B[B)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    sget-object p1, Lcom/facebook/imageformat/a;->j:[B

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/facebook/imageformat/e;->d([B[B)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    :cond_1
    const/4 v1, 0x1

    .line 23
    :cond_2
    return v1
.end method

.method private static g([BI)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "headerSize"
        }
    .end annotation

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 p1, 0x3

    .line 8
    aget-byte p1, p0, p1

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    sget-object p1, Lcom/facebook/imageformat/a;->p:[B

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-static {p0, p1, v2}, Lcom/facebook/imageformat/e;->b([B[BI)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    sget-object p1, Lcom/facebook/imageformat/a;->q:[[B

    .line 26
    .line 27
    array-length v2, p1

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v2, :cond_4

    .line 30
    .line 31
    aget-object v4, p1, v3

    .line 32
    .line 33
    invoke-static {p0, v4, v0}, Lcom/facebook/imageformat/e;->b([B[BI)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    return v1
.end method

.method private static h([BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "headerSize"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/a;->n:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p1, v1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/imageformat/e;->d([B[B)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private static i([BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "headerSize"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/a;->e:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/facebook/imageformat/e;->d([B[B)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method private static j([BI)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "imageHeaderBytes",
            "headerSize"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/a;->g:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/facebook/imageformat/e;->d([B[B)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method


# virtual methods
.method public final a([BI)Lcom/facebook/imageformat/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerBytes",
            "headerSize"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/facebook/imageformat/a;->b:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v1, p2}, Lm3/c;->h([BII)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->c([BI)Lcom/facebook/imageformat/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->i([BI)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->j([BI)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object p1, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/imageformat/a;->b:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-static {p1, v1, p2}, Lm3/c;->h([BII)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->c([BI)Lcom/facebook/imageformat/c;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_3
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->f([BI)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    sget-object p1, Lcom/facebook/imageformat/b;->c:Lcom/facebook/imageformat/c;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_4
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->d([BI)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    sget-object p1, Lcom/facebook/imageformat/b;->d:Lcom/facebook/imageformat/c;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_5
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->h([BI)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    sget-object p1, Lcom/facebook/imageformat/b;->e:Lcom/facebook/imageformat/c;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_6
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->g([BI)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    sget-object p1, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_7
    invoke-static {p1, p2}, Lcom/facebook/imageformat/a;->e([BI)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_8

    .line 94
    .line 95
    sget-object p1, Lcom/facebook/imageformat/b;->l:Lcom/facebook/imageformat/c;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_8
    sget-object p1, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    .line 99
    .line 100
    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imageformat/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public k(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useNewOrder"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imageformat/a;->b:Z

    .line 2
    .line 3
    return-void
.end method
