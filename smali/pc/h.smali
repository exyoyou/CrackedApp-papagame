.class public Lpc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/ArrayList;

.field private B:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:J

.field private h:[B

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[B

.field private p:[B

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:[C

.field private x:Z

.field private y:Lpc/n;

.field private z:Lpc/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lpc/h;->v:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lpc/h;->g:J

    .line 10
    .line 11
    iput-wide v0, p0, Lpc/h;->j:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public A()Lpc/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->y:Lpc/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/h;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/h;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/h;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/h;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public F(Lpc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->z:Lpc/a;

    .line 2
    .line 3
    return-void
.end method

.method public G(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/h;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public H(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public I(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/h;->g:J

    .line 2
    .line 3
    return-void
.end method

.method public J([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->h:[B

    .line 2
    .line 3
    return-void
.end method

.method public K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/h;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/h;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public M(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public N(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/h;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public P([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->p:[B

    .line 2
    .line 3
    return-void
.end method

.method public Q(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->A:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public R(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public T(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public V(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public W(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/h;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method public X([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->d:[B

    .line 2
    .line 3
    return-void
.end method

.method public Y([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->o:[B

    .line 2
    .line 3
    return-void
.end method

.method public Z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public a(Lpc/o;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->f(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lnet/lingala/zip4j/unzip/c;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lnet/lingala/zip4j/unzip/c;-><init>(Lpc/o;)V

    .line 12
    .line 13
    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move-object v6, p5

    .line 19
    move v7, p6

    .line 20
    invoke-virtual/range {v1 .. v7}, Lnet/lingala/zip4j/unzip/c;->f(Lpc/h;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 25
    .line 26
    const-string p2, "Invalid output path"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 33
    .line 34
    const-string p2, "input zipModel is null"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public a0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/h;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public b(Lpc/o;Ljava/lang/String;Lpc/k;Lqc/a;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    move v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lpc/h;->a(Lpc/o;Ljava/lang/String;Lpc/k;Ljava/lang/String;Lqc/a;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b0([C)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->w:[C

    .line 2
    .line 3
    return-void
.end method

.method public c(Lpc/o;Ljava/lang/String;Lqc/a;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v3, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v4, p3

    .line 6
    move v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lpc/h;->b(Lpc/o;Ljava/lang/String;Lpc/k;Lqc/a;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public d()Lpc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->z:Lpc/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/h;->j:J

    .line 2
    .line 3
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/h;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public f0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/h;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public g()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lpc/h;->g:J

    .line 2
    .line 3
    const-wide v2, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public g0(Lpc/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/h;->y:Lpc/n;

    .line 2
    .line 3
    return-void
.end method

.method public h()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->h:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public k()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->p:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->A:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public r()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->d:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public s()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->o:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/h;->q:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public v()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/h;->w:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/h;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/h;->c:I

    .line 2
    .line 3
    return v0
.end method
