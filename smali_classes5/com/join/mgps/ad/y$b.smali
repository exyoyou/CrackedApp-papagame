.class Lcom/join/mgps/ad/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ad/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field g:Z

.field final synthetic h:Lcom/join/mgps/ad/y;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/y$b;->g:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/y$b;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public fail(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/y;->u(Lcom/join/mgps/ad/y;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttFullScreenVideoAd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "rewardVideoAd loaded"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/ad/y;->u(Lcom/join/mgps/ad/y;Z)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 22
    .line 23
    iput-boolean v4, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/join/mgps/ad/y;->v(Lcom/join/mgps/ad/y;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/join/mgps/ad/y$b;->g:Z

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/ad/d;->onWfADLoad(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onFullScreenVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ad/y;->u(Lcom/join/mgps/ad/y;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    return-void
.end method

.method public onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttFullScreenVideoAd"
        }
    .end annotation

    .line 4
    iget-object p1, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/ad/y;->u(Lcom/join/mgps/ad/y;Z)Z

    .line 5
    iget-object p1, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/join/mgps/ad/d;->k:Z

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    return-void
.end method

.method public success()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$b;->h:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
