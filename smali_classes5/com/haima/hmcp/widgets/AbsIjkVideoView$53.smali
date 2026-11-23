.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/input/listener/HMInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$53;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClockDiffChange(JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$53;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 4
    .line 5
    invoke-interface {p1, p3}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->onClockDiffChange(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onConnect(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$53;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->instanceConnect()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDisconnect(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$53;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disConnectInput(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFirstDiffClockSuccess(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$53;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->onFirstDiffClockSuccess()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onHeartBeatSuccess()V
    .locals 0

    return-void
.end method

.method public onTextMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$53;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->instanceTextMessage(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
