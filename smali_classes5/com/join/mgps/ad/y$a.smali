.class Lcom/join/mgps/ad/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/y;->t(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/ad/y;


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
    iput-object p1, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/16 v1, 0x3ec

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADClose()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 25
    .line 26
    iget v2, v0, Lcom/join/mgps/ad/d;->g:I

    .line 27
    .line 28
    iget v3, v0, Lcom/join/mgps/ad/d;->h:I

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/y;->u(Lcom/join/mgps/ad/y;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    const/16 v1, 0x3eb

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->e()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "rewardVideoAd onAdClicked"

    .line 10
    .line 11
    aput-object v3, v1, v2

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADClick()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onSkippedVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/y$a;->g:Lcom/join/mgps/ad/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
