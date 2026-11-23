.class public Lcom/byazt/z/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0x2e
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public aw:Lcom/byazt/c/gr;

.field public b:J

.field public bm:Lcom/byazt/c/IDownloadFileUriProvider;

.field public bx:I

.field public c:Landroid/app/Activity;

.field public cu:Z

.field public d:Z

.field public da:Z

.field public eo:Ljava/lang/String;

.field public gr:Ljava/lang/String;

.field public gt:Lcom/byazt/zz/my;

.field public gu:Z

.field public h:I

.field public hd:Lcom/byazt/s/a;

.field public i:Z

.field public ic:Lcom/byazt/c/yp;

.field public kk:Z

.field public kp:I

.field public l:Z

.field public lo:Lcom/byazt/c/eo;

.field public lr:Lcom/byazt/c/rh;

.field public lt:Lorg/json/JSONObject;

.field public m:Ljava/lang/String;

.field public md:I

.field public my:Lcom/byazt/zz/x;

.field public n:Ljava/lang/String;

.field public nb:Lcom/byazt/ev/EnqueueType;

.field public nu:Z

.field public or:Z

.field public os:Z

.field public oz:Ljava/lang/String;

.field public p:Z

.field public pf:I

.field public pu:Z

.field public q:I

.field public qp:Z

.field public qy:Z

.field public r:[I

.field public rh:Lcom/byazt/zz/sp;

.field public rl:Lcom/byazt/n/c;

.field public sl:Z

.field public sp:Ljava/lang/String;

.field public sv:Z

.field public t:Z

.field public tk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;"
        }
    .end annotation
.end field

.field public to:Ljava/lang/String;

.field public tt:Landroid/content/Context;

.field public tx:Z

.field public u:Lcom/byazt/c/IDownloadListener;

.field public uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Lcom/byazt/c/IDownloadListener;

.field public yv:J

.field public z:Ljava/lang/String;

.field public zb:Z

.field public zm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
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
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/z/n;->i:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/byazt/z/n;->da:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/byazt/z/n;->sl:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/byazt/z/n;->t:Z

    .line 13
    .line 14
    const-string v1, "application/vnd.android.package-archive"

    .line 15
    .line 16
    iput-object v1, p0, Lcom/byazt/z/n;->m:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    iput v1, p0, Lcom/byazt/z/n;->md:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/byazt/z/n;->zb:Z

    .line 22
    .line 23
    sget-object v1, Lcom/byazt/ev/EnqueueType;->ENQUEUE_NONE:Lcom/byazt/ev/EnqueueType;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/byazt/z/n;->nb:Lcom/byazt/ev/EnqueueType;

    .line 26
    .line 27
    const/16 v1, 0x96

    .line 28
    .line 29
    iput v1, p0, Lcom/byazt/z/n;->pf:I

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/byazt/z/n;->sv:Z

    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/byazt/z/n;->tk:Ljava/util/List;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/byazt/z/n;->tx:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/byazt/z/n;->os:Z

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/byazt/z/n;->tt:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/byazt/z/n;->ve:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public a(I)Lcom/byazt/z/n;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/z/n;->kp:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/z/n;->m:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/z/n;->gu:Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->da:Z

    return v0
.end method

.method public aw()Lcom/byazt/c/yp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->ic:Lcom/byazt/c/yp;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->kk:Z

    .line 2
    .line 3
    return v0
.end method

.method public bm()Lcom/byazt/c/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->lo:Lcom/byazt/c/eo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(J)Lcom/byazt/z/n;
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/byazt/z/n;->yv:J

    return-object p0
.end method

.method public c(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/z/n;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/z/n;->bm:Lcom/byazt/c/IDownloadFileUriProvider;

    return-object p0
.end method

.method public c(Lcom/byazt/c/IDownloadListener;)Lcom/byazt/z/n;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/z/n;->u:Lcom/byazt/c/IDownloadListener;

    return-object p0
.end method

.method public c(Lcom/byazt/c/rh;)Lcom/byazt/z/n;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/z/n;->lr:Lcom/byazt/c/rh;

    return-object p0
.end method

.method public c(Lcom/byazt/c/u;)Lcom/byazt/z/n;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/byazt/z/n;->tk:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/byazt/z/n;->tk:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/byazt/z/n;->tk:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    monitor-exit v0

    return-object p0

    .line 16
    :cond_1
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/ev/EnqueueType;)Lcom/byazt/z/n;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/z/n;->nb:Lcom/byazt/ev/EnqueueType;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/z/n;->n:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/byazt/z/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)",
            "Lcom/byazt/z/n;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/byazt/z/n;->x:Ljava/util/List;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/z/n;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/z/n;->lt:Lorg/json/JSONObject;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/z/n;
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/z/n;->i:Z

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/z/n;->q:I

    return-void
.end method

.method public cu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->sv:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/z/n;->pf:I

    .line 2
    .line 3
    return v0
.end method

.method public da()Lcom/byazt/c/IDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->yp:Lcom/byazt/c/IDownloadListener;

    return-object v0
.end method

