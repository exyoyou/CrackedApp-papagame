.class public Lcom/aggmoread/sdk/z/c/a/a/d/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/c/h;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/d/b/e$e;,
        Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;,
        Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;
    }
.end annotation


# static fields
.field private static I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:I

.field public C:Lcom/aggmoread/sdk/z/c/a/a/e/r;

.field public D:Lcom/aggmoread/sdk/z/c/a/a/e/r;

.field public E:Lcom/aggmoread/sdk/z/c/a/a/e/r;

.field public F:Lcom/aggmoread/sdk/z/c/a/a/e/r;

.field public G:Lcom/aggmoread/sdk/z/c/a/a/e/r;

.field public H:Lcom/aggmoread/sdk/z/c/a/a/e/r;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/String;

.field public d:Landroid/content/Context;

.field public e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

.field public f:Ljava/lang/String;

.field public g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

.field public h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

.field public i:Ljava/lang/String;

.field public j:Landroid/view/ViewGroup;

.field public k:Landroid/view/View;

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

.field public q:Lcom/aggmoread/sdk/z/c/a/a/c/i;

.field public r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

.field public s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

.field public t:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

.field public u:Lcom/aggmoread/sdk/z/c/a/a/a;

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->I:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2"

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->m:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->n:I

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/c/s/c;->f:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->p:Lcom/aggmoread/sdk/z/c/a/a/c/s/c;

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/c/i;->c:Lcom/aggmoread/sdk/z/c/a/a/c/i;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->q:Lcom/aggmoread/sdk/z/c/a/a/c/i;

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->v:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->x:Ljava/lang/String;

    const-string v1, "-1"

    iput-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->y:Ljava/lang/String;

    iput v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->B:I

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->I:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->I:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->I:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/b;->b()[Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->I:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static i()V
    .locals 9

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->c:Ljava/lang/Object;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->d:Ljava/lang/Object;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->e:Ljava/lang/Object;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->f:Ljava/lang/Object;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->g:Ljava/lang/Object;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->h:Ljava/lang/Object;

    const/4 v8, 0x7

    aput-object v1, v0, v8

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->i:Ljava/lang/Object;

    const/16 v8, 0x8

    aput-object v1, v0, v8

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->j:Ljava/lang/Object;

    const/16 v8, 0x9

    aput-object v1, v0, v8

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->k:Ljava/lang/Object;

    const/16 v8, 0xa

    aput-object v1, v0, v8

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->m:Ljava/lang/Object;

    const/16 v8, 0xb

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->a([Ljava/lang/Object;)V

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->a:Ljava/lang/Object;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->b:Ljava/lang/Object;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->c:Ljava/lang/Object;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->d:Ljava/lang/Object;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->e:Ljava/lang/Object;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->c([Ljava/lang/Object;)V

    new-array v0, v4, [Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->f:Ljava/lang/Object;

    aput-object v7, v1, v2

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->g:Ljava/lang/Object;

    aput-object v7, v1, v3

    aput-object v1, v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->h:Ljava/lang/Object;

    aput-object v7, v1, v2

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->d([Ljava/lang/Object;)V

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$e;->a:Ljava/lang/Object;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$e;->b:Ljava/lang/Object;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$e;->d:Ljava/lang/Object;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$e;->c:Ljava/lang/Object;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->i(Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$e;->e:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->j(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/r$c;->d:Lcom/aggmoread/sdk/z/c/a/a/e/r$c;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/e/r$c;)Lcom/aggmoread/sdk/z/c/a/a/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->C:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/r$c;->e:Lcom/aggmoread/sdk/z/c/a/a/e/r$c;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/e/r$c;)Lcom/aggmoread/sdk/z/c/a/a/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->D:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/r$c;->f:Lcom/aggmoread/sdk/z/c/a/a/e/r$c;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/e/r$c;)Lcom/aggmoread/sdk/z/c/a/a/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->E:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/r$c;->g:Lcom/aggmoread/sdk/z/c/a/a/e/r$c;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/e/r$c;)Lcom/aggmoread/sdk/z/c/a/a/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->F:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-direct {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$c;->d:Ljava/lang/Object;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tt"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$b;

    invoke-direct {v3, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;I)V

    invoke-static {v2, v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V

    :catch_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/r$c;->h:Lcom/aggmoread/sdk/z/c/a/a/e/r$c;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/e/r$c;)Lcom/aggmoread/sdk/z/c/a/a/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->G:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/r$c;->i:Lcom/aggmoread/sdk/z/c/a/a/e/r$c;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/r;->a(Ljava/lang/String;Lcom/aggmoread/sdk/z/c/a/a/e/r$c;)Lcom/aggmoread/sdk/z/c/a/a/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->H:Lcom/aggmoread/sdk/z/c/a/a/e/r;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->y()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a(Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$a;

    invoke-direct {v1, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a(Lcom/aggmoread/sdk/z/c/a/a/e/b$c;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 2

    .line 5
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Z)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Z)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Z)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Z)V"
        }
    .end annotation

    .line 7
    :try_start_0
    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    invoke-direct {v0, p0, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    const/16 p3, 0x8

    invoke-virtual {v0, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(Ljava/util/Map;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->g:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    invoke-interface {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/c/g;->a(Lcom/aggmoread/sdk/z/c/a/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 6

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sspp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMGTAG"

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set saved pint k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  v= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aget v2, p1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aget p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "%d|%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "clear saved point"

    invoke-static {v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->u:Lcom/aggmoread/sdk/z/c/a/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->u:Lcom/aggmoread/sdk/z/c/a/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/aggmoread/sdk/z/c/a/a/a;->a(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",v "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xxx"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloneTmp err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 9

    .line 2
    const-string v0, "\\,"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "\\#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    aget-object v3, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ge v4, v2, :cond_2

    return-void

    :cond_2
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int v6, v4, v3

    add-int/lit8 v7, v6, 0x1

    array-length v8, p1

    if-ge v8, v7, :cond_3

    return-void

    :cond_3
    const/4 v8, 0x3

    add-int/2addr v6, v8

    new-array v6, v6, [I

    aput p2, v6, v1

    aput v4, v6, v5

    aput v3, v6, v2

    :goto_0
    if-ge v5, v7, :cond_5

    aget-object p2, p1, v5

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    if-ge v1, v8, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v5, 0x2

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    aput p2, v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v6}, Lcom/aggmoread/sdk/z/c/a/a/b;->a([I)[B

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "err "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/e/f;

    invoke-direct {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/f;-><init>(Ljava/util/Map;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/c/a/a/c/j;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/c/j;->e:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e$d;->l:Ljava/lang/Object;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/c;->Q()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->b(Ljava/lang/Object;I)V

    :cond_0
    iget-object v0, v1, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a:Ljava/util/Map;

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 4

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTCKt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 4

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTCl_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()[I
    .locals 7

    const-string v0, "get savedpoint"

    const-string v1, "AMGTAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sspp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sspp is"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",y="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    const-string v0, "ss.length < 2"

    goto :goto_0

    :cond_1
    const-string v0, "saved point empty"

    :goto_0
    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3
.end method

.method public g()V
    .locals 4

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTCKt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->b(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;J)V

    return-void
.end method

.method public h()V
    .locals 4

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->a()Lcom/aggmoread/sdk/z/c/a/a/e/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTCl_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/h;->b(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;J)V

    return-void
.end method
