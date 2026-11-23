.class public final Lcom/byazt/mk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x287,
        0x85
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/mk/z;

.field public final c:[B

.field public n:Z

.field public sp:Lcom/byazt/mk/z;

.field public tt:I

.field public uj:Z

.field public ve:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/byazt/mk/z;->c:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/mk/z;->n:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/byazt/mk/z;->uj:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/byazt/mk/z;->c:[B

    .line 7
    iput p2, p0, Lcom/byazt/mk/z;->tt:I

    .line 8
    iput p3, p0, Lcom/byazt/mk/z;->ve:I

    .line 9
    iput-boolean p4, p0, Lcom/byazt/mk/z;->uj:Z

    .line 10
    iput-boolean p5, p0, Lcom/byazt/mk/z;->n:Z

    return-void
.end method


# virtual methods
.method public final c()Lcom/byazt/mk/z;
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/byazt/mk/z;->uj:Z

    .line 2
    new-instance v0, Lcom/byazt/mk/z;

    iget-object v2, p0, Lcom/byazt/mk/z;->c:[B

    iget v3, p0, Lcom/byazt/mk/z;->tt:I

    iget v4, p0, Lcom/byazt/mk/z;->ve:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/mk/z;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final c(I)Lcom/byazt/mk/z;
    .locals 5

    if-lez p1, :cond_1

    .line 7
    iget v0, p0, Lcom/byazt/mk/z;->ve:I

    iget v1, p0, Lcom/byazt/mk/z;->tt:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/byazt/mk/z;->c()Lcom/byazt/mk/z;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/byazt/mk/m;->c()Lcom/byazt/mk/z;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/byazt/mk/z;->c:[B

    iget v2, p0, Lcom/byazt/mk/z;->tt:I

    iget-object v3, v0, Lcom/byazt/mk/z;->c:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :goto_0
    iget v1, v0, Lcom/byazt/mk/z;->tt:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/byazt/mk/z;->ve:I

    .line 12
    iget v1, p0, Lcom/byazt/mk/z;->tt:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/byazt/mk/z;->tt:I

    .line 13
    iget-object p1, p0, Lcom/byazt/mk/z;->sp:Lcom/byazt/mk/z;

    invoke-virtual {p1, v0}, Lcom/byazt/mk/z;->c(Lcom/byazt/mk/z;)Lcom/byazt/mk/z;

    return-object v0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final c(Lcom/byazt/mk/z;)Lcom/byazt/mk/z;
    .locals 1

    .line 3
    iput-object p0, p1, Lcom/byazt/mk/z;->sp:Lcom/byazt/mk/z;

    .line 4
    iget-object v0, p0, Lcom/byazt/mk/z;->a:Lcom/byazt/mk/z;

    iput-object v0, p1, Lcom/byazt/mk/z;->a:Lcom/byazt/mk/z;

    .line 5
    iget-object v0, p0, Lcom/byazt/mk/z;->a:Lcom/byazt/mk/z;

    iput-object p1, v0, Lcom/byazt/mk/z;->sp:Lcom/byazt/mk/z;

    .line 6
    iput-object p1, p0, Lcom/byazt/mk/z;->a:Lcom/byazt/mk/z;

    return-object p1
.end method

.method public final c(Lcom/byazt/mk/z;I)V
    .locals 4

    .line 15
    iget-boolean v0, p1, Lcom/byazt/mk/z;->n:Z

    if-eqz v0, :cond_3

    .line 16
    iget v0, p1, Lcom/byazt/mk/z;->ve:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 17
    iget-boolean v1, p1, Lcom/byazt/mk/z;->uj:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    .line 18
    iget v3, p1, Lcom/byazt/mk/z;->tt:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    .line 19
    iget-object v1, p1, Lcom/byazt/mk/z;->c:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget v0, p1, Lcom/byazt/mk/z;->ve:I

    iget v1, p1, Lcom/byazt/mk/z;->tt:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/byazt/mk/z;->ve:I

    .line 21
    iput v2, p1, Lcom/byazt/mk/z;->tt:I

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 24
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/mk/z;->c:[B

    iget v1, p0, Lcom/byazt/mk/z;->tt:I

    iget-object v2, p1, Lcom/byazt/mk/z;->c:[B

    iget v3, p1, Lcom/byazt/mk/z;->ve:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget v0, p1, Lcom/byazt/mk/z;->ve:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/byazt/mk/z;->ve:I

    .line 26
    iget p1, p0, Lcom/byazt/mk/z;->tt:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/byazt/mk/z;->tt:I

    return-void

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final tt()Lcom/byazt/mk/z;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/z;->a:Lcom/byazt/mk/z;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    .line 6
    move-object v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/byazt/mk/z;->sp:Lcom/byazt/mk/z;

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    iput-object v0, v3, Lcom/byazt/mk/z;->a:Lcom/byazt/mk/z;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/mk/z;->a:Lcom/byazt/mk/z;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iput-object v3, v0, Lcom/byazt/mk/z;->sp:Lcom/byazt/mk/z;

    .line 20
    .line 21
    :cond_2
    iput-object v1, p0, Lcom/byazt/mk/z;->a:Lcom/byazt/mk/z;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/byazt/mk/z;->sp:Lcom/byazt/mk/z;

    .line 24
    .line 25
    return-object v2
.end method

.method public final ve()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/z;->sp:Lcom/byazt/mk/z;

    .line 2
    .line 3
    if-eq v0, p0, :cond_3

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/byazt/mk/z;->n:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Lcom/byazt/mk/z;->ve:I

    .line 11
    .line 12
    iget v2, p0, Lcom/byazt/mk/z;->tt:I

    .line 13
    .line 14
    sub-int/2addr v1, v2

    .line 15
    iget v2, v0, Lcom/byazt/mk/z;->ve:I

    .line 16
    .line 17
    rsub-int v2, v2, 0x2000

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/byazt/mk/z;->uj:Z

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v3, v0, Lcom/byazt/mk/z;->tt:I

    .line 26
    .line 27
    :goto_0
    add-int/2addr v2, v3

    .line 28
    if-le v1, v2, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/z;->c(Lcom/byazt/mk/z;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/byazt/mk/z;->tt()Lcom/byazt/mk/z;

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lcom/byazt/mk/m;->c(Lcom/byazt/mk/z;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw v0
.end method
