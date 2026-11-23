.class public abstract Ltv/haima/ijk/media/player/AbstractMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/IMediaPlayer;


# instance fields
.field private mOnBufferingUpdateListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final notifyOnBufferingUpdate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/haima/ijk/media/player/IMediaPlayer;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final notifyOnCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/haima/ijk/media/player/IMediaPlayer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final notifyOnError(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/haima/ijk/media/player/IMediaPlayer;II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected final notifyOnErrorMsg(IILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2, p3}, Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;->onErrorMsg(Ltv/haima/ijk/media/player/IMediaPlayer;IILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected final notifyOnInfo(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/haima/ijk/media/player/IMediaPlayer;II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected final notifyOnPrepared()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/haima/ijk/media/player/IMediaPlayer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final notifyOnSeekComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Ltv/haima/ijk/media/player/IMediaPlayer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final notifyOnTimedText(Ltv/haima/ijk/media/player/IjkTimedText;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnTimedTextListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Ltv/haima/ijk/media/player/IMediaPlayer$OnTimedTextListener;->onTimedText(Ltv/haima/ijk/media/player/IMediaPlayer;Ltv/haima/ijk/media/player/IjkTimedText;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final notifyOnVideoSizeChanged(IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-interface/range {v0 .. v5}, Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/haima/ijk/media/player/IMediaPlayer;IIII)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 3
    .line 4
    iput-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 5
    .line 6
    iput-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 7
    .line 8
    iput-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 9
    .line 10
    iput-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 11
    .line 12
    iput-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 13
    .line 14
    iput-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 15
    .line 16
    iput-object v0, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnTimedTextListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 17
    .line 18
    return-void
.end method

.method public setDataSource(Ltv/haima/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final setOnBufferingUpdateListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnCompletionListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnErrorListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnInfoListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnPreparedListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnSeekCompleteListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnTimedTextListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnTimedTextListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnVideoSizeChangedListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    return-void
.end method
