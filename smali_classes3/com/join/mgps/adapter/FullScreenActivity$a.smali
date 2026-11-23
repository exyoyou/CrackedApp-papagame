.class Lcom/join/mgps/adapter/FullScreenActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/FullScreenActivity;->startPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/FullScreenActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/FullScreenActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->b:Lcom/join/mgps/adapter/FullScreenActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->b:Lcom/join/mgps/adapter/FullScreenActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->b:Lcom/join/mgps/adapter/FullScreenActivity;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x7

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->b:Lcom/join/mgps/adapter/FullScreenActivity;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$a;->b:Lcom/join/mgps/adapter/FullScreenActivity;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
