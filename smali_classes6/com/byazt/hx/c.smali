.class public final Lcom/byazt/hx/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yx/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2db,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hx/c$a;,
        Lcom/byazt/hx/c$ve;,
        Lcom/byazt/hx/c$n;,
        Lcom/byazt/hx/c$c;,
        Lcom/byazt/hx/c$tt;,
        Lcom/byazt/hx/c$uj;
    }
.end annotation


# instance fields
.field public a:J

.field public final c:Lcom/byazt/eg/gu;

.field public n:I

.field public final tt:Lcom/byazt/iq/sp;

.field public final uj:Lcom/byazt/mk/uj;

.field public final ve:Lcom/byazt/mk/n;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/gu;Lcom/byazt/iq/sp;Lcom/byazt/mk/n;Lcom/byazt/mk/uj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/hx/c;->n:I

    .line 6
    .line 7
    const-wide/32 v0, 0x40000

    .line 8
    .line 9
    .line 10
    iput-wide v0, p0, Lcom/byazt/hx/c;->a:J

    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/hx/c;->c:Lcom/byazt/eg/gu;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/byazt/hx/c;->tt:Lcom/byazt/iq/sp;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/byazt/hx/c;->ve:Lcom/byazt/mk/n;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/byazt/hx/c;->uj:Lcom/byazt/mk/uj;

    .line 19
    .line 20
    return-void
.end method

