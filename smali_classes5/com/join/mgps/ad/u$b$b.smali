.class Lcom/join/mgps/ad/u$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/u$b;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ad/u$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/u$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/u$b$b;->a:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalBytes",
            "currBytes",
            "fileName",
            "appName"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ad/u$b$b;->a:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/ad/u;->k(Lcom/join/mgps/ad/u;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/ad/u$b$b;->a:Lcom/join/mgps/ad/u$b;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-static {p1, p2}, Lcom/join/mgps/ad/u;->l(Lcom/join/mgps/ad/u;Z)Z

    .line 17
    .line 18
    .line 19
    new-array p1, p2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    const-string p3, "\u4e0b\u8f7d\u4e2d\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u6682\u505c"

    .line 23
    .line 24
    aput-object p3, p1, p2

    .line 25
    .line 26
    const-string p2, "RewardVideo"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalBytes",
            "currBytes",
            "fileName",
            "appName"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    const-string p3, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u91cd\u65b0\u4e0b\u8f7d"

    .line 6
    .line 7
    aput-object p3, p1, p2

    .line 8
    .line 9
    const-string p2, "RewardVideo"

    .line 10
    .line 11
    invoke-static {p2, p1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalBytes",
            "fileName",
            "appName"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    const-string p3, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u91cd\u65b0\u4e0b\u8f7d"

    .line 6
    .line 7
    aput-object p3, p1, p2

    .line 8
    .line 9
    const-string p2, "RewardVideo"

    .line 10
    .line 11
    invoke-static {p2, p1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalBytes",
            "currBytes",
            "fileName",
            "appName"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    const-string p3, "\u4e0b\u8f7d\u6682\u505c\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u7ee7\u7eed"

    .line 6
    .line 7
    aput-object p3, p1, p2

    .line 8
    .line 9
    const-string p2, "RewardVideo"

    .line 10
    .line 11
    invoke-static {p2, p1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onIdle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$b;->a:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/ad/u;->l(Lcom/join/mgps/ad/u;Z)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "appName"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    const-string v0, "\u5b89\u88c5\u5b8c\u6210\uff0c\u70b9\u51fb\u4e0b\u8f7d\u533a\u57df\u6253\u5f00"

    .line 6
    .line 7
    aput-object v0, p1, p2

    .line 8
    .line 9
    const-string p2, "RewardVideo"

    .line 10
    .line 11
    invoke-static {p2, p1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
