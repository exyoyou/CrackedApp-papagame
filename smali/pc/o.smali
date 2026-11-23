.class public Lpc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Lpc/b;

.field private e:Lpc/c;

.field private f:Lpc/f;

.field private g:Lpc/l;

.field private h:Lpc/m;

.field private i:Z

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lpc/o;->j:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/o;->j:J

    .line 2
    .line 3
    return-void
.end method

.method public B(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/o;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public C(Lpc/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->g:Lpc/l;

    .line 2
    .line 3
    return-void
.end method

.method public D(Lpc/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->h:Lpc/m;

    .line 2
    .line 3
    return-void
.end method

.method public E(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/o;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public a()Lpc/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->d:Lpc/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lpc/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->e:Lpc/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/o;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public f()Lpc/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->f:Lpc/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/o;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpc/o;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public k()Lpc/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->g:Lpc/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lpc/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->h:Lpc/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpc/o;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/o;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/o;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpc/o;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public r(Lpc/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->d:Lpc/b;

    .line 2
    .line 3
    return-void
.end method

.method public s(Lpc/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->e:Lpc/c;

    .line 2
    .line 3
    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->c:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lpc/o;->o:J

    .line 2
    .line 3
    return-void
.end method

.method public v(Lpc/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->f:Lpc/f;

    .line 2
    .line 3
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/o;->b:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/o;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public z(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpc/o;->i:Z

    .line 2
    .line 3
    return-void
.end method
