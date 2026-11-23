.class Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSmallVideoTextureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->hideSmallVideo()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
