.class public Lcom/aggmoread/sdk/z/c/a/a/d/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;
    }
.end annotation


# instance fields
.field public a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field public b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

.field public c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

.field public d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

.field public e:I

.field public f:I

.field public g:I

.field private h:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

.field private i:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->g:I

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->j:Z

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->g:I

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->j:Z

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k:Z

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-direct {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->g:I

    return-void
.end method

.method public static i()V
    .locals 26

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0xb

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->g:Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->f:Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->d:Ljava/lang/Object;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->e:Ljava/lang/Object;

    aput-object v4, v3, v0

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->c:Ljava/lang/Object;

    const/4 v8, 0x4

    aput-object v4, v3, v8

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->b:Ljava/lang/Object;

    const/4 v9, 0x5

    aput-object v4, v3, v9

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a:Ljava/lang/Object;

    const/4 v10, 0x6

    aput-object v4, v3, v10

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->h:Ljava/lang/Object;

    const/4 v11, 0x7

    aput-object v4, v3, v11

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->i:Ljava/lang/Object;

    const/16 v12, 0x8

    aput-object v4, v3, v12

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->j:Ljava/lang/Object;

    const/16 v13, 0x9

    aput-object v4, v3, v13

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->k:Ljava/lang/Object;

    const/16 v14, 0xa

    aput-object v4, v3, v14

    aput-object v3, v1, v5

    const/16 v3, 0x19

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->R:Ljava/lang/Object;

    aput-object v15, v4, v5

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->f0:Ljava/lang/Object;

    aput-object v15, v4, v6

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->e0:Ljava/lang/Object;

    aput-object v15, v4, v7

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->d0:Ljava/lang/Object;

    aput-object v15, v4, v0

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->S:Ljava/lang/Object;

    aput-object v15, v4, v8

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->T:Ljava/lang/Object;

    aput-object v15, v4, v9

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->U:Ljava/lang/Object;

    aput-object v15, v4, v10

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->Y:Ljava/lang/Object;

    aput-object v15, v4, v11

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->V:Ljava/lang/Object;

    aput-object v15, v4, v12

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->c0:Ljava/lang/Object;

    aput-object v15, v4, v13

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->W:Ljava/lang/Object;

    aput-object v15, v4, v14

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->X:Ljava/lang/Object;

    aput-object v15, v4, v2

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->Z:Ljava/lang/Object;

    const/16 v16, 0xc

    aput-object v15, v4, v16

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    const/16 v17, 0xd

    aput-object v15, v4, v17

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->b0:Ljava/lang/Object;

    const/16 v18, 0xe

    aput-object v15, v4, v18

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->g0:Ljava/lang/Object;

    const/16 v19, 0xf

    aput-object v15, v4, v19

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->h0:Ljava/lang/Object;

    const/16 v20, 0x10

    aput-object v15, v4, v20

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->i0:Ljava/lang/Object;

    const/16 v21, 0x11

    aput-object v15, v4, v21

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->j0:Ljava/lang/Object;

    const/16 v22, 0x12

    aput-object v15, v4, v22

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->k0:Ljava/lang/Object;

    const/16 v23, 0x13

    aput-object v15, v4, v23

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->l0:Ljava/lang/Object;

    const/16 v24, 0x14

    aput-object v15, v4, v24

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->m0:Ljava/lang/Object;

    const/16 v25, 0x15

    aput-object v15, v4, v25

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->n0:Ljava/lang/Object;

    const/16 v25, 0x16

    aput-object v15, v4, v25

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->o0:Ljava/lang/Object;

    const/16 v25, 0x17

    aput-object v15, v4, v25

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->p0:Ljava/lang/Object;

    const/16 v25, 0x18

    aput-object v15, v4, v25

    aput-object v4, v1, v6

    const/16 v4, 0x20

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->w:Ljava/lang/Object;

    aput-object v15, v4, v5

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->D:Ljava/lang/Object;

    aput-object v5, v4, v6

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->v:Ljava/lang/Object;

    aput-object v5, v4, v7

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->F:Ljava/lang/Object;

    aput-object v5, v4, v0

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->r:Ljava/lang/Object;

    aput-object v0, v4, v8

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->p:Ljava/lang/Object;

    aput-object v0, v4, v9

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->q:Ljava/lang/Object;

    aput-object v0, v4, v10

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->G:Ljava/lang/Object;

    aput-object v0, v4, v11

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->t:Ljava/lang/Object;

    aput-object v0, v4, v12

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->s:Ljava/lang/Object;

    aput-object v0, v4, v13

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->l:Ljava/lang/Object;

    aput-object v0, v4, v14

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->A:Ljava/lang/Object;

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->y:Ljava/lang/Object;

    aput-object v0, v4, v16

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->m:Ljava/lang/Object;

    aput-object v0, v4, v17

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->z:Ljava/lang/Object;

    aput-object v0, v4, v18

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->H:Ljava/lang/Object;

    aput-object v0, v4, v19

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->n:Ljava/lang/Object;

    aput-object v0, v4, v20

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->o:Ljava/lang/Object;

    aput-object v0, v4, v21

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->C:Ljava/lang/Object;

    aput-object v0, v4, v22

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->x:Ljava/lang/Object;

    aput-object v0, v4, v23

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->E:Ljava/lang/Object;

    aput-object v0, v4, v24

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->u:Ljava/lang/Object;

    const/16 v2, 0x15

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->B:Ljava/lang/Object;

    const/16 v2, 0x16

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->I:Ljava/lang/Object;

    const/16 v2, 0x17

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->J:Ljava/lang/Object;

    const/16 v2, 0x18

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->K:Ljava/lang/Object;

    aput-object v0, v4, v3

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->L:Ljava/lang/Object;

    const/16 v2, 0x1a

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->M:Ljava/lang/Object;

    const/16 v2, 0x1b

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->N:Ljava/lang/Object;

    const/16 v2, 0x1c

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->O:Ljava/lang/Object;

    const/16 v2, 0x1d

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->P:Ljava/lang/Object;

    const/16 v2, 0x1e

    aput-object v0, v4, v2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->Q:Ljava/lang/Object;

    const/16 v2, 0x1f

    aput-object v0, v4, v2

    aput-object v4, v1, v7

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/b;->b([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/g;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->j:Z

    const-string p1, "Request"

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/g;->b(Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    const-string p1, "Error"

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/g;->b(Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    const-string p1, "AMHTTAG"

    const-string v0, "startBatchCollection"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/g;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->B:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->G:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result v2

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->Q:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRealClickAvailable limit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->H:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xxx"

    invoke-static {v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->H:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result v2

    if-le v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()Lcom/aggmoread/sdk/z/c/a/a/d/b/j;
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->x:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iput v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->c0:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->v:I

    if-le v0, v3, :cond_2

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iput v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v2, v2, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    if-nez v0, :cond_4

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa1be1

    const-string v2, "\u5e7f\u544a\u65e0\u586b\u5145"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$b;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->z:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->r:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "deg "

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;)V

    return v2

    :cond_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "proxy break!"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->G:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result v1

    if-gt v0, v1, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->q:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->H:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->d()I

    move-result v1

    if-le v0, v1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->f0:Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->j:Z

    return v0
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->j:Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/g;->b()V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/g;->b()V

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    :cond_1
    const-string v0, "AMHTTAG"

    const-string v1, "stopBatchCollection"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public k()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMHTTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k:Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/g;->c()V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/g;->c()V

    :cond_1
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->j()V

    :cond_2
    return-void
.end method

.method public l()Z
    .locals 6

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k()V

    return v1

    :cond_0
    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->g:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->g:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->C:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result v0

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->g:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_2

    iget v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", v1 = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",v2 = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->g:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", v3 = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const-string v3, "next "

    invoke-static {v3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v3, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->c0:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->v:I

    if-le v0, v4, :cond_3

    iput-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->A:Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$a;

    invoke-direct {v3, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {v3, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->a(Ljava/lang/Runnable;J)V

    return v2

    :cond_3
    const-string v0, "next end!"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k()V

    return v1
.end method
