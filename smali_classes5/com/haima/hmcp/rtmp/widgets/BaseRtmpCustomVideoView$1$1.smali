.class Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->onFirstFrameArrival()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1$1;->this$1:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1$1;->this$1:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 4
    .line 5
    const/16 v1, 0x66

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
