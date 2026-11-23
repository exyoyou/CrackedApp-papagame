.class public Lpc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:J

.field private g:[B

.field private h:J

.field private i:J

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[B

.field private n:J

.field private o:Z

.field private p:I

.field private q:[C

.field private r:Ljava/util/ArrayList;

.field private s:Lpc/n;

.field private t:Lpc/a;

.field private u:Z

.field private v:Z

.field private w:Z


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
    iput v0, p0, Lpc/i;->p:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lpc/i;->v:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lpc/i;->f:J

    .line 13
    .line 14
    iput-wide v0, p0, Lpc/i;->i:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/i;->f:J

    .line 2
    .line 3
    return-void
.end method

.method public B([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/i;->g:[B

    .line 2
    .line 3
    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/i;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/i;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public E(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/i;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public F(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/i;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public G([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/i;->m:[B

    .line 2
    .line 3
    return-void
.end method

.method public H(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/i;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/i;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/i;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/i;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public L([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/i;->c:[B

    .line 2
    .line 3
    return-void
.end method

.method public M(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/i;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public N(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/i;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public O([C)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/i;->q:[C

    .line 2
    .line 3
    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/i;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public Q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/i;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public R(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/i;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public S(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/i;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public T(Lpc/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/i;->s:Lpc/n;

    .line 2
    .line 3
    return-void
.end method

.method public a()Lpc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/i;->t:Lpc/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/i;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/i;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/i;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/i;->g:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/i;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/i;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/i;->m:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/i;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/i;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/i;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public l()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/i;->c:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/i;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/i;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public o()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/i;->q:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/i;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/i;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lpc/i;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public s()Lpc/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/i;->s:Lpc/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/i;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/i;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/i;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/i;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public x(Lpc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/i;->t:Lpc/a;

    .line 2
    .line 3
    return-void
.end method

.method public y(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/i;->h:J

    .line 2
    .line 3
    return-void
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpc/i;->d:I

    .line 2
    .line 3
    return-void
.end method