.method public da(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/z/n;->oz:Ljava/lang/String;

    return-object p0
.end method

.method public da(Z)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/z/n;->or:Z

    return-object p0
.end method

.method public eo()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/z/n;->bx:I

    .line 2
    .line 3
    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->c:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/z/n;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public gt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->gr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public gu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/z/n;->md:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Lcom/byazt/zz/my;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->gt:Lcom/byazt/zz/my;

    .line 2
    .line 3
    return-object v0
.end method

.method public hd()Lcom/byazt/c/IDownloadFileUriProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->bm:Lcom/byazt/c/IDownloadFileUriProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/byazt/c/IDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->u:Lcom/byazt/c/IDownloadListener;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/z/n;->eo:Ljava/lang/String;

    return-object p0
.end method

.method public i(Z)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/z/n;->zb:Z

    return-object p0
.end method

.method public ic()Lcom/byazt/s/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->hd:Lcom/byazt/s/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->to:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public kp()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->r:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public lo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->pu:Z

    .line 2
    .line 3
    return v0
.end method

.method public lr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/c/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->tk:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public lt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/z/n;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m(Z)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/z/n;->tx:Z

    return-object p0
.end method

.method public m()Lcom/byazt/zz/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->rh:Lcom/byazt/zz/sp;

    return-object v0
.end method

.method public md()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->or:Z

    .line 2
    .line 3
    return v0
.end method

.method public my()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/z/n;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public n(I)Lcom/byazt/z/n;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/z/n;->bx:I

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/z/n;->z:Ljava/lang/String;

    return-object p0
.end method

.method public n(Z)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/z/n;->qy:Z

    return-object p0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->i:Z

    return v0
.end method

.method public nb()Lcom/byazt/ev/EnqueueType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->nb:Lcom/byazt/ev/EnqueueType;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->qy:Z

    .line 2
    .line 3
    return v0
.end method

.method public or()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->qp:Z

    .line 2
    .line 3
    return v0
.end method

.method public os()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->lt:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->zb:Z

    .line 2
    .line 3
    return v0
.end method

.method public pf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public pu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/z/n;->kp:I

    .line 2
    .line 3
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->tx:Z

    .line 2
    .line 3
    return v0
.end method

.method public qp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public qy()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/z/n;->yv:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public rh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->gu:Z

    .line 2
    .line 3
    return v0
.end method

.method public rl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->zm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/z/n;->to:Ljava/lang/String;

    return-object p0
.end method

.method public sl(Z)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/z/n;->cu:Z

    return-object p0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->z:Ljava/lang/String;

    return-object v0
.end method

.method public sp(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/z/n;->gr:Ljava/lang/String;

    return-object p0
.end method

.method public sp(Z)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/z/n;->d:Z

    return-object p0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->sl:Z

    return v0
.end method

.method public sv()Lcom/byazt/c/gr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->aw:Lcom/byazt/c/gr;

    .line 2
    .line 3
    return-object v0
.end method

.method public t(Z)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/z/n;->qp:Z

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->m:Ljava/lang/String;

    return-object v0
.end method

.method public tk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->oz:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public to()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->os:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt(I)Lcom/byazt/z/n;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/z/n;->md:I

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/z/n;->a:Ljava/lang/String;

    return-object p0
.end method

.method public tt(Ljava/util/List;)Lcom/byazt/z/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/z/n;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/byazt/z/n;->uj:Ljava/util/List;

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/z/n;->da:Z

    return-object p0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->n:Ljava/lang/String;

    return-object v0
.end method

.method public tx()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->uj:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public u(Z)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/z/n;->sv:Z

    return-object p0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->nu:Z

    return v0
.end method

.method public uj(I)Lcom/byazt/z/n;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/z/n;->pf:I

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/z/n;->v:Ljava/lang/String;

    return-object p0
.end method

.method public uj(Z)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/z/n;->nu:Z

    return-object p0
.end method

.method public uj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->x:Ljava/util/List;

    return-object v0
.end method

.method public v()Lcom/byazt/c/rh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->lr:Lcom/byazt/c/rh;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve(I)Lcom/byazt/z/n;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/z/n;->h:I

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/byazt/z/n;->sp:Ljava/lang/String;

    return-object p0
.end method

.method public ve(Z)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/z/n;->t:Z

    return-object p0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/z/n;->zm:Ljava/lang/String;

    return-object p0
.end method

.method public x(Z)Lcom/byazt/z/n;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/z/n;->l:Z

    return-object p0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->t:Z

    return v0
.end method

.method public yp()Lcom/byazt/n/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->rl:Lcom/byazt/n/c;

    return-object v0
.end method

.method public yp(Z)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/z/n;->p:Z

    return-object p0
.end method

.method public yv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->eo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z(Z)Lcom/byazt/z/n;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/z/n;->kk:Z

    return-object p0
.end method

.method public z()Lcom/byazt/zz/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/z/n;->my:Lcom/byazt/zz/x;

    return-object v0
.end method

.method public zb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->cu:Z

    .line 2
    .line 3
    return v0
.end method

.method public zm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/z/n;->d:Z

    .line 2
    .line 3
    return v0
.end method
