.class public abstract Lcom/papa/gsyvideoplayer/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/gsyvideoplayer/player/c;


# instance fields
.field protected a:Lcom/papa/gsyvideoplayer/player/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Lcom/papa/gsyvideoplayer/player/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/a;->a:Lcom/papa/gsyvideoplayer/player/b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected e(Lcom/papa/gsyvideoplayer/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/player/a;->a:Lcom/papa/gsyvideoplayer/player/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/papa/gsyvideoplayer/player/c;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1, p1}, Lcom/papa/gsyvideoplayer/player/b;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/papa/gsyvideoplayer/model/a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public k(Lcom/papa/gsyvideoplayer/player/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/player/a;->a:Lcom/papa/gsyvideoplayer/player/b;

    .line 2
    .line 3
    return-void
.end method
