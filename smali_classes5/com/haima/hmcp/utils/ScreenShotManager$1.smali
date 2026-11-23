.class Lcom/haima/hmcp/utils/ScreenShotManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/FrameCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/ScreenShotManager;->rtcScreenShot(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/ScreenShotManager;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/ScreenShotManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager$1;->this$0:Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFrameCapture(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ScreenShotManager$1;->this$0:Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/utils/ScreenShotManager;->access$000(Lcom/haima/hmcp/utils/ScreenShotManager;)Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/utils/ScreenShotManager$1;->this$0:Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/utils/ScreenShotManager;->access$000(Lcom/haima/hmcp/utils/ScreenShotManager;)Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/haima/hmcp/utils/ScreenShotManager$IScreenShotCallback;->onScreenShot(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
