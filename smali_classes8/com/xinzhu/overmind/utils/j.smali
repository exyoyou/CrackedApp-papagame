.class public Lcom/xinzhu/overmind/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final l:[Ljava/lang/String;

.field private static final m:I = 0x8000

.field private static n:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:[C

.field private c:I

.field private d:Ljava/io/Writer;

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/nio/charset/CharsetEncoder;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 1
    const-string v0, "&#0;"

    .line 2
    .line 3
    const-string v1, "&#1;"

    .line 4
    .line 5
    const-string v2, "&#2;"

    .line 6
    .line 7
    const-string v3, "&#3;"

    .line 8
    .line 9
    const-string v4, "&#4;"

    .line 10
    .line 11
    const-string v5, "&#5;"

    .line 12
    .line 13
    const-string v6, "&#6;"

    .line 14
    .line 15
    const-string v7, "&#7;"

    .line 16
    .line 17
    const-string v8, "&#8;"

    .line 18
    .line 19
    const-string v9, "&#9;"

    .line 20
    .line 21
    const-string v10, "&#10;"

    .line 22
    .line 23
    const-string v11, "&#11;"

    .line 24
    .line 25
    const-string v12, "&#12;"

    .line 26
    .line 27
    const-string v13, "&#13;"

    .line 28
    .line 29
    const-string v14, "&#14;"

    .line 30
    .line 31
    const-string v15, "&#15;"

    .line 32
    .line 33
    const-string v16, "&#16;"

    .line 34
    .line 35
    const-string v17, "&#17;"

    .line 36
    .line 37
    const-string v18, "&#18;"

    .line 38
    .line 39
    const-string v19, "&#19;"

    .line 40
    .line 41
    const-string v20, "&#20;"

    .line 42
    .line 43
    const-string v21, "&#21;"

    .line 44
    .line 45
    const-string v22, "&#22;"

    .line 46
    .line 47
    const-string v23, "&#23;"

    .line 48
    .line 49
    const-string v24, "&#24;"

    .line 50
    .line 51
    const-string v25, "&#25;"

    .line 52
    .line 53
    const-string v26, "&#26;"

    .line 54
    .line 55
    const-string v27, "&#27;"

    .line 56
    .line 57
    const-string v28, "&#28;"

    .line 58
    .line 59
    const-string v29, "&#29;"

    .line 60
    .line 61
    const-string v30, "&#30;"

    .line 62
    .line 63
    const-string v31, "&#31;"

    .line 64
    .line 65
    const/16 v32, 0x0

    .line 66
    .line 67
    const/16 v33, 0x0

    .line 68
    .line 69
    const-string v34, "&quot;"

    .line 70
    .line 71
    const/16 v35, 0x0

    .line 72
    .line 73
    const/16 v36, 0x0

    .line 74
    .line 75
    const/16 v37, 0x0

    .line 76
    .line 77
    const-string v38, "&amp;"

    .line 78
    .line 79
    const/16 v39, 0x0

    .line 80
    .line 81
    const/16 v40, 0x0

    .line 82
    .line 83
    const/16 v41, 0x0

    .line 84
    .line 85
    const/16 v42, 0x0

    .line 86
    .line 87
    const/16 v43, 0x0

    .line 88
    .line 89
    const/16 v44, 0x0

    .line 90
    .line 91
    const/16 v45, 0x0

    .line 92
    .line 93
    const/16 v46, 0x0

    .line 94
    .line 95
    const/16 v47, 0x0

    .line 96
    .line 97
    const/16 v48, 0x0

    .line 98
    .line 99
    const/16 v49, 0x0

    .line 100
    .line 101
    const/16 v50, 0x0

    .line 102
    .line 103
    const/16 v51, 0x0

    .line 104
    .line 105
    const/16 v52, 0x0

    .line 106
    .line 107
    const/16 v53, 0x0

    .line 108
    .line 109
    const/16 v54, 0x0

    .line 110
    .line 111
    const/16 v55, 0x0

    .line 112
    .line 113
    const/16 v56, 0x0

    .line 114
    .line 115
    const/16 v57, 0x0

    .line 116
    .line 117
    const/16 v58, 0x0

    .line 118
    .line 119
    const/16 v59, 0x0

    .line 120
    .line 121
    const-string v60, "&lt;"

    .line 122
    .line 123
    const/16 v61, 0x0

    .line 124
    .line 125
    const-string v62, "&gt;"

    .line 126
    .line 127
    const/16 v63, 0x0

    .line 128
    .line 129
    filled-new-array/range {v0 .. v63}, [Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lcom/xinzhu/overmind/utils/j;->l:[Ljava/lang/String;

    .line 134
    .line 135
    const-string v0, "                                                              "

    .line 136
    .line 137
    sput-object v0, Lcom/xinzhu/overmind/utils/j;->n:Ljava/lang/String;

    .line 138
    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x8000

    .line 1
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/xinzhu/overmind/utils/j;->h:Z

    .line 4
    iput v0, p0, Lcom/xinzhu/overmind/utils/j;->j:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/xinzhu/overmind/utils/j;->k:Z

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x8000

    .line 6
    :goto_0
    iput p1, p0, Lcom/xinzhu/overmind/utils/j;->a:I

    .line 7
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/j;->b:[C

    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/xinzhu/overmind/utils/j;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/j;->a:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/j;->flush()V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/j;->b:[C

    .line 15
    .line 16
    aput-char p1, v1, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 21
    .line 22
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v1, v0}, Lcom/xinzhu/overmind/utils/j;->c(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private c(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->a:I

    .line 2
    .line 3
    if-le p3, v0, :cond_2

    .line 4
    .line 5
    add-int/2addr p3, p2

    .line 6
    :goto_0
    if-ge p2, p3, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->a:I

    .line 9
    .line 10
    add-int v1, p2, v0

    .line 11
    .line 12
    if-ge v1, p3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sub-int v0, p3, p2

    .line 16
    .line 17
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/utils/j;->c(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    move p2, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void

    .line 23
    :cond_2
    iget v1, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 24
    .line 25
    add-int v2, v1, p3

    .line 26
    .line 27
    if-le v2, v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/j;->flush()V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 33
    .line 34
    :cond_3
    add-int v0, p2, p3

    .line 35
    .line 36
    iget-object v2, p0, Lcom/xinzhu/overmind/utils/j;->b:[C

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 39
    .line 40
    .line 41
    add-int/2addr v1, p3

    .line 42
    iput v1, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 43
    .line 44
    return-void
.end method

.method private d([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->a:I

    .line 2
    .line 3
    if-le p3, v0, :cond_2

    .line 4
    .line 5
    add-int/2addr p3, p2

    .line 6
    :goto_0
    if-ge p2, p3, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->a:I

    .line 9
    .line 10
    add-int v1, p2, v0

    .line 11
    .line 12
    if-ge v1, p3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sub-int v0, p3, p2

    .line 16
    .line 17
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/utils/j;->d([CII)V

    .line 18
    .line 19
    .line 20
    move p2, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void

    .line 23
    :cond_2
    iget v1, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 24
    .line 25
    add-int v2, v1, p3

    .line 26
    .line 27
    if-le v2, v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/j;->flush()V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 33
    .line 34
    :cond_3
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/j;->b:[C

    .line 35
    .line 36
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    add-int/2addr v1, p3

    .line 40
    iput v1, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 41
    .line 42
    return-void
.end method

.method private e(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    mul-int/lit8 p1, p1, 0x4

    .line 2
    .line 3
    sget-object v0, Lcom/xinzhu/overmind/utils/j;->n:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-le p1, v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/xinzhu/overmind/utils/j;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_0
    sget-object v0, Lcom/xinzhu/overmind/utils/j;->n:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/utils/j;->c(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/xinzhu/overmind/utils/j;->l:[Ljava/lang/String;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    int-to-char v2, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v3, v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-lt v5, v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    aget-object v5, v1, v5

    .line 21
    .line 22
    if-nez v5, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    if-ge v4, v3, :cond_2

    .line 26
    .line 27
    sub-int v6, v3, v4

    .line 28
    .line 29
    invoke-direct {p0, p1, v4, v6}, Lcom/xinzhu/overmind/utils/j;->c(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 33
    .line 34
    invoke-direct {p0, v5}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    if-ge v4, v3, :cond_4

    .line 41
    .line 42
    sub-int/2addr v3, v4

    .line 43
    invoke-direct {p0, p1, v4, v3}, Lcom/xinzhu/overmind/utils/j;->c(Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    :cond_4
    return-void
.end method

.method private g([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/utils/j;->l:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    int-to-char v1, v1

    .line 5
    add-int/2addr p3, p2

    .line 6
    move v2, p2

    .line 7
    :goto_0
    if-ge p2, p3, :cond_3

    .line 8
    .line 9
    aget-char v3, p1, p2

    .line 10
    .line 11
    if-lt v3, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    aget-object v3, v0, v3

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    if-ge v2, p2, :cond_2

    .line 20
    .line 21
    sub-int v4, p2, v2

    .line 22
    .line 23
    invoke-direct {p0, p1, v2, v4}, Lcom/xinzhu/overmind/utils/j;->d([CII)V

    .line 24
    .line 25
    .line 26
    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 27
    .line 28
    invoke-direct {p0, v3}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    if-ge v2, p2, :cond_4

    .line 35
    .line 36
    sub-int/2addr p2, v2

    .line 37
    invoke-direct {p0, p1, v2, p2}, Lcom/xinzhu/overmind/utils/j;->d([CII)V

    .line 38
    .line 39
    .line 40
    :cond_4
    return-void
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/j;->g:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/j;->g:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/j;->e:Ljava/io/OutputStream;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/xinzhu/overmind/utils/j;->g:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/j;->g:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;->a(C)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x3a

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->a(C)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "=\""

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/utils/j;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 p1, 0x22

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->a(C)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/xinzhu/overmind/utils/j;->k:Z

    .line 34
    .line 35
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/j;->flush()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/xinzhu/overmind/utils/j;->j:I

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/xinzhu/overmind/utils/j;->i:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string p1, " />\n"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v2, p0, Lcom/xinzhu/overmind/utils/j;->h:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/xinzhu/overmind/utils/j;->k:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;->e(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    const-string v0, "</"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x3a

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->a(C)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p1, ">\n"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iput-boolean v1, p0, Lcom/xinzhu/overmind/utils/j;->k:Z

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/xinzhu/overmind/utils/j;->i:Z

    .line 55
    .line 56
    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 2
    .line 3
    if-lez v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/j;->e:Ljava/io/OutputStream;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/j;->b:[C

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/j;->f:Ljava/nio/charset/CharsetEncoder;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/xinzhu/overmind/utils/j;->g:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/j;->h()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/j;->f:Ljava/nio/charset/CharsetEncoder;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/xinzhu/overmind/utils/j;->g:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/j;->h()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/j;->e:Ljava/io/OutputStream;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/j;->d:Ljava/io/Writer;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/xinzhu/overmind/utils/j;->b:[C

    .line 71
    .line 72
    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/j;->d:Ljava/io/Writer;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 78
    .line 79
    .line 80
    :goto_1
    iput v2, p0, Lcom/xinzhu/overmind/utils/j;->c:I

    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const-string p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/xinzhu/overmind/utils/j;->h:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/j;->f:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/j;->e:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    throw p1

    :catch_1
    move-exception p1

    .line 7
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    throw p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/j;->d:Ljava/io/Writer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-string p2, "yes"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p2, "no"

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, "\' ?>\n"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/xinzhu/overmind/utils/j;->k:Z

    .line 39
    .line 40
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/utils/j;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, ">\n"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/xinzhu/overmind/utils/j;->h:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->j:I

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;->e(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lcom/xinzhu/overmind/utils/j;->j:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    add-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/xinzhu/overmind/utils/j;->j:I

    .line 24
    .line 25
    const/16 v0, 0x3c

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;->a(C)V

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0x3a

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->a(C)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/xinzhu/overmind/utils/j;->i:Z

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/xinzhu/overmind/utils/j;->k:Z

    .line 47
    .line 48
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/xinzhu/overmind/utils/j;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ">"

    .line 8
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 9
    iput-boolean v1, p0, Lcom/xinzhu/overmind/utils/j;->i:Z

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/utils/j;->f(Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcom/xinzhu/overmind/utils/j;->h:Z

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/xinzhu/overmind/utils/j;->k:Z

    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/utils/j;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ">"

    .line 2
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/j;->b(Ljava/lang/String;)V

    .line 3
    iput-boolean v1, p0, Lcom/xinzhu/overmind/utils/j;->i:Z

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/utils/j;->g([CII)V

    .line 5
    iget-boolean v0, p0, Lcom/xinzhu/overmind/utils/j;->h:Z

    if-eqz v0, :cond_2

    add-int/2addr p2, p3

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 6
    aget-char p1, p1, p2

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/xinzhu/overmind/utils/j;->k:Z

    :cond_2
    return-object p0
.end method
