.class public abstract Lcom/byazt/hx/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/mk/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2db,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hx/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/byazt/mk/i;

.field public tt:Z

.field public final synthetic uj:Lcom/byazt/hx/c;

.field public ve:J


# direct methods
.method private constructor <init>(Lcom/byazt/hx/c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/byazt/hx/c$c;->uj:Lcom/byazt/hx/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/byazt/mk/i;

    iget-object p1, p1, Lcom/byazt/hx/c;->ve:Lcom/byazt/mk/n;

    invoke-interface {p1}, Lcom/byazt/mk/my;->c()Lcom/byazt/mk/gt;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/byazt/mk/i;-><init>(Lcom/byazt/mk/gt;)V

    iput-object v0, p0, Lcom/byazt/hx/c$c;->c:Lcom/byazt/mk/i;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/byazt/hx/c$c;->ve:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/hx/c;Lcom/byazt/hx/c$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/hx/c$c;-><init>(Lcom/byazt/hx/c;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/mk/ve;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/hx/c$c;->uj:Lcom/byazt/hx/c;

    iget-object v0, v0, Lcom/byazt/hx/c;->ve:Lcom/byazt/mk/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/byazt/hx/c$c;->ve:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/byazt/hx/c$c;->ve:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/byazt/hx/c$c;->c(ZLjava/io/IOException;)V

    .line 5
    throw p1
.end method

.method public c()Lcom/byazt/mk/gt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hx/c$c;->c:Lcom/byazt/mk/i;

    return-object v0
.end method

.method public final c(ZLjava/io/IOException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/hx/c$c;->uj:Lcom/byazt/hx/c;

    iget v1, v0, Lcom/byazt/hx/c;->n:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 7
    iget-object v1, p0, Lcom/byazt/hx/c$c;->c:Lcom/byazt/mk/i;

    invoke-virtual {v0, v1}, Lcom/byazt/hx/c;->c(Lcom/byazt/mk/i;)V

    .line 8
    iget-object v5, p0, Lcom/byazt/hx/c$c;->uj:Lcom/byazt/hx/c;

    iput v2, v5, Lcom/byazt/hx/c;->n:I

    .line 9
    iget-object v3, v5, Lcom/byazt/hx/c;->tt:Lcom/byazt/iq/sp;

    if-eqz v3, :cond_1

    xor-int/lit8 v4, p1, 0x1

    .line 10
    iget-wide v6, p0, Lcom/byazt/hx/c$c;->ve:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/byazt/iq/sp;->c(ZLcom/byazt/yx/ve;JLjava/io/IOException;)V

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/byazt/hx/c$c;->uj:Lcom/byazt/hx/c;

    iget v0, v0, Lcom/byazt/hx/c;->n:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
