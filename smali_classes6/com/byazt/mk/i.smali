.class public Lcom/byazt/mk/i;
.super Lcom/byazt/mk/gt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x287,
        0x2a
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/mk/gt;


# direct methods
.method public constructor <init>(Lcom/byazt/mk/gt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/mk/gt;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "delegate == null"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public a()Lcom/byazt/mk/gt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/mk/gt;->a()Lcom/byazt/mk/gt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Lcom/byazt/mk/gt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    return-object v0
.end method

.method public c(J)Lcom/byazt/mk/gt;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/mk/gt;->c(J)Lcom/byazt/mk/gt;

    move-result-object p1

    return-object p1
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/mk/gt;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/byazt/mk/gt;)Lcom/byazt/mk/i;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()Lcom/byazt/mk/gt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/mk/gt;->n()Lcom/byazt/mk/gt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public n_()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/mk/gt;->n_()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public o_()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/mk/gt;->o_()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public sp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/mk/gt;->sp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/i;->c:Lcom/byazt/mk/gt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/mk/gt;->ve()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
