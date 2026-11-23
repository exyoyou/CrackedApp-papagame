.class public Lcom/byazt/cf/n$3;
.super Lcom/byazt/ols/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x1fb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cf/n;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Lcom/byazt/iu/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iu/ve;

.field public final synthetic tt:Lcom/byazt/ete/ic;

.field public final synthetic ve:Lcom/byazt/cf/n;


# direct methods
.method public constructor <init>(Lcom/byazt/cf/n;Lcom/byazt/iu/ve;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cf/n$3;->ve:Lcom/byazt/cf/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cf/n$3;->c:Lcom/byazt/iu/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cf/n$3;->tt:Lcom/byazt/ete/ic;

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
    const-string p1, "RewardFullLog: Cached ad onVideoPreloadFail"

    .line 2
    .line 3
    const-string p2, "RewardSceneCacheStrategy"

    .line 4
    .line 5
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/cf/n$3;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/byazt/ete/xd;->u(Lcom/byazt/ete/ic;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "RewardFullLog: Cached ad onVideoPreloadFail and block onCached"

    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/byazt/cf/n$3;->c:Lcom/byazt/iu/ve;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/byazt/iu/ve;->tt()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V
    .locals 0

    .line 1
    const-string p1, "RewardSceneCacheStrategy"

    .line 2
    .line 3
    const-string p2, "RewardFullLog: Cached ad onVideoPreloadSuccess"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/cf/n$3;->c:Lcom/byazt/iu/ve;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/byazt/iu/ve;->tt()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
