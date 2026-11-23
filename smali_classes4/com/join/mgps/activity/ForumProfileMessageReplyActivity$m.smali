.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 10
    .line 11
    const v1, 0x7f12031e

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showToast(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->stopXlistRefreshAndLoadMore()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->stopXlistRefreshAndLoadMore()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$m;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
