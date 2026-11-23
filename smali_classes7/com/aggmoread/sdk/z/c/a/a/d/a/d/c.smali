.class public abstract Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/c/p/d;


# instance fields
.field protected t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected u:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

.field private v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->t:Ljava/util/Map;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    const-string p2, "EXTRA_network_ad_ID"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->t:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->m()V

    return-void
.end method

.method private a(Lcom/aggmoread/sdk/z/c/a/a/d/b/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/a$c<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c$b;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;Lcom/aggmoread/sdk/z/c/a/a/d/b/a$c;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/f;->onAdExposed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->k(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->b(I)V

    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->k(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->b(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/c/p/a;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/c/p/b;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->u:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    return-void
.end method

.method protected b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected b(IILjava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method protected c()Lcom/aggmoread/sdk/z/c/a/a/d/a/c;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->u:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->t:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/b;->onADCloseOverlay()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/b;->onADOpenOverlay()V

    :cond_0
    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getTitle()Ljava/lang/String;
.end method

.method public h()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->t:Ljava/util/Map;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 9

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v3

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v5

    iget-wide v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->l:J

    iget-object v8, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-virtual/range {v3 .. v8}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;J[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;ZZ)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/f;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/f;->a()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    const-string v0, "exposure"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->p()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/b;->onADLeftApplication()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/b;->onRenderFail()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->v:Lcom/aggmoread/sdk/z/c/a/a/c/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/p/b;->onRenderSuccess()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->t:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->t:Ljava/util/Map;

    invoke-static {v2, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->c(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->n:Ljava/lang/Object;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/m$d;->q:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c$a;

    invoke-direct {v1, p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;Lcom/aggmoread/sdk/z/c/a/a/d/b/m;)V

    invoke-direct {p0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/a$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/c;->m()V

    :goto_0
    return-void
.end method
