.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public g:Ljava/lang/String;

.field public h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

.field public i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

.field public j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

.field public k:I

.field public l:J

.field public m:Z

.field public n:Z

.field public o:[Ljava/lang/Object;

.field public p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;",
            ">;"
        }
    .end annotation
.end field

.field protected q:I

.field protected r:Ljava/lang/String;

.field protected s:I


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->k:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->m:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->n:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->p:Ljava/lang/ref/WeakReference;

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->q:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->s:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/b;->b()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 1

    .line 1
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    iget p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->q:I

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    iget p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->s:I

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->r:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(ILjava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    return-object v0
.end method

.method public a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    if-eqz p1, :cond_2

    const-string v0, "ext.AD_BU"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->q:I

    :cond_0
    const-string v0, "ext.AD_AID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->s:I

    :cond_1
    const-string v0, "EXTRA_network_placementId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->r:Ljava/lang/String;

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "b =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->q:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", a = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->s:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", s = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    if-nez v1, :cond_0

    const-string v1, "unknown"

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->m:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "{id=%s, placementId=%s, clicks=%s, extime=%s, exposured=%s, showInvoke=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
