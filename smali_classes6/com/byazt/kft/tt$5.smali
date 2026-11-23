.class public Lcom/byazt/kft/tt$5;
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
        0x5a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/tt;->addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fk/sp$c;

.field public final synthetic tt:Lcom/byazt/kft/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/tt;Lcom/byazt/fk/sp$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onBufferEnd(Lcom/byazt/fk/sp;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0, p2}, Lcom/byazt/fk/sp$c;->onBufferEnd(Lcom/byazt/fk/sp;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onBufferStart(Lcom/byazt/fk/sp;III)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0, p2, p3, p4}, Lcom/byazt/fk/sp$c;->onBufferStart(Lcom/byazt/fk/sp;III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onBufferingUpdate(Lcom/byazt/fk/sp;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0, p2}, Lcom/byazt/fk/sp$c;->onBufferingUpdate(Lcom/byazt/fk/sp;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCompletion(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/byazt/fk/sp$c;->onCompletion(Lcom/byazt/fk/sp;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/byazt/kft/tt;->c(Lcom/byazt/kft/tt;Lcom/byazt/fk/ve;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMonitorLog(Lcom/byazt/fk/sp;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0, p2, p3}, Lcom/byazt/fk/sp$c;->onMonitorLog(Lcom/byazt/fk/sp;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPause(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/byazt/fk/sp$c;->onPause(Lcom/byazt/fk/sp;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    invoke-interface/range {v0 .. v5}, Lcom/byazt/fk/sp$c;->onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPrepared(Lcom/byazt/fk/sp;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/byazt/kft/tt$5$2;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/byazt/kft/tt$5$2;-><init>(Lcom/byazt/kft/tt$5;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/byazt/qk/tt;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onRelease(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/byazt/fk/sp$c;->onRelease(Lcom/byazt/fk/sp;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRenderStart(Lcom/byazt/fk/sp;J)V
    .locals 0

    .line 1
    new-instance p1, Lcom/byazt/kft/tt$5$1;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2, p3}, Lcom/byazt/kft/tt$5$1;-><init>(Lcom/byazt/kft/tt$5;J)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/byazt/qk/tt;->c(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/byazt/fk/sp$c;->onResume(Lcom/byazt/fk/sp;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSeekCompletion(Lcom/byazt/fk/sp;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0, p2}, Lcom/byazt/fk/sp$c;->onSeekCompletion(Lcom/byazt/fk/sp;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onStart(Lcom/byazt/fk/sp;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/byazt/fk/sp$c;->onStart(Lcom/byazt/fk/sp;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoSizeChanged(Lcom/byazt/fk/sp;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/kft/tt$5;->c:Lcom/byazt/fk/sp$c;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/byazt/kft/tt;->sl(Lcom/byazt/kft/tt;)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    iget-object v0, p0, Lcom/byazt/kft/tt$5;->tt:Lcom/byazt/kft/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/kft/tt;->t(Lcom/byazt/kft/tt;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p1, p2, p3, v0}, Lcom/byazt/fk/sp$c;->onVideoSizeChanged(Lcom/byazt/fk/sp;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
