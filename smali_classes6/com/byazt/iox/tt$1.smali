.class public Lcom/byazt/iox/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/m$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c3,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iox/tt;->tt(Lcom/byazt/im/tt;Lcom/byazt/gat/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/im/tt;

.field public final synthetic tt:Lcom/byazt/gat/ve;

.field public final synthetic ve:Lcom/byazt/iox/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iox/tt;Lcom/byazt/im/tt;Lcom/byazt/gat/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iox/tt$1;->ve:Lcom/byazt/iox/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iox/tt$1;->c:Lcom/byazt/im/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iox/tt$1;->tt:Lcom/byazt/gat/ve;

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
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/byazt/iox/tt$1;->ve:Lcom/byazt/iox/tt;

    invoke-static {v0}, Lcom/byazt/iox/tt;->c(Lcom/byazt/iox/tt;)Lcom/byazt/im/sp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->tt(I)V

    .line 14
    iget-object v0, p0, Lcom/byazt/iox/tt$1;->ve:Lcom/byazt/iox/tt;

    invoke-static {v0}, Lcom/byazt/iox/tt;->c(Lcom/byazt/iox/tt;)Lcom/byazt/im/sp;

    move-result-object v0

    const-string v1, "load image fail"

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/byazt/iox/tt$1;->ve:Lcom/byazt/iox/tt;

    invoke-static {v0}, Lcom/byazt/iox/tt;->c(Lcom/byazt/iox/tt;)Lcom/byazt/im/sp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->c(Z)V

    .line 16
    iget-object v0, p0, Lcom/byazt/iox/tt$1;->tt:Lcom/byazt/gat/ve;

    iget-object v1, p0, Lcom/byazt/iox/tt$1;->ve:Lcom/byazt/iox/tt;

    invoke-static {v1}, Lcom/byazt/iox/tt;->c(Lcom/byazt/iox/tt;)Lcom/byazt/im/sp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/gat/ve;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/uph/tt;Lcom/byazt/yj/m;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/im/x;

    iget-object v1, p0, Lcom/byazt/iox/tt$1;->c:Lcom/byazt/im/tt;

    invoke-virtual {v1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/iox/tt$1;->c:Lcom/byazt/im/tt;

    invoke-virtual {v2}, Lcom/byazt/im/tt;->u()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/byazt/im/x;-><init>(Lcom/byazt/uph/tt;Lcom/byazt/ete/ic;Z)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/im/x;->c(Z)V

    .line 3
    iget-object p1, p0, Lcom/byazt/iox/tt$1;->c:Lcom/byazt/im/tt;

    invoke-virtual {p1}, Lcom/byazt/im/c;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/im/x;->c(I)V

    .line 4
    iget-object p1, p0, Lcom/byazt/iox/tt$1;->c:Lcom/byazt/im/tt;

    invoke-virtual {p1}, Lcom/byazt/im/c;->ve()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/im/x;->n(J)V

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Lcom/byazt/yj/m;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/im/x;->c(Ljava/util/Map;)V

    .line 6
    invoke-interface {p2}, Lcom/byazt/yj/m;->isLocal()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/im/x;->tt(Z)V

    .line 7
    invoke-interface {p2}, Lcom/byazt/yj/m;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/aas/yp;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/im/x;->tt(Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Lcom/byazt/yj/m;->getHttpTime()Lcom/byazt/yj/x;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p2}, Lcom/byazt/yj/m;->getHttpTime()Lcom/byazt/yj/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/yj/x;->getFirstFrameTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/im/x;->tt(J)V

    .line 10
    invoke-interface {p2}, Lcom/byazt/yj/m;->getHttpTime()Lcom/byazt/yj/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/yj/x;->getStartRequestTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/im/x;->ve(J)V

    .line 11
    invoke-interface {p2}, Lcom/byazt/yj/m;->getHttpTime()Lcom/byazt/yj/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/yj/x;->getEndRequestTime()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/byazt/im/x;->uj(J)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/iox/tt$1;->tt:Lcom/byazt/gat/ve;

    invoke-interface {p1, v0}, Lcom/byazt/gat/ve;->tt(Ljava/lang/Object;)V

    return-void
.end method
