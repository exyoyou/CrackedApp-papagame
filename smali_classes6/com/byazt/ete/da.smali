.class public Lcom/byazt/ete/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x48
    }
.end annotation


# instance fields
.field public a:J

.field public c:F

.field public da:Z

.field public gr:Ljava/lang/String;

.field public gt:I

.field public gu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public m:B

.field public my:Ljava/lang/String;

.field public n:J

.field public nu:B

.field public qy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/hkv/uj$c;",
            ">;"
        }
    .end annotation
.end field

.field public rh:Z

.field public rl:Ljava/lang/String;

.field public sl:I

.field public sp:I

.field public t:I

.field public tt:F

.field public u:Landroid/view/View;

.field public uj:F

.field public ve:F

.field public x:I

.field public yp:Landroid/view/View;

.field public yv:Z

.field public z:Z

.field public zm:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/ete/da;->c:F

    .line 7
    .line 8
    iput v0, p0, Lcom/byazt/ete/da;->tt:F

    .line 9
    .line 10
    iput v0, p0, Lcom/byazt/ete/da;->ve:F

    .line 11
    .line 12
    iput v0, p0, Lcom/byazt/ete/da;->uj:F

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/byazt/ete/da;->n:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/byazt/ete/da;->a:J

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/byazt/ete/da;->sp:I

    .line 22
    .line 23
    iput v0, p0, Lcom/byazt/ete/da;->x:I

    .line 24
    .line 25
    const/16 v1, -0x400

    .line 26
    .line 27
    iput v1, p0, Lcom/byazt/ete/da;->i:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/byazt/ete/da;->da:Z

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/byazt/ete/da;->sl:I

    .line 34
    .line 35
    iput v1, p0, Lcom/byazt/ete/da;->t:I

    .line 36
    .line 37
    iput-byte v1, p0, Lcom/byazt/ete/da;->m:B

    .line 38
    .line 39
    iput-byte v0, p0, Lcom/byazt/ete/da;->nu:B

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/byazt/ete/da;->rh:Z

    .line 42
    .line 43
    iput v0, p0, Lcom/byazt/ete/da;->gt:I

    .line 44
    .line 45
    new-instance v0, Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/byazt/ete/da;->qy:Landroid/util/SparseArray;

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/byazt/ete/da;->gu:Ljava/util/List;

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/byazt/ete/da;->yv:Z

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->x:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/da;->t:I

    return-void
.end method

.method public c(B)V
    .locals 0

    .line 3
    iput-byte p1, p0, Lcom/byazt/ete/da;->m:B

    return-void
.end method

.method public c(F)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/byazt/ete/da;->c:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/ete/da;->zm:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/byazt/ete/da;->n:J

    return-void
.end method

.method public c(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/hkv/uj$c;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/byazt/ete/da;->qy:Landroid/util/SparseArray;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/byazt/ete/da;->u:Landroid/view/View;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/ete/da;->my:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ete/da;->yv:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/ete/da;->yv:Z

    return v0
.end method

.method public da()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/da;->yp:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/da;->gr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public gt()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->uj:F

    .line 2
    .line 3
    return v0
.end method

.method public gu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/da;->rl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/da;->u:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/da;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public my()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->ve:F

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->sp:I

    return v0
.end method

.method public n(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/da;->sl:I

    return-void
.end method

.method public nu()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public qy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->gt:I

    .line 2
    .line 3
    return v0
.end method

.method public rh()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->tt:F

    .line 2
    .line 3
    return v0
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/da;->my:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->sl:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->i:I

    return v0
.end method

.method public sp(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/da;->gt:I

    return-void
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/byazt/ete/da;->m:B

    return v0
.end method

.method public tt(B)V
    .locals 0

    .line 2
    iput-byte p1, p0, Lcom/byazt/ete/da;->nu:B

    return-void
.end method

.method public tt(F)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/byazt/ete/da;->tt:F

    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/da;->sp:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/byazt/ete/da;->a:J

    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/byazt/ete/da;->yp:Landroid/view/View;

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/ete/da;->rl:Ljava/lang/String;

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/ete/da;->da:Z

    return-void
.end method

.method public u()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/hkv/uj$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/da;->qy:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/da;->uj:F

    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/da;->i:I

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/ete/da;->rh:Z

    return-void
.end method

.method public uj()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ete/da;->zm:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/byazt/ete/da;->nu:B

    return v0
.end method

.method public ve(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/da;->ve:F

    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/da;->x:I

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/ete/da;->gr:Ljava/lang/String;

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/ete/da;->z:Z

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/da;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public yp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/da;->gu:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/da;->n:J

    .line 2
    .line 3
    return-wide v0
.end method
