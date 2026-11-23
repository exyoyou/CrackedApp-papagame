.class public final Lcom/alibaba/fastjson/parser/f;
.super Lcom/alibaba/fastjson/parser/e;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[C>;>;"
        }
    .end annotation
.end field

.field public static z:I = 0x2000


# instance fields
.field private w:Ljava/io/Reader;

.field private x:[C

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/f;->A:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 4
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/f;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/e;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/f;->w:Ljava/io/Reader;

    .line 7
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->d:I

    .line 8
    sget-object p2, Lcom/alibaba/fastjson/parser/f;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    if-nez p2, :cond_1

    .line 12
    sget p2, Lcom/alibaba/fastjson/parser/f;->z:I

    new-array p2, p2, [C

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 13
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/f;->y:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/f;->next()C

    .line 16
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/f;->next()C

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/f;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 3
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/f;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 19
    new-instance v0, Ljava/io/CharArrayReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/f;-><init>(Ljava/io/Reader;I)V

    return-void
.end method


# virtual methods
.method public final R()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 15
    .line 16
    sub-int/2addr v2, v3

    .line 17
    if-gt v0, v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v2, v1, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 43
    .line 44
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final R0(II)Ljava/lang/String;
    .locals 2

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public final a(IIILcom/alibaba/fastjson/parser/l;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 2
    .line 3
    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/l;->c([CIII)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public close()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/alibaba/fastjson/parser/e;->close()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/alibaba/fastjson/parser/f;->A:Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 18
    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/f;->w:Ljava/io/Reader;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final g0()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/f;->u(I)C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 17
    .line 18
    const/16 v3, 0x4c

    .line 19
    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    const/16 v3, 0x53

    .line 23
    .line 24
    if-eq v1, v3, :cond_1

    .line 25
    .line 26
    const/16 v3, 0x42

    .line 27
    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    .line 30
    const/16 v3, 0x46

    .line 31
    .line 32
    if-eq v1, v3, :cond_1

    .line 33
    .line 34
    const/16 v3, 0x44

    .line 35
    .line 36
    if-ne v1, v3, :cond_2

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    :cond_2
    new-instance v1, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 43
    .line 44
    invoke-direct {v1, v3, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method protected final i(I[CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k0(CI)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    sub-int/2addr p2, v0

    .line 4
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    add-int/2addr v0, p2

    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/f;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 14
    .line 15
    add-int/2addr p2, p1

    .line 16
    return p2

    .line 17
    :cond_0
    const/16 v0, 0x1a

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    goto :goto_0
.end method

.method public l0()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/f;->y:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 10
    .line 11
    array-length v3, v1

    .line 12
    if-eq v0, v3, :cond_1

    .line 13
    .line 14
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 15
    .line 16
    const/16 v4, 0x1a

    .line 17
    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    array-length v1, v1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :cond_1
    :goto_0
    return v2
.end method

.method public final n([C)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 7
    .line 8
    add-int/2addr v2, v1

    .line 9
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/f;->u(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    aget-char v3, p1, v1

    .line 14
    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public final next()C
    .locals 7

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 6
    .line 7
    iget v1, p0, Lcom/alibaba/fastjson/parser/f;->y:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_6

    .line 10
    .line 11
    const/16 v0, 0x1a

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-lez v3, :cond_2

    .line 21
    .line 22
    sub-int/2addr v1, v3

    .line 23
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 24
    .line 25
    const/16 v6, 0x22

    .line 26
    .line 27
    if-ne v5, v6, :cond_1

    .line 28
    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 32
    .line 33
    invoke-static {v5, v1, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 37
    .line 38
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 39
    .line 40
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 41
    .line 42
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 43
    .line 44
    array-length v5, v3

    .line 45
    sub-int/2addr v5, v1

    .line 46
    if-nez v5, :cond_3

    .line 47
    .line 48
    array-length v5, v3

    .line 49
    mul-int/lit8 v5, v5, 0x2

    .line 50
    .line 51
    new-array v5, v5, [C

    .line 52
    .line 53
    array-length v6, v3

    .line 54
    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 58
    .line 59
    array-length v3, v5

    .line 60
    sub-int v5, v3, v1

    .line 61
    .line 62
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/f;->w:Ljava/io/Reader;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 65
    .line 66
    iget v6, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 67
    .line 68
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/Reader;->read([CII)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iput v3, p0, Lcom/alibaba/fastjson/parser/f;->y:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    if-ne v3, v2, :cond_4

    .line 77
    .line 78
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 79
    .line 80
    return v0

    .line 81
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 82
    .line 83
    add-int/2addr v3, v0

    .line 84
    iput v3, p0, Lcom/alibaba/fastjson/parser/f;->y:I

    .line 85
    .line 86
    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 89
    .line 90
    const-string v1, "illegal stat, textLength is zero"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 108
    .line 109
    aget-char v0, v1, v0

    .line 110
    .line 111
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 112
    .line 113
    return v0
.end method

.method public o()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/c;->c([CII)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final u(I)C
    .locals 7

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/f;->y:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_5

    .line 4
    .line 5
    const/16 v1, 0x1a

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v0, v2, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 11
    .line 12
    if-ge p1, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 15
    .line 16
    aget-char p1, v0, p1

    .line 17
    .line 18
    return p1

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 21
    .line 22
    sub-int/2addr v0, v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-lez v0, :cond_2

    .line 25
    .line 26
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 27
    .line 28
    invoke-static {v5, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/f;->w:Ljava/io/Reader;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 34
    .line 35
    array-length v6, v5

    .line 36
    sub-int/2addr v6, v0

    .line 37
    invoke-virtual {v3, v5, v0, v6}, Ljava/io/Reader;->read([CII)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iput v3, p0, Lcom/alibaba/fastjson/parser/f;->y:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    if-ne v3, v2, :cond_3

    .line 46
    .line 47
    return v1

    .line 48
    :cond_3
    add-int/2addr v3, v0

    .line 49
    iput v3, p0, Lcom/alibaba/fastjson/parser/f;->y:I

    .line 50
    .line 51
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 52
    .line 53
    sub-int/2addr p1, v0

    .line 54
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 55
    .line 56
    sub-int/2addr v1, v0

    .line 57
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 58
    .line 59
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 63
    .line 64
    const-string v0, "illegal stat, textLength is zero"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 82
    .line 83
    aget-char p1, v0, p1

    .line 84
    .line 85
    return p1
.end method

.method protected final x(II[C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/f;->x:[C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
