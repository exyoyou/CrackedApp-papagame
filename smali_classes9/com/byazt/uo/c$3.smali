.class public Lcom/byazt/uo/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pop/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/c;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/uo/c;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/c;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/uo/c$3;->c:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/uo/c$3;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ocd/ve;

    invoke-virtual {v0}, Lcom/byazt/ocd/ve;->c()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/uo/c$3;->c:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/uo/c$3;->tt:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/nt/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/byazt/ocd/ve;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/byazt/ocd/ve;->c(JJLjava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean p5, p0, Lcom/byazt/uo/c$3;->c:Z

    if-eqz p5, :cond_1

    const-wide/16 p5, 0x0

    cmp-long v0, p1, p5

    if-lez v0, :cond_1

    .line 8
    iget-object p5, p0, Lcom/byazt/uo/c$3;->tt:Ljava/lang/String;

    invoke-static {p5, p1, p2, p3, p4}, Lcom/byazt/nt/c;->c(Ljava/lang/String;JJ)V

    :cond_1
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ocd/ve;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ocd/ve;->c(JLjava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/uo/c$3;->c:Z

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/byazt/uo/c$3;->tt:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/nt/c;->tt(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ocd/ve;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ocd/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/uo/c$3;->c:Z

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/byazt/uo/c$3;->tt:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/nt/c;->ve(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Lcom/byazt/ocd/ve;

    .line 23
    .line 24
    move-wide v2, p1

    .line 25
    move-wide v4, p3

    .line 26
    move-object v6, p5

    .line 27
    move-object v7, p6

    .line 28
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/ocd/ve;->tt(JJLjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean p5, p0, Lcom/byazt/uo/c$3;->c:Z

    .line 32
    .line 33
    if-eqz p5, :cond_1

    .line 34
    .line 35
    const-wide/16 p5, 0x0

    .line 36
    .line 37
    cmp-long v0, p1, p5

    .line 38
    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    iget-object p5, p0, Lcom/byazt/uo/c$3;->tt:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p5, p1, p2, p3, p4}, Lcom/byazt/nt/c;->tt(Ljava/lang/String;JJ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public ve(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/uo/c$3;->ve:Lcom/byazt/uo/c;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Lcom/byazt/ocd/ve;

    .line 23
    .line 24
    move-wide v2, p1

    .line 25
    move-wide v4, p3

    .line 26
    move-object v6, p5

    .line 27
    move-object v7, p6

    .line 28
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/ocd/ve;->ve(JJLjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean p5, p0, Lcom/byazt/uo/c$3;->c:Z

    .line 32
    .line 33
    if-eqz p5, :cond_1

    .line 34
    .line 35
    const-wide/16 p5, 0x0

    .line 36
    .line 37
    cmp-long v0, p1, p5

    .line 38
    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    iget-object p5, p0, Lcom/byazt/uo/c$3;->tt:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p5, p1, p2, p3, p4}, Lcom/byazt/nt/c;->ve(Ljava/lang/String;JJ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method
