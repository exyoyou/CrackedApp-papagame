.class public Lcom/byazt/ng/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0xf
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public da:J

.field public gr:J

.field public gt:I

.field public gu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public my:J

.field public n:Ljava/lang/String;

.field public nu:Ljava/lang/String;

.field public qy:Ljava/lang/String;

.field public rh:I

.field public rl:I

.field public sl:Ljava/lang/String;

.field public sp:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public yp:Ljava/lang/String;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/ng/uj;->gt:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/ng/uj;->rl:I

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/ng/uj;->gu:Ljava/util/Map;

    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/byazt/ng/uj;->gr:J

    .line 19
    .line 20
    return-void
.end method

.method public static tt()Lcom/byazt/ng/uj;
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/ng/uj;

    invoke-direct {v0}, Lcom/byazt/ng/uj;-><init>()V

    return-object v0
.end method

.method public static ve()Lcom/byazt/ng/uj;
    .locals 3

    .line 4
    new-instance v0, Lcom/byazt/ng/uj;

    invoke-direct {v0}, Lcom/byazt/ng/uj;-><init>()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ng/uj;->ve(J)Lcom/byazt/ng/uj;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/byazt/ng/uj;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ng/uj;->rl:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public c()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/byazt/ng/uj;->gr:J

    return-wide v0
.end method

.method public c(I)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ng/uj;->yp:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Lcom/byazt/ng/uj;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ng/uj;->my:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ng/uj;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ng/uj;->gu:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/byazt/ng/uj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/ng/uj;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/ng/uj;->gu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public da(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(I)Lcom/byazt/ng/uj;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ng/uj;->rh:I

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public setResult(I)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ng/uj;->gt:I

    .line 2
    .line 3
    return-object p0
.end method

.method public sl(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public sp(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->qy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public tt(I)Lcom/byazt/ng/uj;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ng/uj;->z:I

    return-object p0
.end method

.method public tt(J)Lcom/byazt/ng/uj;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ng/uj;->da:J

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->i:Ljava/lang/String;

    return-object p0
.end method

.method public uj(I)Lcom/byazt/ng/uj;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ng/uj;->nu:Ljava/lang/String;

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public ve(I)Lcom/byazt/ng/uj;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ng/uj;->m:Ljava/lang/String;

    return-object p0
.end method

.method public ve(J)Lcom/byazt/ng/uj;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/ng/uj;->gr:J

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->sl:Ljava/lang/String;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/byazt/ng/uj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ng/uj;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
