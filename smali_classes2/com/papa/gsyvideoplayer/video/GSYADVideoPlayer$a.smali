.class Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer$a;->b:Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

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
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer$a;->b:Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/video/base/a;->w()Lv7/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer$a;->b:Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/video/base/a;->w()Lv7/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lv7/a;->onAutoCompletion()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
