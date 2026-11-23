.class public Lcom/byazt/oz/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd5,
        0x97
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/oz/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->a:Lcom/byazt/yj/uj;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/rh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->c:Lcom/byazt/yj/rh;

    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/qp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->i:Lcom/byazt/yj/qp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/zb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->n:Lcom/byazt/yj/zb;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->x:Lcom/byazt/yj/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/oz/n$c;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->tt:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/eo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->uj:Lcom/byazt/yj/eo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->ve:Lcom/byazt/yj/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/oz/n$c;)Lcom/byazt/yj/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/n$c;->sp:Lcom/byazt/yj/d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/yj/n;)Lcom/byazt/oz/n$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/oz/n$c;->ve:Lcom/byazt/yj/n;

    return-object p0
.end method

.method public c(Lcom/byazt/yj/tt;)Lcom/byazt/oz/n$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/oz/n$c;->x:Lcom/byazt/yj/tt;

    return-object p0
.end method

.method public c(Ljava/util/concurrent/ExecutorService;)Lcom/byazt/oz/n$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/oz/n$c;->tt:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public c()Lcom/byazt/oz/n;
    .locals 2

    .line 5
    new-instance v0, Lcom/byazt/oz/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/oz/n;-><init>(Lcom/byazt/oz/n$c;Lcom/byazt/oz/n$1;)V

    return-object v0
.end method
