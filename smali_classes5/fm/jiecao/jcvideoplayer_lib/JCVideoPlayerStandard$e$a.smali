.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    .line 2
    .line 3
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 4
    .line 5
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    .line 12
    .line 13
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 14
    .line 15
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    .line 21
    .line 22
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 23
    .line 24
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    .line 30
    .line 31
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 32
    .line 33
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p2:Landroid/widget/PopupWindow;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e$a;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    .line 41
    .line 42
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;->b:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 43
    .line 44
    iget v1, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 45
    .line 46
    const/4 v2, 0x3

    .line 47
    if-eq v1, v2, :cond_1

    .line 48
    .line 49
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
