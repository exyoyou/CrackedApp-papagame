.class public final Lcom/byazt/btt/ve$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/da$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x828,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/btt/ve;->uj(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fk/da$c;

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic uj:Lcom/byazt/jzl/a;

.field public final synthetic ve:J


# direct methods
.method public constructor <init>(Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;JLcom/byazt/jzl/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/btt/ve$3;->c:Lcom/byazt/fk/da$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/btt/ve$3;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/btt/ve$3;->ve:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/btt/ve$3;->uj:Lcom/byazt/jzl/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public cancel(Lcom/byazt/fk/u;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/btt/ve$3;->c:Lcom/byazt/fk/da$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/fk/da$c;->onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/btt/ve$3;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/byazt/btt/ve$3;->uj:Lcom/byazt/jzl/a;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 p1, 0x2

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    const-string v0, "pit cancel: "

    .line 22
    .line 23
    aput-object v0, p1, p2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/byazt/btt/ve$3;->uj:Lcom/byazt/jzl/a;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object p2, p1, v0

    .line 33
    .line 34
    const-string p2, "VideoPreloadUtils"

    .line 35
    .line 36
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onVideoPreloadFail(Lcom/byazt/fk/u;ILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/btt/ve$3;->c:Lcom/byazt/fk/da$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/fk/da$c;->onVideoPreloadFail(Lcom/byazt/fk/u;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/btt/ve$3;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/byazt/btt/ve$3;->ve:J

    .line 17
    .line 18
    sub-long v6, v0, v2

    .line 19
    .line 20
    iget-object v4, p0, Lcom/byazt/btt/ve$3;->uj:Lcom/byazt/jzl/a;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/byazt/btt/ve$3;->tt:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    move v8, p2

    .line 25
    move-object v9, p3

    .line 26
    invoke-static/range {v4 .. v9}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;JILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/4 p1, 0x2

    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    const-string p3, "pit onVideoPreloadFail: "

    .line 34
    .line 35
    aput-object p3, p1, p2

    .line 36
    .line 37
    iget-object p2, p0, Lcom/byazt/btt/ve$3;->uj:Lcom/byazt/jzl/a;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const/4 p3, 0x1

    .line 44
    aput-object p2, p1, p3

    .line 45
    .line 46
    const-string p2, "VideoPreloadUtils"

    .line 47
    .line 48
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/btt/ve$3;->c:Lcom/byazt/fk/da$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/fk/da$c;->onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/btt/ve$3;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iget-wide v0, p0, Lcom/byazt/btt/ve$3;->ve:J

    .line 17
    .line 18
    sub-long/2addr p1, v0

    .line 19
    iget-object v0, p0, Lcom/byazt/btt/ve$3;->uj:Lcom/byazt/jzl/a;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/btt/ve$3;->tt:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-static {v0, v1, p1, p2}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;J)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 p1, 0x2

    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    const-string v0, "pit onVideoPreloadSuccess: "

    .line 31
    .line 32
    aput-object v0, p1, p2

    .line 33
    .line 34
    iget-object p2, p0, Lcom/byazt/btt/ve$3;->uj:Lcom/byazt/jzl/a;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const/4 v0, 0x1

    .line 41
    aput-object p2, p1, v0

    .line 42
    .line 43
    const-string p2, "VideoPreloadUtils"

    .line 44
    .line 45
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