.method private sp()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hx/c;->ve:Lcom/byazt/mk/n;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/byazt/hx/c;->a:J

    .line 4
    .line 5
    invoke-interface {v0, v1, v2}, Lcom/byazt/mk/n;->n(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, p0, Lcom/byazt/hx/c;->a:J

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    int-to-long v3, v3

    .line 16
    sub-long/2addr v1, v3

    .line 17
    iput-wide v1, p0, Lcom/byazt/hx/c;->a:J

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public a()Lcom/byazt/mk/my;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/byazt/hx/c;->n:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/hx/c;->tt:Lcom/byazt/iq/sp;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    iput v1, p0, Lcom/byazt/hx/c;->n:I

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/iq/sp;->uj()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/byazt/hx/c$a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/byazt/hx/c$a;-><init>(Lcom/byazt/hx/c;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "streamAllocation == null"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "state: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/byazt/hx/c;->n:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public c(Lcom/byazt/eg/h;)Lcom/byazt/eg/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 9
    invoke-virtual {p1, v0}, Lcom/byazt/eg/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/byazt/yx/n;->ve(Lcom/byazt/eg/h;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/byazt/hx/c;->tt(J)Lcom/byazt/mk/my;

    move-result-object p1

    .line 12
    new-instance v3, Lcom/byazt/yx/x;

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/byazt/yx/x;-><init>(Ljava/lang/String;JLcom/byazt/mk/n;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    .line 13
    invoke-virtual {p1, v1}, Lcom/byazt/eg/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/byazt/eg/h;->c()Lcom/byazt/eg/yv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/hx/c;->c(Lcom/byazt/eg/my;)Lcom/byazt/mk/my;

    move-result-object p1

    .line 15
    new-instance v1, Lcom/byazt/yx/x;

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/byazt/yx/x;-><init>(Ljava/lang/String;JLcom/byazt/mk/n;)V

    return-object v1

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/byazt/yx/n;->c(Lcom/byazt/eg/h;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p0, v4, v5}, Lcom/byazt/hx/c;->tt(J)Lcom/byazt/mk/my;

    move-result-object p1

    .line 18
    new-instance v1, Lcom/byazt/yx/x;

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lcom/byazt/yx/x;-><init>(Ljava/lang/String;JLcom/byazt/mk/n;)V

    return-object v1

    .line 19
    :cond_2
    new-instance p1, Lcom/byazt/yx/x;

    invoke-virtual {p0}, Lcom/byazt/hx/c;->a()Lcom/byazt/mk/my;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/byazt/yx/x;-><init>(Ljava/lang/String;JLcom/byazt/mk/n;)V

    return-object p1
.end method

.method public c(Z)Lcom/byazt/eg/h$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget v0, p0, Lcom/byazt/hx/c;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/byazt/hx/c;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/hx/c;->sp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yx/sl;->c(Ljava/lang/String;)Lcom/byazt/yx/sl;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/byazt/eg/h$c;

    invoke-direct {v1}, Lcom/byazt/eg/h$c;-><init>()V

    iget-object v2, v0, Lcom/byazt/yx/sl;->c:Lcom/byazt/eg/gr;

    .line 35
    invoke-virtual {v1, v2}, Lcom/byazt/eg/h$c;->c(Lcom/byazt/eg/gr;)Lcom/byazt/eg/h$c;

    move-result-object v1

    iget v2, v0, Lcom/byazt/yx/sl;->tt:I

    .line 36
    invoke-virtual {v1, v2}, Lcom/byazt/eg/h$c;->c(I)Lcom/byazt/eg/h$c;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/yx/sl;->ve:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v2}, Lcom/byazt/eg/h$c;->c(Ljava/lang/String;)Lcom/byazt/eg/h$c;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/byazt/hx/c;->uj()Lcom/byazt/eg/rh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/eg/h$c;->c(Lcom/byazt/eg/rh;)Lcom/byazt/eg/h$c;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 39
    iget p1, v0, Lcom/byazt/yx/sl;->tt:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x4

    .line 40
    iput p1, p0, Lcom/byazt/hx/c;->n:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected end of stream on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/hx/c;->tt:Lcom/byazt/iq/sp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 43
    throw v0
.end method

.method public c(Lcom/byazt/eg/my;)Lcom/byazt/mk/my;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget v0, p0, Lcom/byazt/hx/c;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 49
    iput v0, p0, Lcom/byazt/hx/c;->n:I

    .line 50
    new-instance v0, Lcom/byazt/hx/c$ve;

    invoke-direct {v0, p0, p1}, Lcom/byazt/hx/c$ve;-><init>(Lcom/byazt/hx/c;Lcom/byazt/eg/my;)V

    return-object v0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/byazt/hx/c;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(J)Lcom/byazt/mk/rh;
    .locals 2

    .line 44
    iget v0, p0, Lcom/byazt/hx/c;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcom/byazt/hx/c;->n:I

    .line 46
    new-instance v0, Lcom/byazt/hx/c$uj;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/hx/c$uj;-><init>(Lcom/byazt/hx/c;J)V

    return-object v0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/byazt/hx/c;->n:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/byazt/eg/yv;J)Lcom/byazt/mk/rh;
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lcom/byazt/eg/yv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/hx/c;->n()Lcom/byazt/mk/rh;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/byazt/hx/c;->c(J)Lcom/byazt/mk/rh;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/byazt/hx/c;->uj:Lcom/byazt/mk/uj;

    invoke-interface {v0}, Lcom/byazt/mk/uj;->flush()V

    return-void
.end method

.method public c(Lcom/byazt/eg/rh;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget v0, p0, Lcom/byazt/hx/c;->n:I

    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/byazt/hx/c;->uj:Lcom/byazt/mk/uj;

    invoke-interface {v0, p2}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    .line 23
    invoke-virtual {p1}, Lcom/byazt/eg/rh;->c()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/byazt/hx/c;->uj:Lcom/byazt/mk/uj;

    invoke-virtual {p1, v1}, Lcom/byazt/eg/rh;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v2

    const-string v3, ": "

    .line 25
    invoke-interface {v2, v3}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v2

    .line 26
    invoke-virtual {p1, v1}, Lcom/byazt/eg/rh;->tt(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    move-result-object v2

    .line 27
    invoke-interface {v2, v0}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/byazt/hx/c;->uj:Lcom/byazt/mk/uj;

    invoke-interface {p1, v0}, Lcom/byazt/mk/uj;->tt(Ljava/lang/String;)Lcom/byazt/mk/uj;

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/byazt/hx/c;->n:I

    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/byazt/hx/c;->n:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/byazt/eg/yv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/hx/c;->tt:Lcom/byazt/iq/sp;

    .line 6
    invoke-virtual {v0}, Lcom/byazt/iq/sp;->tt()Lcom/byazt/iq/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/iq/ve;->c()Lcom/byazt/eg/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->tt()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/byazt/yx/i;->c(Lcom/byazt/eg/yv;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/byazt/eg/yv;->ve()Lcom/byazt/eg/rh;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/byazt/hx/c;->c(Lcom/byazt/eg/rh;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/mk/i;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/byazt/mk/i;->c()Lcom/byazt/mk/gt;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/byazt/mk/gt;->ve:Lcom/byazt/mk/gt;

    invoke-virtual {p1, v1}, Lcom/byazt/mk/i;->c(Lcom/byazt/mk/gt;)Lcom/byazt/mk/i;

    .line 54
    invoke-virtual {v0}, Lcom/byazt/mk/gt;->a()Lcom/byazt/mk/gt;

    .line 55
    invoke-virtual {v0}, Lcom/byazt/mk/gt;->n()Lcom/byazt/mk/gt;

    return-void
.end method

.method public n()Lcom/byazt/mk/rh;
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/hx/c;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/byazt/hx/c;->n:I

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/hx/c$tt;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/byazt/hx/c$tt;-><init>(Lcom/byazt/hx/c;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "state: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/byazt/hx/c;->n:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public tt(J)Lcom/byazt/mk/my;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/byazt/hx/c;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/byazt/hx/c;->n:I

    .line 4
    new-instance v0, Lcom/byazt/hx/c$n;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/hx/c$n;-><init>(Lcom/byazt/hx/c;J)V

    return-object v0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/byazt/hx/c;->n:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tt()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hx/c;->uj:Lcom/byazt/mk/uj;

    invoke-interface {v0}, Lcom/byazt/mk/uj;->flush()V

    return-void
.end method

.method public uj()Lcom/byazt/eg/rh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/eg/rh$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/eg/rh$c;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/byazt/hx/c;->sp()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/rh$c;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/eg/rh$c;->c()Lcom/byazt/eg/rh;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hx/c;->tt:Lcom/byazt/iq/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/iq/sp;->tt()Lcom/byazt/iq/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/iq/ve;->tt()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
