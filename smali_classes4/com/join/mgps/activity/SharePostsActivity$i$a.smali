.class Lcom/join/mgps/activity/SharePostsActivity$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity$i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/SharePostsActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity$i;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$a;->b:Lcom/join/mgps/activity/SharePostsActivity$i;

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
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$a;->b:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/join/mgps/activity/SharePostsActivity$i;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lcom/join/mgps/activity/SharePostsActivity$i;->d:Z

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->a(Lcom/join/mgps/activity/SharePostsActivity$i;)Lcom/join/mgps/activity/SharePostsActivity$i$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$a;->b:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->a(Lcom/join/mgps/activity/SharePostsActivity$i;)Lcom/join/mgps/activity/SharePostsActivity$i$d;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/join/mgps/activity/SharePostsActivity$i$d;->b()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method
