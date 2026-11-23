.class public final Lcom/byazt/oz/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd5,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/oz/n$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/yj/uj;

.field public c:Lcom/byazt/yj/rh;

.field public i:Lcom/byazt/yj/qp;

.field public n:Lcom/byazt/yj/zb;

.field public sp:Lcom/byazt/yj/d;

.field public tt:Ljava/util/concurrent/ExecutorService;

.field public uj:Lcom/byazt/yj/eo;

.field public ve:Lcom/byazt/yj/n;

.field public x:Lcom/byazt/yj/tt;


# direct methods
.method private constructor <init>(Lcom/byazt/oz/n$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/oz/n$c;->c(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/rh;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/n;->c:Lcom/byazt/yj/rh;

    .line 4
    invoke-static {p1}, Lcom/byazt/oz/n$c;->tt(Lcom/byazt/oz/n$c;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/n;->tt:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-static {p1}, Lcom/byazt/oz/n$c;->ve(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/n;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/n;->ve:Lcom/byazt/yj/n;

    .line 6
    invoke-static {p1}, Lcom/byazt/oz/n$c;->uj(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/eo;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/n;->uj:Lcom/byazt/yj/eo;

    .line 7
    invoke-static {p1}, Lcom/byazt/oz/n$c;->n(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/zb;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/n;->n:Lcom/byazt/yj/zb;

    .line 8
    invoke-static {p1}, Lcom/byazt/oz/n$c;->a(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/uj;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/n;->a:Lcom/byazt/yj/uj;

    .line 9
    invoke-static {p1}, Lcom/byazt/oz/n$c;->sp(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/n;->x:Lcom/byazt/yj/tt;

    .line 10
    invoke-static {p1}, Lcom/byazt/oz/n$c;->x(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/d;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/n;->sp:Lcom/byazt/yj/d;

    .line 11
    invoke-static {p1}, Lcom/byazt/oz/n$c;->i(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/qp;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/oz/n;->i:Lcom/byazt/yj/qp;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/oz/n$c;Lcom/byazt/oz/n$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/oz/n;-><init>(Lcom/byazt/oz/n$c;)V

    return-void
.end method

.method public static da()Lcom/byazt/oz/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/oz/n$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/oz/n$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/oz/n$c;->c()Lcom/byazt/oz/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method


# virtual methods
.method public a()Lcom/byazt/yj/zb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->n:Lcom/byazt/yj/zb;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/byazt/yj/rh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->c:Lcom/byazt/yj/rh;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/byazt/yj/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->x:Lcom/byazt/yj/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/byazt/yj/eo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->uj:Lcom/byazt/yj/eo;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/yj/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->a:Lcom/byazt/yj/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->tt:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/yj/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->ve:Lcom/byazt/yj/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/yj/qp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->i:Lcom/byazt/yj/qp;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lcom/byazt/yj/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/n;->sp:Lcom/byazt/yj/d;

    .line 2
    .line 3
    return-object v0
.end method
