.class public final Lcom/byazt/eg/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/eg/ve$c;,
        Lcom/byazt/eg/ve$tt;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/umr/a;

.field public final tt:Lcom/byazt/umr/uj;


# direct methods
.method private c(Lcom/byazt/umr/uj$c;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/umr/uj$c;->ve()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    nop

    .line 7
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/ve;->tt:Lcom/byazt/umr/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/umr/uj;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/ve;->tt:Lcom/byazt/umr/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/umr/uj;->delete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/ve;->tt:Lcom/byazt/umr/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/umr/uj;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public update(Lcom/byazt/eg/h;Lcom/byazt/eg/h;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/eg/ve$tt;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/byazt/eg/ve$tt;-><init>(Lcom/byazt/eg/h;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/byazt/eg/h;->x()Lcom/byazt/eg/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/byazt/eg/ve$c;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/byazt/eg/ve$c;->c:Lcom/byazt/umr/uj$ve;

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/umr/uj$ve;->c()Lcom/byazt/umr/uj$c;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/byazt/eg/ve$tt;->c(Lcom/byazt/umr/uj$c;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/byazt/umr/uj$c;->tt()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :catch_0
    const/4 p1, 0x0

    .line 28
    :catch_1
    invoke-direct {p0, p1}, Lcom/byazt/eg/ve;->c(Lcom/byazt/umr/uj$c;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
