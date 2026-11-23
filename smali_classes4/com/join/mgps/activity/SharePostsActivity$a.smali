.class Lcom/join/mgps/activity/SharePostsActivity$a;
.super Lcom/join/mgps/Util/r0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SharePostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$a;->a:Lcom/join/mgps/activity/SharePostsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/Util/r0$j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusCode"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/Util/r0$j;->d(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$a;->a:Lcom/join/mgps/activity/SharePostsActivity;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/Util/r0$j;->e(Lcom/join/mgps/dto/ForumData$ForumPostsSubmitData;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$a;->a:Lcom/join/mgps/activity/SharePostsActivity;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SharePostsActivity;->showSendPromptDialog(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
