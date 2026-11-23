.class Lcom/join/mgps/activity/ForumSearchHintActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopXlistRefreshAndLoadMore()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->isSearching()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/join/mgps/activity/ForumSearchHintActivity;->access$000(Lcom/join/mgps/activity/ForumSearchHintActivity;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchQuery(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->access$100(Lcom/join/mgps/activity/ForumSearchHintActivity;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, -0x1

    .line 67
    if-ne v0, v1, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$d;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->stopXlistRefreshAndLoadMore()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method
