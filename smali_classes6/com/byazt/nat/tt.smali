.class public Lcom/byazt/nat/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4ac,
        0xd
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public da:I

.field public i:Ljava/lang/Object;

.field public m:Lcom/byazt/uz/c;

.field public n:I

.field public nu:Lcom/byazt/pop/ve;

.field public rh:J

.field public sl:Lcom/byazt/nat/c$c;

.field public sp:Ljava/lang/String;

.field public t:Lcom/byazt/ete/ic;

.field public tt:Z

.field public u:Landroid/content/Context;

.field public uj:Lcom/byazt/zd/tt;

.field public ve:Z

.field public x:Z

.field public yp:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/nat/tt;->x:Z

    .line 6
    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    iput v1, p0, Lcom/byazt/nat/tt;->da:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/byazt/nat/tt;->yp:Z

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/byazt/nat/tt;->z:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/byazt/nat/tt;->tt:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/pop/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/tt;->nu:Lcom/byazt/pop/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/byazt/nat/c$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/tt;->sl:Lcom/byazt/nat/c$c;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/byazt/nat/tt;->z:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/byazt/nat/tt;->rh:J

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/nat/tt;->u:Landroid/content/Context;

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nat/tt;->t:Lcom/byazt/ete/ic;

    return-void
.end method

.method public c(Lcom/byazt/nat/c$c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/nat/tt;->sl:Lcom/byazt/nat/c$c;

    return-void
.end method

.method public c(Lcom/byazt/pop/ve;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/nat/tt;->nu:Lcom/byazt/pop/ve;

    return-void
.end method

.method public c(Lcom/byazt/uz/c;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/nat/tt;->m:Lcom/byazt/uz/c;

    return-void
.end method

.method public c(Lcom/byazt/zd/tt;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/nat/tt;->uj:Lcom/byazt/zd/tt;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/nat/tt;->i:Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/nat/tt;->sp:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/byazt/nat/tt;->a:Ljava/util/Map;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/nat/tt;->yp:Z

    return-void
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nat/tt;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/tt;->u:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/tt;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/byazt/uz/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/tt;->m:Lcom/byazt/uz/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nat/tt;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nat/tt;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public t()Lcom/byazt/zd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/tt;->uj:Lcom/byazt/zd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/nat/tt;->n:I

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nat/tt;->c:Z

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nat/tt;->yp:Z

    return v0
.end method

.method public uj(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nat/tt;->x:Z

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nat/tt;->c:Z

    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nat/tt;->z:I

    return v0
.end method

.method public ve(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nat/tt;->tt:Z

    return-void
.end method

.method public x()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/tt;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
