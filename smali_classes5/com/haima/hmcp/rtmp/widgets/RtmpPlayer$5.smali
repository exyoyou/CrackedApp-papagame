.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/haima/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "onCompletion"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1800(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1800(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 46
    .line 47
    invoke-interface {p1, v0}, Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/haima/ijk/media/player/IMediaPlayer;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method
