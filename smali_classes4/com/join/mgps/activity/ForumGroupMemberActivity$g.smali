.class Lcom/join/mgps/activity/ForumGroupMemberActivity$g;
.super Lcom/join/mgps/customview/ForumLoadingView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumGroupMemberActivity;->changeLoadingState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumGroupMemberActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumGroupMemberActivity;Lcom/join/mgps/customview/ForumLoadingView;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$g;->b:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/ForumLoadingView$e;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumGroupMemberActivity$g;->b:Lcom/join/mgps/activity/ForumGroupMemberActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumGroupMemberActivity;->loading()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
