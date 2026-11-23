.class public Lcom/byazt/iox/uj$1;
.super Lcom/byazt/ols/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c3,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iox/uj;->c(Lcom/byazt/jzl/a;Lcom/byazt/im/tt;Lcom/byazt/ete/ic;Lcom/byazt/gat/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gat/ve;

.field public final synthetic tt:Lcom/byazt/im/tt;

.field public final synthetic ve:Lcom/byazt/iox/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/iox/uj;Lcom/byazt/gat/ve;Lcom/byazt/im/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iox/uj$1;->ve:Lcom/byazt/iox/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iox/uj$1;->c:Lcom/byazt/gat/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iox/uj$1;->tt:Lcom/byazt/im/tt;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/ols/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onVideoPreloadFail(Lcom/byazt/fk/u;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/iox/uj$1;->c:Lcom/byazt/gat/ve;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/byazt/iox/uj$1;->ve:Lcom/byazt/iox/uj;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/byazt/iox/uj;->c(Lcom/byazt/iox/uj;)Lcom/byazt/im/sp;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2}, Lcom/byazt/im/sp;->tt(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/iox/uj$1;->ve:Lcom/byazt/iox/uj;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/byazt/iox/uj;->c(Lcom/byazt/iox/uj;)Lcom/byazt/im/sp;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "preload video fail"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/byazt/iox/uj$1;->c:Lcom/byazt/gat/ve;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/byazt/iox/uj$1;->ve:Lcom/byazt/iox/uj;

    .line 29
    .line 30
    invoke-static {p2}, Lcom/byazt/iox/uj;->c(Lcom/byazt/iox/uj;)Lcom/byazt/im/sp;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p1, p2}, Lcom/byazt/gat/ve;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/iox/uj$1;->c:Lcom/byazt/gat/ve;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/byazt/im/x;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/byazt/iox/uj$1;->tt:Lcom/byazt/im/tt;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/byazt/iox/uj$1;->tt:Lcom/byazt/im/tt;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/im/tt;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {p1, p2, v0}, Lcom/byazt/im/x;-><init>(Lcom/byazt/ete/ic;Z)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p2}, Lcom/byazt/im/x;->c(Z)V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Lcom/byazt/im/x;->ve(Z)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Lcom/byazt/im/x;->c(Lcom/byazt/hm/tt;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/byazt/iox/uj$1;->tt:Lcom/byazt/im/tt;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/byazt/im/c;->c()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/byazt/im/x;->c(I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/byazt/iox/uj$1;->tt:Lcom/byazt/im/tt;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/byazt/im/c;->ve()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/byazt/im/x;->n(J)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/byazt/iox/uj$1;->c:Lcom/byazt/gat/ve;

    .line 53
    .line 54
    invoke-interface {p2, p1}, Lcom/byazt/gat/ve;->tt(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
