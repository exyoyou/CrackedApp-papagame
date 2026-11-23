.class public Lcom/byazt/eg/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x2fc
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/eg/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/byazt/eg/rh$c;

.field public c:Lcom/byazt/eg/yv;

.field public da:Lcom/byazt/eg/h;

.field public i:Lcom/byazt/eg/h;

.field public n:Lcom/byazt/eg/nu;

.field public sl:J

.field public sp:Lcom/byazt/eg/d;

.field public t:J

.field public tt:Lcom/byazt/eg/gr;

.field public uj:Ljava/lang/String;

.field public ve:I

.field public x:Lcom/byazt/eg/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/byazt/eg/h$c;->ve:I

    .line 3
    new-instance v0, Lcom/byazt/eg/rh$c;

    invoke-direct {v0}, Lcom/byazt/eg/rh$c;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/h$c;->a:Lcom/byazt/eg/rh$c;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/eg/h;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/eg/h$c;->ve:I

    .line 6
    iget-object v0, p1, Lcom/byazt/eg/h;->c:Lcom/byazt/eg/yv;

    iput-object v0, p0, Lcom/byazt/eg/h$c;->c:Lcom/byazt/eg/yv;

    .line 7
    iget-object v0, p1, Lcom/byazt/eg/h;->tt:Lcom/byazt/eg/gr;

    iput-object v0, p0, Lcom/byazt/eg/h$c;->tt:Lcom/byazt/eg/gr;

    .line 8
    iget v0, p1, Lcom/byazt/eg/h;->ve:I

    iput v0, p0, Lcom/byazt/eg/h$c;->ve:I

    .line 9
    iget-object v0, p1, Lcom/byazt/eg/h;->uj:Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eg/h$c;->uj:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/byazt/eg/h;->n:Lcom/byazt/eg/nu;

    iput-object v0, p0, Lcom/byazt/eg/h$c;->n:Lcom/byazt/eg/nu;

    .line 11
    iget-object v0, p1, Lcom/byazt/eg/h;->a:Lcom/byazt/eg/rh;

    invoke-virtual {v0}, Lcom/byazt/eg/rh;->tt()Lcom/byazt/eg/rh$c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/eg/h$c;->a:Lcom/byazt/eg/rh$c;

    .line 12
    iget-object v0, p1, Lcom/byazt/eg/h;->sp:Lcom/byazt/eg/d;

    iput-object v0, p0, Lcom/byazt/eg/h$c;->sp:Lcom/byazt/eg/d;

    .line 13
    iget-object v0, p1, Lcom/byazt/eg/h;->x:Lcom/byazt/eg/h;

    iput-object v0, p0, Lcom/byazt/eg/h$c;->x:Lcom/byazt/eg/h;

    .line 14
    iget-object v0, p1, Lcom/byazt/eg/h;->i:Lcom/byazt/eg/h;

    iput-object v0, p0, Lcom/byazt/eg/h$c;->i:Lcom/byazt/eg/h;

    .line 15
    iget-object v0, p1, Lcom/byazt/eg/h;->da:Lcom/byazt/eg/h;

    iput-object v0, p0, Lcom/byazt/eg/h$c;->da:Lcom/byazt/eg/h;

    .line 16
    iget-wide v0, p1, Lcom/byazt/eg/h;->sl:J

    iput-wide v0, p0, Lcom/byazt/eg/h$c;->sl:J

    .line 17
    iget-wide v0, p1, Lcom/byazt/eg/h;->t:J

    iput-wide v0, p0, Lcom/byazt/eg/h$c;->t:J

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/eg/h;)V
    .locals 1

    .line 11
    iget-object v0, p2, Lcom/byazt/eg/h;->sp:Lcom/byazt/eg/d;

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p2, Lcom/byazt/eg/h;->x:Lcom/byazt/eg/h;

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p2, Lcom/byazt/eg/h;->i:Lcom/byazt/eg/h;

    if-nez v0, :cond_1

    .line 14
    iget-object p2, p2, Lcom/byazt/eg/h;->da:Lcom/byazt/eg/h;

    if-nez p2, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private uj(Lcom/byazt/eg/h;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/byazt/eg/h;->sp:Lcom/byazt/eg/d;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "priorResponse.body != null"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method


# virtual methods
.method public c(I)Lcom/byazt/eg/h$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/eg/h$c;->ve:I

    return-object p0
.end method

.method public c(J)Lcom/byazt/eg/h$c;
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/byazt/eg/h$c;->sl:J

    return-object p0
.end method

.method public c(Lcom/byazt/eg/d;)Lcom/byazt/eg/h$c;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/eg/h$c;->sp:Lcom/byazt/eg/d;

    return-object p0
.end method

.method public c(Lcom/byazt/eg/gr;)Lcom/byazt/eg/h$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/eg/h$c;->tt:Lcom/byazt/eg/gr;

    return-object p0
.end method

.method public c(Lcom/byazt/eg/h;)Lcom/byazt/eg/h$c;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/byazt/eg/h$c;->c(Ljava/lang/String;Lcom/byazt/eg/h;)V

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/byazt/eg/h$c;->x:Lcom/byazt/eg/h;

    return-object p0
.end method

.method public c(Lcom/byazt/eg/nu;)Lcom/byazt/eg/h$c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/eg/h$c;->n:Lcom/byazt/eg/nu;

    return-object p0
.end method

.method public c(Lcom/byazt/eg/rh;)Lcom/byazt/eg/h$c;
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/byazt/eg/rh;->tt()Lcom/byazt/eg/rh$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/eg/h$c;->a:Lcom/byazt/eg/rh$c;

    return-object p0
.end method

.method public c(Lcom/byazt/eg/yv;)Lcom/byazt/eg/h$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eg/h$c;->c:Lcom/byazt/eg/yv;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/eg/h$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/eg/h$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/h$c;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/eg/h$c;->a:Lcom/byazt/eg/rh$c;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/eg/rh$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/rh$c;

    return-object p0
.end method

.method public c()Lcom/byazt/eg/h;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/byazt/eg/h$c;->c:Lcom/byazt/eg/yv;

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/byazt/eg/h$c;->tt:Lcom/byazt/eg/gr;

    if-eqz v0, :cond_2

    .line 22
    iget v0, p0, Lcom/byazt/eg/h$c;->ve:I

    if-ltz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/byazt/eg/h$c;->uj:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/byazt/eg/h;

    invoke-direct {v0, p0}, Lcom/byazt/eg/h;-><init>(Lcom/byazt/eg/h$c;)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/eg/h$c;->ve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tt(J)Lcom/byazt/eg/h$c;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/eg/h$c;->t:J

    return-object p0
.end method

.method public tt(Lcom/byazt/eg/h;)Lcom/byazt/eg/h$c;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/byazt/eg/h$c;->c(Ljava/lang/String;Lcom/byazt/eg/h;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/byazt/eg/h$c;->i:Lcom/byazt/eg/h;

    return-object p0
.end method

.method public ve(Lcom/byazt/eg/h;)Lcom/byazt/eg/h$c;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/eg/h$c;->uj(Lcom/byazt/eg/h;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iput-object p1, p0, Lcom/byazt/eg/h$c;->da:Lcom/byazt/eg/h;

    .line 7
    .line 8
    return-object p0
.end method
