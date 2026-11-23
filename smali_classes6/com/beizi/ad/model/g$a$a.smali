.class public Lcom/beizi/ad/model/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/model/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/beizi/ad/model/i$e;

.field private e:Lcom/beizi/ad/model/i$b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(I)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 5
    iput p1, p0, Lcom/beizi/ad/model/g$a$a;->C:I

    return-object p0
.end method

.method public a(Lcom/beizi/ad/model/i$b;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->e:Lcom/beizi/ad/model/i$b;

    return-object p0
.end method

.method public a(Lcom/beizi/ad/model/i$e;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->d:Lcom/beizi/ad/model/i$e;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/ad/model/g$a$a;->u:Z

    return-object p0
.end method

.method public a()Lcom/beizi/ad/model/g$a;
    .locals 2

    .line 6
    new-instance v0, Lcom/beizi/ad/model/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beizi/ad/model/g$a;-><init>(Lcom/beizi/ad/model/g$1;)V

    .line 7
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->e:Lcom/beizi/ad/model/i$b;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->a(Lcom/beizi/ad/model/g$a;Lcom/beizi/ad/model/i$b;)Lcom/beizi/ad/model/i$b;

    .line 8
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->d:Lcom/beizi/ad/model/i$e;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->a(Lcom/beizi/ad/model/g$a;Lcom/beizi/ad/model/i$e;)Lcom/beizi/ad/model/i$e;

    .line 9
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->a(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->b(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->c(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->d(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->e(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->f(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->g(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->h(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->i(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->j(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->k(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->l(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->m(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->n(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->s:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->a(Lcom/beizi/ad/model/g$a;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 24
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->o(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->p(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->q(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    iget-boolean v1, p0, Lcom/beizi/ad/model/g$a$a;->u:Z

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->a(Lcom/beizi/ad/model/g$a;Z)Z

    .line 28
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->r(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->s(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->t(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->u(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->v(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->w(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->x(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    iget v1, p0, Lcom/beizi/ad/model/g$a$a;->C:I

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->a(Lcom/beizi/ad/model/g$a;I)I

    .line 36
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->y(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/beizi/ad/model/g$a$a;->E:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->z(Lcom/beizi/ad/model/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-boolean v1, p0, Lcom/beizi/ad/model/g$a$a;->F:Z

    invoke-static {v0, v1}, Lcom/beizi/ad/model/g$a;->b(Lcom/beizi/ad/model/g$a;Z)Z

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/ad/model/g$a$a;->F:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public u(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$a$a;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
