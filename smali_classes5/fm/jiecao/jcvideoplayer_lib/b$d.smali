.class Lfm/jiecao/jcvideoplayer_lib/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/b;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lfm/jiecao/jcvideoplayer_lib/b;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/b;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->d:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 2
    .line 3
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->b:I

    .line 4
    .line 5
    iput p3, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->b:I

    .line 12
    .line 13
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/b$d;->c:I

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->r(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
