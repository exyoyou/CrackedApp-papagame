.class public Lcom/alibaba/fastjson/asm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[B

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 7
    .line 8
    add-int/2addr p1, v2

    .line 9
    if-le v1, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, p1

    .line 13
    :goto_0
    new-array p1, v1, [B

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method b(II)Lcom/alibaba/fastjson/asm/a;
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/a;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    int-to-byte p1, p1

    .line 19
    aput-byte p1, v1, v0

    .line 20
    .line 21
    add-int/lit8 p1, v2, 0x1

    .line 22
    .line 23
    int-to-byte p2, p2

    .line 24
    aput-byte p2, v1, v2

    .line 25
    .line 26
    iput p1, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 27
    .line 28
    return-object p0
.end method

.method c(II)Lcom/alibaba/fastjson/asm/a;
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x3

    .line 4
    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/a;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    int-to-byte p1, p1

    .line 19
    aput-byte p1, v1, v0

    .line 20
    .line 21
    add-int/lit8 p1, v2, 0x1

    .line 22
    .line 23
    ushr-int/lit8 v0, p2, 0x8

    .line 24
    .line 25
    int-to-byte v0, v0

    .line 26
    aput-byte v0, v1, v2

    .line 27
    .line 28
    add-int/lit8 v0, p1, 0x1

    .line 29
    .line 30
    int-to-byte p2, p2

    .line 31
    aput-byte p2, v1, p1

    .line 32
    .line 33
    iput v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 34
    .line 35
    return-object p0
.end method

.method public d(I)Lcom/alibaba/fastjson/asm/a;
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/a;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 15
    .line 16
    int-to-byte p1, p1

    .line 17
    aput-byte p1, v2, v0

    .line 18
    .line 19
    iput v1, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 20
    .line 21
    return-object p0
.end method

.method public e([BII)Lcom/alibaba/fastjson/asm/a;
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p3

    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson/asm/a;->a(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 15
    .line 16
    iget v1, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 17
    .line 18
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 22
    .line 23
    add-int/2addr p1, p3

    .line 24
    iput p1, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 25
    .line 26
    return-object p0
.end method

.method public f(I)Lcom/alibaba/fastjson/asm/a;
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/a;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    ushr-int/lit8 v3, p1, 0x18

    .line 19
    .line 20
    int-to-byte v3, v3

    .line 21
    aput-byte v3, v1, v0

    .line 22
    .line 23
    add-int/lit8 v0, v2, 0x1

    .line 24
    .line 25
    ushr-int/lit8 v3, p1, 0x10

    .line 26
    .line 27
    int-to-byte v3, v3

    .line 28
    aput-byte v3, v1, v2

    .line 29
    .line 30
    add-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    ushr-int/lit8 v3, p1, 0x8

    .line 33
    .line 34
    int-to-byte v3, v3

    .line 35
    aput-byte v3, v1, v0

    .line 36
    .line 37
    add-int/lit8 v0, v2, 0x1

    .line 38
    .line 39
    int-to-byte p1, p1

    .line 40
    aput-byte p1, v1, v2

    .line 41
    .line 42
    iput v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 43
    .line 44
    return-object p0
.end method

.method public g(I)Lcom/alibaba/fastjson/asm/a;
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/a;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    ushr-int/lit8 v3, p1, 0x8

    .line 19
    .line 20
    int-to-byte v3, v3

    .line 21
    aput-byte v3, v1, v0

    .line 22
    .line 23
    add-int/lit8 v0, v2, 0x1

    .line 24
    .line 25
    int-to-byte p1, p1

    .line 26
    aput-byte p1, v1, v2

    .line 27
    .line 28
    iput v0, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 29
    .line 30
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/a;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 6
    .line 7
    add-int/lit8 v2, v1, 0x2

    .line 8
    .line 9
    add-int/2addr v2, v0

    .line 10
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 11
    .line 12
    array-length v3, v3

    .line 13
    if-le v2, v3, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x2

    .line 16
    .line 17
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/a;->a(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 21
    .line 22
    add-int/lit8 v3, v1, 0x1

    .line 23
    .line 24
    ushr-int/lit8 v4, v0, 0x8

    .line 25
    .line 26
    int-to-byte v4, v4

    .line 27
    aput-byte v4, v2, v1

    .line 28
    .line 29
    add-int/lit8 v1, v3, 0x1

    .line 30
    .line 31
    int-to-byte v4, v0

    .line 32
    aput-byte v4, v2, v3

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_0
    if-ge v3, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x1

    .line 42
    if-lt v4, v5, :cond_1

    .line 43
    .line 44
    const/16 v5, 0x7f

    .line 45
    .line 46
    if-gt v4, v5, :cond_1

    .line 47
    .line 48
    add-int/lit8 v5, v1, 0x1

    .line 49
    .line 50
    int-to-byte v4, v4

    .line 51
    aput-byte v4, v2, v1

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    move v1, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 64
    .line 65
    return-object p0
.end method
