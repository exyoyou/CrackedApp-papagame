.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/display/HmScreenOrientationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->registerScreenMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$48;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScreenOrientationChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$48;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;I)Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$48;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 20
    .line 21
    if-ne p1, v1, :cond_2

    .line 22
    .line 23
    const/16 p1, 0x5a

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->changeRenderRotation(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
