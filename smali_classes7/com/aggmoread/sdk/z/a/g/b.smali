.class public Lcom/aggmoread/sdk/z/a/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/g/b$a;
    }
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:F

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:Ljava/lang/String;

.field private w:J

.field private x:J

.field private y:Landroid/location/Location;

.field private z:Lcom/aggmoread/sdk/z/a/g/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->i:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->j:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->k:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->u:J

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->o:I

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->r:Z

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->q:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->n:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->x:J

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/g/b$a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->z:Lcom/aggmoread/sdk/z/a/g/b$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->r:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->D:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->p:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->w:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->D:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->o:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->u:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->s:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->E:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->B:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->E:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->F:Ljava/lang/String;

    return-void
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->q:F

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->l:Ljava/lang/String;

    return-void
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->x:J

    return-wide v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->C:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->n:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->G:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->v:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->g:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/b;->t:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->A:Ljava/util/List;

    return-object v0
.end method

.method public n()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->y:Landroid/location/Location;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->w:J

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->F:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->z:Lcom/aggmoread/sdk/z/a/g/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->m:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->p:I

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->C:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/b;->G:Ljava/lang/String;

    return-object v0
.end method
