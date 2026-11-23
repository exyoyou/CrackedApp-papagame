.class Lcom/join/mgps/activity/ForumPostsActivity$g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity$g0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumPostsActivity$g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity$g0;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0$a;->b:Lcom/join/mgps/activity/ForumPostsActivity$g0;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0$a;->b:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$g0;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncSort()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0$a;->b:Lcom/join/mgps/activity/ForumPostsActivity$g0;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
