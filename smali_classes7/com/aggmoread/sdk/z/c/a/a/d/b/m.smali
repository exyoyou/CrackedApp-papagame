.class public Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;
    }
.end annotation


# instance fields
.field public a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

.field public b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field public c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->d:I

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->d:I

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/j;->a()I

    move-result v0

    iget-object v1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/c/j;->i:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/c/j;->k:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/c/j;->g:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/j;->a()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->h:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->c:Ljava/lang/Object;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->B:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->g:Ljava/lang/Object;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->e:J

    return-void
.end method

.method public static a()V
    .locals 3

    .line 6
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->c:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->d:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->e:Ljava/lang/Object;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->f:Ljava/lang/Object;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->g:Ljava/lang/Object;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->h:Ljava/lang/Object;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->i:Ljava/lang/Object;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->j:Ljava/lang/Object;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->k:Ljava/lang/Object;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->l:Ljava/lang/Object;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->m:Ljava/lang/Object;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->o:Ljava/lang/Object;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->p:Ljava/lang/Object;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->q:Ljava/lang/Object;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->s:Ljava/lang/Object;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->t:Ljava/lang/Object;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->u:Ljava/lang/Object;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->v:Ljava/lang/Object;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->w:Ljava/lang/Object;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->x:Ljava/lang/Object;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->y:Ljava/lang/Object;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->z:Ljava/lang/Object;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->A:Ljava/lang/Object;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->B:Ljava/lang/Object;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->C:Ljava/lang/Object;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->D:Ljava/lang/Object;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->E:Ljava/lang/Object;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->F:Ljava/lang/Object;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->G:Ljava/lang/Object;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->H:Ljava/lang/Object;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->I:Ljava/lang/Object;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->J:Ljava/lang/Object;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->K:Ljava/lang/Object;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->L:Ljava/lang/Object;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->M:Ljava/lang/Object;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->N:Ljava/lang/Object;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->O:Ljava/lang/Object;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->P:Ljava/lang/Object;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->Q:Ljava/lang/Object;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->R:Ljava/lang/Object;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->S:Ljava/lang/Object;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->T:Ljava/lang/Object;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->U:Ljava/lang/Object;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->V:Ljava/lang/Object;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->W:Ljava/lang/Object;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->X:Ljava/lang/Object;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->Y:Ljava/lang/Object;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->Z:Ljava/lang/Object;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->a0:Ljava/lang/Object;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->b0:Ljava/lang/Object;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->c0:Ljava/lang/Object;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->d0:Ljava/lang/Object;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->r:Ljava/lang/Object;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->f([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->d()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 2
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$a;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->i:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->d0:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->e:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->O()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->m:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->A:Ljava/lang/Object;

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->q:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->l:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->j:Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->k:Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->z:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->y:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->d:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->e:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bu = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->H:Ljava/lang/Object;

    iget v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->d:I

    invoke-virtual {v0, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->k()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->d:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V

    return-void

    :cond_5
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    return-object p0
.end method

.method public a(ILjava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 2

    .line 2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->B:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->G:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 3

    .line 4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/m;"
        }
    .end annotation

    .line 5
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tt"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->h()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->f:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result v1

    const v3, 0x3baa1fc8

    if-eq v3, v1, :cond_2

    const v3, 0x3baa1fc9

    if-eq v3, v1, :cond_2

    const v3, 0x3baa1fca

    if-eq v3, v1, :cond_2

    const v3, 0x3baa1fcb

    if-eq v3, v1, :cond_2

    const v3, 0x3baa1fcc

    if-eq v3, v1, :cond_2

    const v3, 0x3baa17fd

    if-eq v3, v1, :cond_2

    const v3, 0x3baa17fe

    if-eq v3, v1, :cond_2

    const v3, 0x3baa23b4

    if-eq v3, v1, :cond_2

    const v3, 0x3baa23b0

    if-eq v3, v1, :cond_2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->f()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rf : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :cond_3
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$b;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V

    invoke-static {p2, p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-virtual {p1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    const/16 p2, 0x9

    if-eq p1, p2, :cond_5

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->E:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->F:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->C:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->D:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    :goto_1
    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->G:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->H:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->t:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->h()V

    :cond_7
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_2
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z
    .locals 16

    .line 9
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    const/16 v4, 0x9

    aget-object v5, p5, v4

    check-cast v5, [I

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v11

    if-gtz v3, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    iget v12, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;->a:F

    int-to-float v3, v3

    div-float/2addr v12, v3

    :goto_0
    if-gtz v11, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;->b:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v3, v11

    :goto_1
    iget-object v11, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->u:Ljava/lang/Object;

    float-to-double v14, v12

    invoke-virtual {v11, v13, v14, v15}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    iget-object v11, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->v:Ljava/lang/Object;

    float-to-double v14, v3

    invoke-virtual {v11, v13, v14, v15}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    iget-object v11, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->K:Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v11, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->L:Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v11, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->X:Ljava/lang/Object;

    iget v14, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;->a:F

    float-to-int v14, v14

    invoke-virtual {v11, v13, v14}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v11, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->Y:Ljava/lang/Object;

    iget v2, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;->b:F

    float-to-int v2, v2

    invoke-virtual {v11, v13, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_2
    aget-object v2, p5, v7

    check-cast v2, [F

    const-string v11, "xxx"

    if-eqz v2, :cond_3

    iget-object v12, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->u:Ljava/lang/Object;

    aget v14, v2, v9

    float-to-double v14, v14

    invoke-virtual {v12, v13, v14, v15}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    iget-object v12, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->v:Ljava/lang/Object;

    aget v14, v2, v10

    float-to-double v14, v14

    invoke-virtual {v12, v13, v14, v15}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    aget v12, v2, v9

    aget v2, v2, v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "screen strategy dx = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", dy = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "\u672a\u53d6\u5230\u70b9\u51fb\u5750\u6807"

    invoke-static {v11, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v12, -0x40800000    # -1.0f

    :goto_2
    if-eqz v5, :cond_4

    iget-object v11, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v13, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->K:Ljava/lang/Object;

    aget v3, v5, v3

    invoke-virtual {v11, v13, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v3, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v11, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->L:Ljava/lang/Object;

    aget v13, v5, v6

    invoke-virtual {v3, v11, v13}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v3, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v11, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->X:Ljava/lang/Object;

    const/16 v13, 0xe

    aget v13, v5, v13

    invoke-virtual {v3, v11, v13}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v3, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v11, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->Y:Ljava/lang/Object;

    const/16 v13, 0xf

    aget v13, v5, v13

    invoke-virtual {v3, v11, v13}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    :cond_4
    move v3, v2

    :goto_3
    const/16 v2, 0x8

    const/16 v11, 0xa

    const/4 v13, 0x4

    if-eqz v5, :cond_5

    iget-object v14, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v15, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->I:Ljava/lang/Object;

    aget v8, v5, v9

    invoke-virtual {v14, v15, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v8, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v14, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->J:Ljava/lang/Object;

    aget v15, v5, v10

    invoke-virtual {v8, v14, v15}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v8, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v14, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->M:Ljava/lang/Object;

    aget v15, v5, v13

    invoke-virtual {v8, v14, v15}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v8, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v14, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->N:Ljava/lang/Object;

    aget v7, v5, v7

    invoke-virtual {v8, v14, v7}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v7, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v8, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->Q:Ljava/lang/Object;

    aget v14, v5, v2

    invoke-virtual {v7, v8, v14}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v7, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v8, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->R:Ljava/lang/Object;

    aget v4, v5, v4

    invoke-virtual {v7, v8, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->O:Ljava/lang/Object;

    const/4 v8, 0x6

    aget v8, v5, v8

    invoke-virtual {v4, v7, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->P:Ljava/lang/Object;

    const/4 v8, 0x7

    aget v8, v5, v8

    invoke-virtual {v4, v7, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->Z:Ljava/lang/Object;

    const/16 v8, 0x10

    aget v8, v5, v8

    invoke-virtual {v4, v7, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->a0:Ljava/lang/Object;

    const/16 v8, 0x11

    aget v8, v5, v8

    invoke-virtual {v4, v7, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->T:Ljava/lang/Object;

    aget v8, v5, v11

    invoke-virtual {v4, v7, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->U:Ljava/lang/Object;

    const/16 v8, 0xb

    aget v8, v5, v8

    invoke-virtual {v4, v7, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->V:Ljava/lang/Object;

    const/16 v8, 0xc

    aget v8, v5, v8

    invoke-virtual {v4, v7, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->W:Ljava/lang/Object;

    const/16 v8, 0xd

    aget v5, v5, v8

    invoke-virtual {v4, v7, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    :cond_5
    aget-object v2, p5, v2

    check-cast v2, Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->S:Ljava/lang/Object;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4, v5, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Z)V

    aget-object v2, p5, v13

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_5
    const/4 v4, 0x0

    if-ne v2, v6, :cond_8

    aput-object v4, p5, v13

    :cond_8
    iget-object v5, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v6, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->t:Ljava/lang/Object;

    invoke-virtual {v5, v6, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    if-lez v2, :cond_f

    aget-object v2, p5, v10

    check-cast v2, [F

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->w:Ljava/lang/Object;

    aget v6, v2, v9

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    iget-object v3, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->x:Ljava/lang/Object;

    aget v2, v2, v10

    float-to-double v6, v2

    invoke-virtual {v3, v5, v6, v7}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    :cond_9
    iget-object v2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    if-eqz v2, :cond_a

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->m0:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;D)D

    move-result-wide v2

    goto :goto_6

    :cond_a
    move-wide v2, v5

    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dcsr "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->d:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->s:Ljava/lang/Object;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v7, v12, v13}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;D)D

    move-result-wide v7

    cmpl-double v0, v2, v5

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move-wide v2, v7

    :goto_7
    cmpl-double v0, v2, v12

    if-gez v0, :cond_d

    invoke-static {v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/i;->a(D)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v0, 0x1

    :goto_9
    iget-object v2, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    if-eqz v2, :cond_e

    iget-object v3, v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/c/j;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    if-ne v3, v5, :cond_e

    invoke-virtual {v2, v4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a([I)V

    :cond_e
    move v2, v0

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    cmpl-float v2, v12, v0

    if-lez v2, :cond_10

    cmpl-float v0, v3, v0

    if-lez v0, :cond_10

    iget-object v0, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->w:Ljava/lang/Object;

    float-to-double v4, v12

    invoke-virtual {v0, v2, v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    iget-object v0, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->x:Ljava/lang/Object;

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;D)V

    :cond_10
    const/4 v2, 0x1

    :goto_a
    :try_start_0
    aget-object v0, p5, v11

    instance-of v3, v0, Ljava/lang/Integer;

    const/4 v4, -0x1

    if-eqz v3, :cond_11

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b

    :cond_11
    const/4 v0, -0x1

    :goto_b
    if-ne v0, v4, :cond_12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v11

    goto :goto_c

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c t  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v10, :cond_13

    const/4 v9, 0x1

    goto :goto_d

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c t  err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :goto_c
    move v9, v2

    :cond_13
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csr_hit  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->s:Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_14

    iget-object v0, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->E:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;J)V

    :cond_14
    return v9
.end method

.method public b(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 0

    .line 1
    iput p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->d:I

    return-object p0
.end method

.method public b()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c()V

    return-void
.end method

.method public c(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->r:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->e:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->z:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tt"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v2, "err"

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$c;

    invoke-direct {v3, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V

    invoke-static {v2, v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
