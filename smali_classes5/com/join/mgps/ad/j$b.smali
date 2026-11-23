.class Lcom/join/mgps/ad/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ad/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field g:Z

.field final synthetic h:Lcom/join/mgps/ad/j;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/j;)V
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
    iput-object p1, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/j$b;->g:Z

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
    iput-boolean p1, p0, Lcom/join/mgps/ad/j$b;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public fail(ILjava/lang/String;)V
    .locals 3
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
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3
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
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/j;->u(Lcom/join/mgps/ad/j;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 10
    .line 11
    iget-object v1, v0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
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
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

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
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/ad/j;->u(Lcom/join/mgps/ad/j;Z)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 22
    .line 23
    iput-boolean v4, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/join/mgps/ad/j;->v(Lcom/join/mgps/ad/j;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onFullScreenVideoCached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "rewardVideoAd video cached"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    invoke-static {v0, v1}, Lcom/join/mgps/ad/j;->u(Lcom/join/mgps/ad/j;Z)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    iput-boolean v4, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    iget-boolean v1, p0, Lcom/join/mgps/ad/j$b;->g:Z

    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADLoad(Z)V

    return-void
.end method

.method public onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttFullScreenVideoAd"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ad/j;->u(Lcom/join/mgps/ad/j;Z)Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 8
    invoke-static {v0, p1}, Lcom/join/mgps/ad/j;->v(Lcom/join/mgps/ad/j;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    invoke-virtual {p1}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    return-void
.end method

.method public success()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$b;->h:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
