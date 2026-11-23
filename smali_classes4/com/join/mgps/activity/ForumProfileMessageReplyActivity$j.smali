.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->r()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$j;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->mg_forum_profile_message_list:Lcom/join/mgps/customview/XListView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->q()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
