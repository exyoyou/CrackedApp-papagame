.class Lcom/join/mgps/activity/ForumPostsActivity$x;
.super Lcom/join/mgps/customview/CustomLoadingView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->changeLoadingState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;Lcom/join/mgps/customview/CustomLoadingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "loadingView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$x;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/CustomLoadingView$e;-><init>(Lcom/join/mgps/customview/CustomLoadingView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$x;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$800(Lcom/join/mgps/activity/ForumPostsActivity;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
