.class Lcom/join/mgps/adapter/ForumCommentAdapter$x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter$x;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/RecommendLabelTag;

.field final synthetic c:Lcom/join/mgps/adapter/ForumCommentAdapter$x;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter$x;Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$x$a;->c:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$x$a;->b:Lcom/join/mgps/dto/RecommendLabelTag;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$x$a;->b:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$x$a;->c:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/join/mgps/adapter/ForumCommentAdapter$x;->a(Lcom/join/mgps/adapter/ForumCommentAdapter$x;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$x$a;->c:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/join/mgps/adapter/ForumCommentAdapter$x;->b(Lcom/join/mgps/adapter/ForumCommentAdapter$x;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;IILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
