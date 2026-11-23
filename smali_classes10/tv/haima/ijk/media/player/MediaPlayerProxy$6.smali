.class Ltv/haima/ijk/media/player/MediaPlayerProxy$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/haima/ijk/media/player/MediaPlayerProxy;->setOnErrorListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/haima/ijk/media/player/MediaPlayerProxy;

.field final synthetic val$finalListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;


# direct methods
.method constructor <init>(Ltv/haima/ijk/media/player/MediaPlayerProxy;Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/MediaPlayerProxy$6;->this$0:Ltv/haima/ijk/media/player/MediaPlayerProxy;

    .line 2
    .line 3
    iput-object p2, p0, Ltv/haima/ijk/media/player/MediaPlayerProxy$6;->val$finalListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Ltv/haima/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Ltv/haima/ijk/media/player/MediaPlayerProxy$6;->val$finalListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 2
    .line 3
    iget-object v0, p0, Ltv/haima/ijk/media/player/MediaPlayerProxy$6;->this$0:Ltv/haima/ijk/media/player/MediaPlayerProxy;

    .line 4
    .line 5
    invoke-interface {p1, v0, p2, p3}, Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/haima/ijk/media/player/IMediaPlayer;II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onErrorMsg(Ltv/haima/ijk/media/player/IMediaPlayer;IILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
