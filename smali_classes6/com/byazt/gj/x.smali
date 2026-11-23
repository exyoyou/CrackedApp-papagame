.class public Lcom/byazt/gj/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x96,
        0x47
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/gj/a;

.field public c:Ljava/lang/String;

.field public d:Z

.field public da:Ljava/lang/String;

.field public eo:Ljava/lang/String;

.field public gr:Z

.field public gt:Ljava/lang/String;

.field public gu:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public m:I

.field public md:Ljava/lang/String;

.field public my:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public nu:Ljava/lang/String;

.field public p:Z

.field public qy:Ljava/lang/String;

.field public rh:Ljava/lang/String;

.field public rl:Ljava/lang/String;

.field public sl:Lcom/byazt/yv/sl;

.field public sp:Z

.field public t:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:I

.field public yp:I

.field public yv:Ljava/lang/String;

.field public z:I

.field public zb:Lcom/byazt/gj/sp;

.field public zm:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/gj/x;->x:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/byazt/gj/x;->gu:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/byazt/gj/x;->gr:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/byazt/gj/x;->zm:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/byazt/gj/x;->yv:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/byazt/gj/x;->p:Z

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/gj/x;->c:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/byazt/gj/x;->tt:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->uj:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/gj/x;->p:Z

    return-void
.end method

.method public c(I)Lcom/byazt/gj/x;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/byazt/gj/x;->x:I

    return-object p0
.end method

.method public c(Z)Lcom/byazt/gj/x;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/gj/x;->h:Z

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/byazt/gj/sp;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/gj/x;->zb:Lcom/byazt/gj/sp;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/gj/x;->yv:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->eo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public da()Lcom/byazt/yv/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->sl:Lcom/byazt/yv/sl;

    .line 2
    .line 3
    return-object v0
.end method

.method public eo()Lcom/byazt/gj/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->zb:Lcom/byazt/gj/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/gj/x;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public gt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->my:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public gu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->qy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->md:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/byazt/gj/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->a:Lcom/byazt/gj/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/gj/x;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public md()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->yv:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public my()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->rh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public n(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/gj/x;->zm:Z

    return-void
.end method

.method public nu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/gj/x;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/gj/x;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public qy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->rl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public rh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->gt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->da:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt(I)Lcom/byazt/gj/x;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/byazt/yv/sl;->c(I)Lcom/byazt/yv/sl;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gj/x;->sl:Lcom/byazt/yv/sl;

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/gj/x;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/gj/x;->d:Z

    return-object p0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/gj/x;->md:Ljava/lang/String;

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/gj/x;->sp:Z

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public uj(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/gj/x;->gr:Z

    return-void
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gj/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public ve(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/gj/x;->gu:Z

    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/gj/x;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public yp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/gj/x;->yp:I

    .line 2
    .line 3
    return v0
.end method

.method public yv()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/gj/x;->zm:Z

    .line 2
    .line 3
    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/gj/x;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public zm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/gj/x;->gr:Z

    .line 2
    .line 3
    return v0
.end method
