.class Lcom/join/mgps/activity/ForumProfileMessageActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumProfileMessageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 15
    .line 16
    const v1, 0x7f12031e

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->access$002(Lcom/join/mgps/activity/ForumProfileMessageActivity;I)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$d;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->getForumProfileMessageData(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
