.class Lcom/alibaba/fastjson/asm/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/asm/g;


# static fields
.field static final l:I = 0x40000

.field static final m:I = 0x0

.field static final n:I = 0x40

.field static final o:I = 0x80

.field static final p:I = 0xf7

.field static final q:I = 0xf8

.field static final r:I = 0xfb

.field static final s:I = 0xfc

.field static final t:I = 0xff


# instance fields
.field a:Lcom/alibaba/fastjson/asm/h;

.field final b:Lcom/alibaba/fastjson/asm/b;

.field private c:I

.field private final d:I

.field private final e:I

.field f:I

.field g:I

.field h:[I

.field private i:Lcom/alibaba/fastjson/asm/a;

.field private j:I

.field private k:I


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/asm/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p5, Lcom/alibaba/fastjson/asm/a;

    .line 5
    .line 6
    invoke-direct {p5}, Lcom/alibaba/fastjson/asm/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 10
    .line 11
    iget-object p5, p1, Lcom/alibaba/fastjson/asm/b;->r:Lcom/alibaba/fastjson/asm/h;

    .line 12
    .line 13
    if-nez p5, :cond_0

    .line 14
    .line 15
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/b;->r:Lcom/alibaba/fastjson/asm/h;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p5, p1, Lcom/alibaba/fastjson/asm/b;->s:Lcom/alibaba/fastjson/asm/h;

    .line 19
    .line 20
    iput-object p0, p5, Lcom/alibaba/fastjson/asm/h;->a:Lcom/alibaba/fastjson/asm/h;

    .line 21
    .line 22
    :goto_0
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/b;->s:Lcom/alibaba/fastjson/asm/h;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 25
    .line 26
    iput p2, p0, Lcom/alibaba/fastjson/asm/h;->c:I

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/asm/b;->k(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/alibaba/fastjson/asm/h;->d:I

    .line 33
    .line 34
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/b;->k(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p0, Lcom/alibaba/fastjson/asm/h;->e:I

    .line 39
    .line 40
    if-eqz p6, :cond_1

    .line 41
    .line 42
    array-length p2, p6

    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    array-length p2, p6

    .line 46
    iput p2, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 47
    .line 48
    new-array p2, p2, [I

    .line 49
    .line 50
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/h;->h:[I

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    :goto_1
    iget p3, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 54
    .line 55
    if-ge p2, p3, :cond_1

    .line 56
    .line 57
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/h;->h:[I

    .line 58
    .line 59
    aget-object p4, p6, p2

    .line 60
    .line 61
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/b;->b(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p4

    .line 65
    aput p4, p3, p2

    .line 66
    .line 67
    add-int/lit8 p2, p2, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3, p4}, Lcom/alibaba/fastjson/asm/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 8
    .line 9
    iget p2, p2, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 10
    .line 11
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/b;->d(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p1, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 8
    .line 9
    iget p1, p1, Lcom/alibaba/fastjson/asm/e;->b:I

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 p1, 0x100

    .line 19
    .line 20
    if-lt v0, p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 23
    .line 24
    const/16 v1, 0x13

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 31
    .line 32
    const/16 v1, 0x12

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 39
    .line 40
    const/16 v1, 0x14

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/asm/b;->c(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 8
    .line 9
    iget p2, p2, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e(Lcom/alibaba/fastjson/asm/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    iget v1, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 6
    .line 7
    invoke-virtual {p1, p0, v1, v0}, Lcom/alibaba/fastjson/asm/f;->c(Lcom/alibaba/fastjson/asm/h;I[B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(ILcom/alibaba/fastjson/asm/f;)V
    .locals 2

    .line 1
    iget v0, p2, Lcom/alibaba/fastjson/asm/f;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p2, Lcom/alibaba/fastjson/asm/f;->d:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 10
    .line 11
    iget v1, v1, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    const/16 v1, -0x8000

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 31
    .line 32
    iget v0, p1, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    invoke-virtual {p2, p0, p1, v0}, Lcom/alibaba/fastjson/asm/f;->b(Lcom/alibaba/fastjson/asm/h;Lcom/alibaba/fastjson/asm/a;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public g(II)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ge p2, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0xa9

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x36

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    add-int/lit8 p1, p1, -0x15

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1a

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sub-int/2addr p1, v0

    .line 20
    shl-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x3b

    .line 23
    .line 24
    :goto_0
    add-int/2addr p1, p2

    .line 25
    iget-object p2, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v0, 0x100

    .line 32
    .line 33
    if-lt p2, v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 36
    .line 37
    const/16 v1, 0xc4

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 48
    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public h(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    const/16 v1, 0x84

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public i(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/a;->d(I)Lcom/alibaba/fastjson/asm/a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/fastjson/asm/h;->j:I

    .line 2
    .line 3
    iput p2, p0, Lcom/alibaba/fastjson/asm/h;->k:I

    .line 4
    .line 5
    return-void
.end method

.method public l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xb9

    .line 3
    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 10
    .line 11
    invoke-virtual {v3, p2, p3, p4, v2}, Lcom/alibaba/fastjson/asm/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/e;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget p3, p2, Lcom/alibaba/fastjson/asm/e;->c:I

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    invoke-static {p4}, Lcom/alibaba/fastjson/asm/j;->a(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    iput p3, p2, Lcom/alibaba/fastjson/asm/e;->c:I

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 28
    .line 29
    iget p2, p2, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 30
    .line 31
    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    shr-int/lit8 p2, p3, 0x2

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/asm/a;->b(II)Lcom/alibaba/fastjson/asm/a;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 42
    .line 43
    iget p2, p2, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 44
    .line 45
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/asm/a;->c(II)Lcom/alibaba/fastjson/asm/a;

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method final m()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 2
    .line 3
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 10
    .line 11
    const-string v2, "Code"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/b;->k(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 17
    .line 18
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x12

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x0

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x8

    .line 27
    .line 28
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 29
    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 33
    .line 34
    const-string v3, "Exceptions"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/b;->k(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 40
    .line 41
    mul-int/lit8 v2, v2, 0x2

    .line 42
    .line 43
    add-int/2addr v2, v1

    .line 44
    add-int/2addr v0, v2

    .line 45
    :cond_1
    return v0
.end method

.method final n(Lcom/alibaba/fastjson/asm/a;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/h;->c:I

    .line 2
    .line 3
    const/high16 v1, 0x40000

    .line 4
    .line 5
    and-int/2addr v1, v0

    .line 6
    div-int/lit8 v1, v1, 0x40

    .line 7
    .line 8
    const/high16 v2, 0x60000

    .line 9
    .line 10
    or-int/2addr v1, v2

    .line 11
    not-int v1, v1

    .line 12
    and-int/2addr v0, v1

    .line 13
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/alibaba/fastjson/asm/h;->d:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/alibaba/fastjson/asm/h;->e:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 29
    .line 30
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 39
    .line 40
    if-lez v2, :cond_1

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 48
    .line 49
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 50
    .line 51
    if-lez v0, :cond_2

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0xc

    .line 54
    .line 55
    add-int/2addr v0, v1

    .line 56
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 57
    .line 58
    const-string v3, "Code"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/b;->k(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/asm/a;->f(I)Lcom/alibaba/fastjson/asm/a;

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lcom/alibaba/fastjson/asm/h;->j:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget v2, p0, Lcom/alibaba/fastjson/asm/h;->k:I

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 83
    .line 84
    iget v0, v0, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->f(I)Lcom/alibaba/fastjson/asm/a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/h;->i:Lcom/alibaba/fastjson/asm/a;

    .line 91
    .line 92
    iget-object v3, v2, Lcom/alibaba/fastjson/asm/a;->a:[B

    .line 93
    .line 94
    iget v2, v2, Lcom/alibaba/fastjson/asm/a;->b:I

    .line 95
    .line 96
    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/fastjson/asm/a;->e([BII)Lcom/alibaba/fastjson/asm/a;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 103
    .line 104
    .line 105
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 106
    .line 107
    if-lez v0, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->b:Lcom/alibaba/fastjson/asm/b;

    .line 110
    .line 111
    const-string v2, "Exceptions"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/b;->k(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget v2, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 122
    .line 123
    mul-int/lit8 v2, v2, 0x2

    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x2

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/a;->f(I)Lcom/alibaba/fastjson/asm/a;

    .line 128
    .line 129
    .line 130
    iget v0, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 133
    .line 134
    .line 135
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/h;->g:I

    .line 136
    .line 137
    if-ge v1, v0, :cond_3

    .line 138
    .line 139
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/h;->h:[I

    .line 140
    .line 141
    aget v0, v0, v1

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    .line 144
    .line 145
    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    return-void
.end method
