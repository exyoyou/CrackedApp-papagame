.class Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->netWorkErrorLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->c:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->b:J

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
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->c:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->b:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSeekOnStart(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;->c:Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPlayLogic()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
