.class Lcom/join/mgps/activity/ForumTopicActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumTopicActivity;->initListView()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$h;->b:Lcom/join/mgps/activity/ForumTopicActivity;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$h;->b:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumTopicActivity;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$h;->b:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumTopicActivity;->isNetWorkConnected()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$h;->b:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumTopicActivity;->refreshCurrentTabData()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
