.class Lcom/join/mgps/activity/ForumMyActivity$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyActivity$k;->e(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ForumMyActivity$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyActivity$k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->c:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->b:I

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->c:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->b:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->c:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 20
    .line 21
    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->b:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->c:Lcom/join/mgps/activity/ForumMyActivity$k;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity$k;->c:Lcom/join/mgps/activity/ForumMyActivity;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 32
    .line 33
    iget v0, p0, Lcom/join/mgps/activity/ForumMyActivity$k$a;->b:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
