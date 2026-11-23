.class Lcom/join/mgps/activity/ForumProfileMessageActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

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
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->showToast(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->access$100(Lcom/join/mgps/activity/ForumProfileMessageActivity;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->getForumProfileMessageData(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->access$000(Lcom/join/mgps/activity/ForumProfileMessageActivity;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, -0x1

    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$c;->b:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->stopXlistRefreshAndLoadMore()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
