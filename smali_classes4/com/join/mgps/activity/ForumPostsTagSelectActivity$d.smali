.class Lcom/join/mgps/activity/ForumPostsTagSelectActivity$d;
.super Lcom/join/mgps/customview/ForumLoadingView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->changeLoadingState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity;Lcom/join/mgps/customview/ForumLoadingView;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$d;->b:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/ForumLoadingView$e;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/ForumLoadingView$e;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$d;->b:Lcom/join/mgps/activity/ForumPostsTagSelectActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->loading()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
