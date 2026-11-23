.class Lcom/papa/gsyvideoplayer/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/c;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/papa/gsyvideoplayer/c;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c$c;->c:Lcom/papa/gsyvideoplayer/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/gsyvideoplayer/c$c;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c$c;->c:Lcom/papa/gsyvideoplayer/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/papa/gsyvideoplayer/c$c;->b:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c$c;->c:Lcom/papa/gsyvideoplayer/c;

    .line 12
    .line 13
    iget v2, v1, Lcom/papa/gsyvideoplayer/c;->o:I

    .line 14
    .line 15
    if-le v0, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/papa/gsyvideoplayer/c$c;->b:I

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lv7/a;->onBufferingUpdate(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/c;->w()Lv7/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c$c;->c:Lcom/papa/gsyvideoplayer/c;

    .line 32
    .line 33
    iget v1, v1, Lcom/papa/gsyvideoplayer/c;->o:I

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lv7/a;->onBufferingUpdate(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method
