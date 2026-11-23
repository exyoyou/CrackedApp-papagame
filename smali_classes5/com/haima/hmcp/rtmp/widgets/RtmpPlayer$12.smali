.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;


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
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;III)V
    .locals 2
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;->getRenderView()Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 8
    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "onSurfaceChanged: unmatched render callback\n"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "===onSurfaceChanged=="

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 31
    .line 32
    invoke-static {p1, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1402(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 36
    .line 37
    invoke-static {p1, p4}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1502(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1400(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, " "

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmTargetState()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/4 p2, 0x3

    .line 90
    const/4 v0, 0x1

    .line 91
    const/4 v1, 0x0

    .line 92
    if-ne p1, p2, :cond_1

    .line 93
    .line 94
    const/4 p1, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 p1, 0x0

    .line 97
    :goto_0
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 100
    .line 101
    invoke-interface {p2}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->shouldWaitForResize()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 108
    .line 109
    invoke-static {p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-ne p2, p3, :cond_2

    .line 114
    .line 115
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 116
    .line 117
    invoke-static {p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-ne p2, p4, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const/4 v0, 0x0

    .line 125
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 126
    .line 127
    iget-object p3, p2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 128
    .line 129
    if-eqz p3, :cond_5

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    invoke-static {p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1300(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1300(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->seekTo(I)V

    .line 148
    .line 149
    .line 150
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->start()V

    .line 153
    .line 154
    .line 155
    :cond_5
    return-void
.end method

.method public onSurfaceCreated(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;II)V
    .locals 1
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;->getRenderView()Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 6
    .line 7
    iget-object p3, p3, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 8
    .line 9
    if-eq p2, p3, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "onSurfaceCreated: unmatched render callback\n"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string p3, "===onSurfaceCreated=="

    .line 26
    .line 27
    invoke-static {p2, p3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 31
    .line 32
    iput-object p1, p2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSurfaceHolder:Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;

    .line 33
    .line 34
    iget-object p3, p2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2, p3, p1, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->bindSurfaceHolder(Ltv/haima/ijk/media/player/IMediaPlayer;Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;Landroid/graphics/SurfaceTexture;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;)V
    .locals 1
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;->getRenderView()Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "onSurfaceDestroyed: unmatched render callback\n"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "===onSurfaceDestroyed=="

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSurfaceHolder:Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;

    .line 34
    .line 35
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/haima/hmcp/HmcpManager;->getVideoViewType()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x1

    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    new-instance p1, Ljava/lang/Thread;

    .line 47
    .line 48
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12$1;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12$1;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method
