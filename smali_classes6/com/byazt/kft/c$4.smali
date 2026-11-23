.class public Lcom/byazt/kft/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/sp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c;->c(Ljava/lang/String;Lcom/byazt/jzl/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kft/c;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBufferEnd(Lcom/byazt/fk/sp;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/kft/c;->or(Lcom/byazt/kft/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onBufferStart(Lcom/byazt/fk/sp;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/kft/c;->zb(Lcom/byazt/kft/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onBufferingUpdate(Lcom/byazt/fk/sp;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCompletion(Lcom/byazt/fk/sp;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getExtraCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p2}, Lcom/byazt/fk/ve;->getMsg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, -0x1

    .line 17
    const-string p2, ""

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    :goto_0
    new-instance v1, Lcom/byazt/jzl/ve;

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v2, "lottie\u97f3\u9891\u64ad\u653e\u5931\u8d25:"

    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {v1, p1, v0, p2}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 36
    .line 37
    invoke-static {p1, v1}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Lcom/byazt/jzl/ve;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onMonitorLog(Lcom/byazt/fk/sp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause(Lcom/byazt/fk/sp;)V
    .locals 0

    return-void
.end method

.method public onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V
    .locals 0

    return-void
.end method

.method public onPrepared(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/byazt/kft/c;->uj(Lcom/byazt/kft/c;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/byazt/kft/c;->qy(Lcom/byazt/kft/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRelease(Lcom/byazt/fk/sp;)V
    .locals 0

    return-void
.end method

.method public onRenderStart(Lcom/byazt/fk/sp;J)V
    .locals 0

    return-void
.end method

.method public onResume(Lcom/byazt/fk/sp;)V
    .locals 0

    return-void
.end method

.method public onSeekCompletion(Lcom/byazt/fk/sp;Z)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/byazt/fk/sp;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/kft/c;->rh(Lcom/byazt/kft/c;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/kft/c$4;->c:Lcom/byazt/kft/c;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/byazt/fk/sp$c;->onStart(Lcom/byazt/fk/sp;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Lcom/byazt/fk/sp;II)V
    .locals 0

    return-void
.end method
