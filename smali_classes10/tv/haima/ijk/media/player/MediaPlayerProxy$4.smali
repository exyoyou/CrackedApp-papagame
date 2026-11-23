.class Ltv/haima/ijk/media/player/MediaPlayerProxy$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/haima/ijk/media/player/MediaPlayerProxy;->setOnSeekCompleteListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/haima/ijk/media/player/MediaPlayerProxy;

.field final synthetic val$finalListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


# direct methods
.method constructor <init>(Ltv/haima/ijk/media/player/MediaPlayerProxy;Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltv/haima/ijk/media/player/MediaPlayerProxy$4;->this$0:Ltv/haima/ijk/media/player/MediaPlayerProxy;

    .line 2
    .line 3
    iput-object p2, p0, Ltv/haima/ijk/media/player/MediaPlayerProxy$4;->val$finalListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/haima/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltv/haima/ijk/media/player/MediaPlayerProxy$4;->val$finalListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    iget-object v0, p0, Ltv/haima/ijk/media/player/MediaPlayerProxy$4;->this$0:Ltv/haima/ijk/media/player/MediaPlayerProxy;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Ltv/haima/ijk/media/player/IMediaPlayer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
