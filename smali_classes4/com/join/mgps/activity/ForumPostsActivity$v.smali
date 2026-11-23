.class Lcom/join/mgps/activity/ForumPostsActivity$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/KeyboardListenLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 0

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->access$100(Lcom/join/mgps/activity/ForumPostsActivity;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionFunction(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$v;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->hideExtensionFunction(Z)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
