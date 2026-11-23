.class Lcom/join/mgps/activity/ForumPostsActivity$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$u;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "scrollY",
            "oldScrollY",
            "scrollState"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$u;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/join/mgps/activity/ForumPostsActivity;->rv_head:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {p1, p2, p4}, Lcom/join/mgps/activity/ForumPostsActivity;->videoScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$u;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->rv_comment_list:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 11
    .line 12
    invoke-virtual {p1, p4}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->onScrollStateChanged(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
