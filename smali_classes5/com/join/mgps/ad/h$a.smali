.class Lcom/join/mgps/ad/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ad/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field g:Z

.field final synthetic h:Lcom/join/mgps/ad/h;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/h;)V
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
    iput-object p1, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/h$a;->g:Z

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
    iput-boolean p1, p0, Lcom/join/mgps/ad/h$a;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public onADClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/MApplication;->O(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 18
    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "rewardVideoAd bar click"

    .line 23
    .line 24
    aput-object v3, v1, v2

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onADClose()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADClose()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 24
    .line 25
    iget v2, v0, Lcom/join/mgps/ad/d;->g:I

    .line 26
    .line 27
    iget v3, v0, Lcom/join/mgps/ad/d;->h:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 35
    .line 36
    iget v2, v0, Lcom/join/mgps/ad/d;->g:I

    .line 37
    .line 38
    iget v3, v0, Lcom/join/mgps/ad/d;->h:I

    .line 39
    .line 40
    iget-object v4, v0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;IILjava/util/Map;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onADExpose()V
    .locals 0

    return-void
.end method

.method public onADLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/h;->u(Lcom/join/mgps/ad/h;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/join/mgps/ad/h$a;->g:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADLoad(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onADShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/h;->u(Lcom/join/mgps/ad/h;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/h;->u(Lcom/join/mgps/ad/h;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

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
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/h;->u(Lcom/join/mgps/ad/h;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ad/h$a;->h:Lcom/join/mgps/ad/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoComplete()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
