.class public Lfm/jiecao/jcvideoplayer_lib/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

.field public static b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;


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

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/f;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q()V

    .line 7
    .line 8
    .line 9
    sput-object v1, Lfm/jiecao/jcvideoplayer_lib/f;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q()V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lfm/jiecao/jcvideoplayer_lib/f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public static b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    .locals 1

    .line 1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static c()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static d()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/f;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V
    .locals 0

    .line 1
    sput-object p0, Lfm/jiecao/jcvideoplayer_lib/f;->a:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 2
    .line 3
    return-void
.end method

.method public static f(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V
    .locals 0

    .line 1
    sput-object p0, Lfm/jiecao/jcvideoplayer_lib/f;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 2
    .line 3
    return-void
.end method
