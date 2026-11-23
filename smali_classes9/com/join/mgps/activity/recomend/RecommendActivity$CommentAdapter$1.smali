.class Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

.field final synthetic val$holder:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;

.field final synthetic val$recommendBean:Lcom/join/mgps/activity/recomend/RecommendBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;Lcom/join/mgps/activity/recomend/RecommendBean;Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$recommendBean",
            "val$holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->this$1:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->val$recommendBean:Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->val$holder:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->val$recommendBean:Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendBean;->getIs_select()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->val$recommendBean:Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/recomend/RecommendBean;->setIs_select(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->val$holder:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    .line 19
    .line 20
    const v1, 0x7f0803f2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->this$1:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 29
    .line 30
    iget v1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 31
    .line 32
    sub-int/2addr v1, v0

    .line 33
    iput v1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->val$recommendBean:Lcom/join/mgps/activity/recomend/RecommendBean;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/recomend/RecommendBean;->setIs_select(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->val$holder:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    .line 44
    .line 45
    const v1, 0x7f0803ef

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->this$1:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 54
    .line 55
    iget v1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 56
    .line 57
    add-int/2addr v1, v0

    .line 58
    iput v1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity;->selectedNumber:I

    .line 59
    .line 60
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter$1;->this$1:Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendActivity;->refreshEnterGame()V

    .line 65
    .line 66
    .line 67
    return-void
.end method
