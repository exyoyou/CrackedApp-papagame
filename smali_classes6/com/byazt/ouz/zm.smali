.class public Lcom/byazt/ouz/zm;
.super Lcom/byazt/ouz/gu;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x1e2
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/ouz/gu;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getVideoModel()Lcom/byazt/ua/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->n:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/gu;->n:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/ouz/u;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/ouz/BackupView;->getVideoModel()Lcom/byazt/ua/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 25
    .line 26
    instance-of v1, v0, Lcom/byazt/ouz/NativeExpressVideoView;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast v0, Lcom/byazt/ouz/NativeExpressVideoView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressVideoView;->yp()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 36
    .line 37
    check-cast v0, Lcom/byazt/ouz/NativeExpressVideoView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressVideoView;->getVideoModel()Lcom/byazt/ua/c;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    return-object v0
.end method

.method public initExpressView(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/ouz/NativeExpressVideoView;

    .line 2
    .line 3
    const-string v1, "embeded_ad"

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/byazt/ouz/NativeExpressVideoView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setVideoAdListener(Lcom/byazt/ft/ve;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/byazt/ouz/zm$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/zm$1;-><init>(Lcom/byazt/ouz/zm;Lcom/byazt/ft/ve;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/NativeExpressView;->setVideoAdListener(Lcom/byazt/dh/ve$uj;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 14
    .line 15
    new-instance v1, Lcom/byazt/ouz/zm$2;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/zm$2;-><init>(Lcom/byazt/ouz/zm;Lcom/byazt/ft/ve;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/NativeExpressView;->setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
