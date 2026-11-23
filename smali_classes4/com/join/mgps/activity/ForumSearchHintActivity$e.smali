.class Lcom/join/mgps/activity/ForumSearchHintActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ForumSearchHintActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 12
    .line 13
    const v1, 0x7f12031e

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->showToast(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopXlistRefreshAndLoadMore()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->access$102(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$e;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->load()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
