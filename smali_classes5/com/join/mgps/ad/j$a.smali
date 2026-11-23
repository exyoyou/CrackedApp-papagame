.class Lcom/join/mgps/ad/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/j;->t(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/ad/j;


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
    iput-object p1, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

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
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADClose()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

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
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

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

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/j;->u(Lcom/join/mgps/ad/j;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

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
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->e()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

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
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "rewardVideoAd bar click"

    .line 18
    .line 19
    aput-object v3, v1, v2

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onSkippedVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

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
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->g:Lcom/join/mgps/ad/j;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoComplete()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
