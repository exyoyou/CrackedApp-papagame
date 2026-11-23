.class public final Lcom/kwad/sdk/pngencrypt/chunk/j;
.super Lcom/kwad/sdk/pngencrypt/chunk/t;
.source "SourceFile"


# instance fields
.field private blV:Z

.field private blW:Ljava/lang/String;

.field private blX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .locals 1

    .line 1
    const-string v0, "iTXt"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/t;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->blV:Z

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->blW:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->blX:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    iget-object v5, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->data:[B

    .line 8
    .line 9
    array-length v6, v5

    .line 10
    const/4 v7, 0x1

    .line 11
    if-ge v3, v6, :cond_2

    .line 12
    .line 13
    aget-byte v5, v5, v3

    .line 14
    .line 15
    if-nez v5, :cond_1

    .line 16
    .line 17
    aput v3, v1, v4

    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    if-ne v4, v7, :cond_0

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x2

    .line 24
    .line 25
    :cond_0
    if-eq v4, v0, :cond_2

    .line 26
    .line 27
    :cond_1
    add-int/2addr v3, v7

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    if-eq v4, v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 32
    .line 33
    const-string v3, "Bad formed PngChunkITXT chunk"

    .line 34
    .line 35
    invoke-direct {v0, v3}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->data:[B

    .line 39
    .line 40
    aget v3, v1, v2

    .line 41
    .line 42
    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/pngencrypt/chunk/b;->c([BII)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/t;->key:Ljava/lang/String;

    .line 47
    .line 48
    aget v0, v1, v2

    .line 49
    .line 50
    add-int/2addr v0, v7

    .line 51
    iget-object v3, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->data:[B

    .line 52
    .line 53
    aget-byte v4, v3, v0

    .line 54
    .line 55
    if-nez v4, :cond_4

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const/4 v4, 0x1

    .line 60
    :goto_1
    iput-boolean v4, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->blV:Z

    .line 61
    .line 62
    add-int/2addr v0, v7

    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    aget-byte v3, v3, v0

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    new-instance v3, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 70
    .line 71
    const-string v4, "Bad formed PngChunkITXT chunk - bad compression method "

    .line 72
    .line 73
    invoke-direct {v3, v4}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object v3, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->data:[B

    .line 77
    .line 78
    aget v4, v1, v7

    .line 79
    .line 80
    sub-int/2addr v4, v0

    .line 81
    invoke-static {v3, v0, v4}, Lcom/kwad/sdk/pngencrypt/chunk/b;->c([BII)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->blW:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->data:[B

    .line 88
    .line 89
    aget v3, v1, v7

    .line 90
    .line 91
    add-int/lit8 v4, v3, 0x1

    .line 92
    .line 93
    const/4 v5, 0x2

    .line 94
    aget v6, v1, v5

    .line 95
    .line 96
    sub-int/2addr v6, v3

    .line 97
    sub-int/2addr v6, v7

    .line 98
    invoke-static {v0, v4, v6}, Lcom/kwad/sdk/pngencrypt/chunk/b;->d([BII)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->blX:Ljava/lang/String;

    .line 103
    .line 104
    aget v0, v1, v5

    .line 105
    .line 106
    add-int/2addr v0, v7

    .line 107
    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/j;->blV:Z

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->data:[B

    .line 112
    .line 113
    array-length v1, p1

    .line 114
    sub-int/2addr v1, v0

    .line 115
    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/pngencrypt/chunk/b;->b([BIIZ)[B

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->n([B)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/t;->bmp:Ljava/lang/String;

    .line 124
    .line 125
    return-void

    .line 126
    :cond_6
    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->data:[B

    .line 127
    .line 128
    array-length v1, p1

    .line 129
    sub-int/2addr v1, v0

    .line 130
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->d([BII)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/t;->bmp:Ljava/lang/String;

    .line 135
    .line 136
    return-void
.end method
