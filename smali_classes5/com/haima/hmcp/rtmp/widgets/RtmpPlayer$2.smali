.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$2;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/haima/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$2;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-static {p2, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$502(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$2;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 11
    .line 12
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-static {p2, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$602(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$2;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 20
    .line 21
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-static {p2, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$702(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$2;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 29
    .line 30
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p2, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$802(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 35
    .line 36
    .line 37
    return-void
.end method
