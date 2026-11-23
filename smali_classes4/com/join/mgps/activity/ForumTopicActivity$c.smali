.class Lcom/join/mgps/activity/ForumTopicActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumTopicActivity;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumTopicActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumTopicActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$c;->b:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$c;->b:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumTopicActivity;->playBackground(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$c;->b:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "\u89c6\u9891\u64ad\u653e\u5931\u8d25"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1
.end method
