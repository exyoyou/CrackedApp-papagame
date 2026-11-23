.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    .line 2
    .line 3
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 4
    .line 5
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    .line 10
    .line 11
    iget-object v1, v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 12
    .line 13
    invoke-virtual {v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    mul-int/lit8 v2, v0, 0x64

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v1

    .line 24
    :goto_0
    div-int/2addr v2, v3

    .line 25
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;

    .line 26
    .line 27
    iget-object v3, v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$c;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 28
    .line 29
    invoke-virtual {v3, v2, v0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setProgressAndText(III)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
