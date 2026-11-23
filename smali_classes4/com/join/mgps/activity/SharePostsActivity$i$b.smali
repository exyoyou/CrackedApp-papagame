.class Lcom/join/mgps/activity/SharePostsActivity$i$b;
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
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/SharePostsActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity$i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$b;->c:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/SharePostsActivity$i$b;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$b;->c:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->a(Lcom/join/mgps/activity/SharePostsActivity$i;)Lcom/join/mgps/activity/SharePostsActivity$i$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$b;->c:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->a(Lcom/join/mgps/activity/SharePostsActivity$i;)Lcom/join/mgps/activity/SharePostsActivity$i$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i$b;->b:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$b;->c:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/SharePostsActivity$i;->getItem(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/activity/SharePostsActivity$i$d;->a(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
