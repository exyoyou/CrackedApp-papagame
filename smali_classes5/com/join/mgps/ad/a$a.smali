.class Lcom/join/mgps/ad/a$a;
.super Lcom/join/mgps/ad/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic u:Z

.field final synthetic v:Lcom/join/mgps/ad/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "ctx",
            "appId",
            "posId",
            "val$showAd"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 2
    .line 3
    iput-boolean p5, p0, Lcom/join/mgps/ad/a$a;->u:Z

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/a0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onWfADClick()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADClick()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/MApplication;->O(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/join/mgps/ad/n;->onWfADClick()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onWfADClose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADClose()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/join/mgps/ad/n;->onWfADClose()V

    :cond_0
    return-void
.end method

.method public onWfADClose(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/ad/n;->onWfADClose(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWfADClose(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "howTimes",
            "times"
        }
    .end annotation

    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;II)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/join/mgps/ad/n;->onWfADClose(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onWfADExpose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADExpose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/join/mgps/ad/n;->onWfADExpose()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onWfADLoad(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/d;->onWfADLoad(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lcom/join/mgps/ad/n;->onWfADLoad(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onWfADShow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/join/mgps/ad/n;->onWfADShow()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onWfError(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "err",
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1, p2}, Lcom/join/mgps/ad/n;->onWfError(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onWfInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/ad/a$a;->u:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/a0;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onWfReward(Ljava/util/Map;)V
    .locals 1
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

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/d;->onWfReward(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lcom/join/mgps/ad/n;->onWfReward(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onWfVideoCached()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/join/mgps/ad/n;->onWfVideoCached()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onWfVideoComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfVideoComplete()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/ad/a$a;->v:Lcom/join/mgps/ad/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/ad/a;->a(Lcom/join/mgps/ad/a;)Lcom/join/mgps/ad/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/join/mgps/ad/n;->onWfVideoComplete()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
