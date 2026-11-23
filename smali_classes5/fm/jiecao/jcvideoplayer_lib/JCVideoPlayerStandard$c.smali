.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->O(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 5
    .line 6
    iget p2, p2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 15
    .line 16
    invoke-virtual {p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
