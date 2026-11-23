.class Lcom/join/mgps/activity/GameDetailActivity$i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/GamelistExpandableTextView;

.field final synthetic c:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic d:Lcom/join/mgps/activity/GameDetailActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$i;Lcom/join/mgps/customview/GamelistExpandableTextView;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$content",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->d:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->c:Lcom/join/mgps/dto/CommentBaseBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->d:Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$i;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f0713f9

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    div-int/2addr v0, v1

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->setMaxLinesOnShrink(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->c:Lcom/join/mgps/dto/CommentBaseBean;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$i$c;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/customview/GamelistExpandableTextView;->y(Ljava/lang/CharSequence;II)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
