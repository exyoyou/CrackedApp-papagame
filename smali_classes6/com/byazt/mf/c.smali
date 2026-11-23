.class public Lcom/byazt/mf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x989,
        0x14
    }
.end annotation


# static fields
.field public static n:Lcom/byazt/mf/c;


# instance fields
.field public volatile a:Lcom/byazt/mf/n;

.field public volatile c:Lcom/byazt/mf/tt;

.field public volatile tt:Lcom/byazt/mf/uj;

.field public volatile uj:Lcom/byazt/yj/qy;

.field public volatile ve:Lcom/byazt/mf/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/mf/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/mf/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/mf/c;->n:Lcom/byazt/mf/c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/mf/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/mf/c;->n:Lcom/byazt/mf/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/byazt/mf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mf/c;->a:Lcom/byazt/mf/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/byazt/mf/n;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/mf/c;->a:Lcom/byazt/mf/n;

    return-void
.end method

.method public c(Lcom/byazt/mf/tt;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/mf/c;->c:Lcom/byazt/mf/tt;

    return-void
.end method

.method public c(Lcom/byazt/mf/uj;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/mf/c;->tt:Lcom/byazt/mf/uj;

    return-void
.end method

.method public c(Lcom/byazt/mf/ve;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/mf/c;->ve:Lcom/byazt/mf/ve;

    return-void
.end method

.method public c(Lcom/byazt/yj/qy;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/mf/c;->uj:Lcom/byazt/yj/qy;

    return-void
.end method

.method public n()Lcom/byazt/yj/qy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mf/c;->uj:Lcom/byazt/yj/qy;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/mf/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mf/c;->c:Lcom/byazt/mf/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/mf/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mf/c;->tt:Lcom/byazt/mf/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/mf/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mf/c;->ve:Lcom/byazt/mf/ve;

    .line 2
    .line 3
    return-object v0
.end method
