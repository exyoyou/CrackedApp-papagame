.class public Lcom/byazt/oz/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd5,
        0x22
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/yj/n;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/oz/ve;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/yj/d;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/yj/uj;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Lcom/byazt/yj/rh;

.field public final tt:Lcom/byazt/yj/my;

.field public uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/yj/zb;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/yj/eo;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/yj/my;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/oz/a;->c:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/oz/a;->ve:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/oz/a;->uj:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/oz/a;->n:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/byazt/oz/x;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/byazt/yj/my;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-interface {p2}, Lcom/byazt/yj/my;->i()Lcom/byazt/yj/tt;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p1, p2}, Lcom/byazt/ep/c;->c(Landroid/content/Context;Lcom/byazt/yj/tt;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private a(Lcom/byazt/yj/tt;)Lcom/byazt/yj/uj;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    invoke-interface {v0}, Lcom/byazt/yj/my;->sp()Lcom/byazt/yj/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/ss/tt;

    invoke-interface {p1}, Lcom/byazt/yj/tt;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Lcom/byazt/yj/tt;->getFileCacheSize()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/byazt/oz/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/byazt/ss/tt;-><init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private da()Lcom/byazt/yj/rh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yj/my;->c()Lcom/byazt/yj/rh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/sb/tt;->c()Lcom/byazt/yj/rh;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private i()Lcom/byazt/yj/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yj/my;->uj()Lcom/byazt/yj/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/rc/tt;->c()Lcom/byazt/yj/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0
.end method

.method private n(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    invoke-interface {v0}, Lcom/byazt/yj/my;->a()Lcom/byazt/yj/zb;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/byazt/yj/tt;->getRawMemoryCacheSize()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/bl/n;->c(I)Lcom/byazt/yj/zb;

    move-result-object p1

    return-object p1
.end method

.method private sl()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yj/my;->tt()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/sb/ve;->c()Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private t()Lcom/byazt/yj/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yj/my;->x()Lcom/byazt/yj/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/oz/sp;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/byazt/oz/sp;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method private uj(Lcom/byazt/yj/tt;)Lcom/byazt/yj/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    invoke-interface {v0}, Lcom/byazt/yj/my;->n()Lcom/byazt/yj/eo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/byazt/bl/c;->c(Lcom/byazt/yj/eo;)Lcom/byazt/yj/eo;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/byazt/yj/tt;->getMemoryCacheSize()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/bl/c;->c(I)Lcom/byazt/yj/eo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/oz/a;->tt:Lcom/byazt/yj/my;

    invoke-interface {v0}, Lcom/byazt/yj/my;->ve()Lcom/byazt/yj/qp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/yj/qp;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/oz/a;->x:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/byazt/oz/a;->sl()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/a;->x:Ljava/util/concurrent/ExecutorService;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/oz/a;->x:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)Lcom/byazt/ib/c;
    .locals 8

    .line 9
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    sget-object v0, Lcom/byazt/ib/c;->c:Landroid/widget/ImageView$ScaleType;

    :cond_0
    move-object v4, v0

    .line 11
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->uj()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/byazt/ib/c;->tt:Landroid/graphics/Bitmap$Config;

    :cond_1
    move-object v5, v0

    .line 13
    new-instance v0, Lcom/byazt/ib/c;

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->c()I

    move-result v6

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->tt()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ib/c;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    return-object v0
.end method

.method public c(Lcom/byazt/yj/tt;)Lcom/byazt/yj/eo;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/ep/c;->c()Lcom/byazt/yj/tt;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/byazt/yj/tt;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/oz/a;->ve:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yj/eo;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/oz/a;->uj(Lcom/byazt/yj/tt;)Lcom/byazt/yj/eo;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/byazt/oz/a;->ve:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/yj/uj;
    .locals 1

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/ep/c;->c(Ljava/io/File;)Lcom/byazt/yj/tt;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/oz/a;->ve(Lcom/byazt/yj/tt;)Lcom/byazt/yj/uj;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/byazt/yj/eo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->ve:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/byazt/yj/rh;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/oz/a;->sp:Lcom/byazt/yj/rh;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/byazt/oz/a;->da()Lcom/byazt/yj/rh;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/a;->sp:Lcom/byazt/yj/rh;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/oz/a;->sp:Lcom/byazt/yj/rh;

    return-object v0
.end method

.method public sp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/oz/ve;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/ep/c;->c()Lcom/byazt/yj/tt;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/byazt/yj/tt;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/oz/a;->uj:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yj/zb;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/oz/a;->n(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/byazt/oz/a;->uj:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public tt()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/byazt/yj/zb;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->uj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public uj()Lcom/byazt/yj/n;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/oz/a;->a:Lcom/byazt/yj/n;

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/byazt/oz/a;->i()Lcom/byazt/yj/n;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/a;->a:Lcom/byazt/yj/n;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/oz/a;->a:Lcom/byazt/yj/n;

    return-object v0
.end method

.method public ve(Lcom/byazt/yj/tt;)Lcom/byazt/yj/uj;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/ep/c;->c()Lcom/byazt/yj/tt;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/byazt/yj/tt;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/oz/a;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yj/uj;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/oz/a;->a(Lcom/byazt/yj/tt;)Lcom/byazt/yj/uj;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/byazt/oz/a;->n:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public ve()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/byazt/yj/uj;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/byazt/yj/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/a;->i:Lcom/byazt/yj/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/oz/a;->t()Lcom/byazt/yj/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/oz/a;->i:Lcom/byazt/yj/d;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/oz/a;->i:Lcom/byazt/yj/d;

    .line 12
    .line 13
    return-object v0
.end method
