.class Lcom/join/mgps/activity/ForumTopicActivity$k;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumTopicActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$k;->a:Lcom/join/mgps/activity/ForumTopicActivity;

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
    .locals 2
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
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$k;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->r()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$k;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->q()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$k;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 24
    .line 25
    iget v0, p1, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method
