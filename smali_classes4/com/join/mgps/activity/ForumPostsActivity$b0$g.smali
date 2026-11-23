.class Lcom/join/mgps/activity/ForumPostsActivity$b0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity$b0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumPostsActivity$b0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0$g;->b:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0$g;->b:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$b0;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 4
    .line 5
    const v0, 0x7f0a05ce

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1202(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0$g;->b:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$b0;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1300(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0$g;->b:Lcom/join/mgps/activity/ForumPostsActivity$b0;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$b0;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->dismissFuncWindow()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
