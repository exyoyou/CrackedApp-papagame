.class public final Lcom/byazt/eg/gu$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x269
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/eg/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/gt;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/byazt/eg/yp;

.field public d:Ljava/util/concurrent/TimeUnit;

.field public da:Lcom/byazt/eg/ve;

.field public eo:Ljava/util/concurrent/TimeUnit;

.field public gr:I

.field public gt:Lcom/byazt/eg/z;

.field public gu:Z

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/eg/u;

.field public m:Lcom/byazt/eg/sp;

.field public md:Landroid/os/Bundle;

.field public my:Lcom/byazt/eg/da;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/gt;",
            ">;"
        }
    .end annotation
.end field

.field public nu:Lcom/byazt/eg/tt;

.field public p:I

.field public qy:Z

.field public rh:Lcom/byazt/eg/tt;

.field public rl:Z

.field public sl:Lcom/byazt/umr/a;

.field public sp:Lcom/byazt/eg/m$c;

.field public t:Ljavax/net/SocketFactory;

.field public tt:Ljava/net/Proxy;

.field public u:Ljavax/net/ssl/SSLSocketFactory;

.field public uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/sl;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/gr;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/net/ProxySelector;

.field public yp:Lcom/byazt/wt/ve;

.field public yv:I

.field public z:Ljavax/net/ssl/HostnameVerifier;

.field public zb:Ljava/util/concurrent/TimeUnit;

.field public zm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/eg/gu$c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/gu$c;->n:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/gu$c;->a:Ljava/util/List;

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/byazt/eg/gu$c;->d:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object v0, p0, Lcom/byazt/eg/gu$c;->eo:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object v0, p0, Lcom/byazt/eg/gu$c;->zb:Ljava/util/concurrent/TimeUnit;

    .line 8
    new-instance v0, Lcom/byazt/eg/yp;

    invoke-direct {v0, p1}, Lcom/byazt/eg/yp;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/eg/gu$c;->c:Lcom/byazt/eg/yp;

    .line 9
    sget-object p1, Lcom/byazt/eg/gu;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->ve:Ljava/util/List;

    .line 10
    sget-object p1, Lcom/byazt/eg/gu;->tt:Ljava/util/List;

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->uj:Ljava/util/List;

    .line 11
    sget-object p1, Lcom/byazt/eg/m;->c:Lcom/byazt/eg/m;

    invoke-static {p1}, Lcom/byazt/eg/m;->c(Lcom/byazt/eg/m;)Lcom/byazt/eg/m$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->sp:Lcom/byazt/eg/m$c;

    .line 12
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->x:Ljava/net/ProxySelector;

    .line 13
    sget-object p1, Lcom/byazt/eg/u;->c:Lcom/byazt/eg/u;

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->i:Lcom/byazt/eg/u;

    .line 14
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->t:Ljavax/net/SocketFactory;

    .line 15
    sget-object p1, Lcom/byazt/wt/n;->c:Lcom/byazt/wt/n;

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->z:Ljavax/net/ssl/HostnameVerifier;

    .line 16
    sget-object p1, Lcom/byazt/eg/sp;->c:Lcom/byazt/eg/sp;

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->m:Lcom/byazt/eg/sp;

    .line 17
    sget-object p1, Lcom/byazt/eg/tt;->c:Lcom/byazt/eg/tt;

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->nu:Lcom/byazt/eg/tt;

    .line 18
    iput-object p1, p0, Lcom/byazt/eg/gu$c;->rh:Lcom/byazt/eg/tt;

    .line 19
    new-instance p1, Lcom/byazt/eg/da;

    invoke-direct {p1}, Lcom/byazt/eg/da;-><init>()V

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->my:Lcom/byazt/eg/da;

    .line 20
    sget-object p1, Lcom/byazt/eg/z;->c:Lcom/byazt/eg/z;

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->gt:Lcom/byazt/eg/z;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/byazt/eg/gu$c;->rl:Z

    .line 22
    iput-boolean p1, p0, Lcom/byazt/eg/gu$c;->qy:Z

    .line 23
    iput-boolean p1, p0, Lcom/byazt/eg/gu$c;->gu:Z

    const/16 p1, 0x2710

    .line 24
    iput p1, p0, Lcom/byazt/eg/gu$c;->gr:I

    .line 25
    iput p1, p0, Lcom/byazt/eg/gu$c;->zm:I

    .line 26
    iput p1, p0, Lcom/byazt/eg/gu$c;->yv:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/byazt/eg/gu$c;->p:I

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/eg/gt;)Lcom/byazt/eg/gu$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/gu$c;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/byazt/eg/m;)Lcom/byazt/eg/gu$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/byazt/eg/m;->c(Lcom/byazt/eg/m;)Lcom/byazt/eg/m$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/eg/gu$c;->sp:Lcom/byazt/eg/m$c;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/byazt/eg/gu;
    .locals 1

    .line 5
    new-instance v0, Lcom/byazt/eg/gu;

    invoke-direct {v0, p0}, Lcom/byazt/eg/gu;-><init>(Lcom/byazt/eg/gu$c;)V

    return-object v0
.end method
