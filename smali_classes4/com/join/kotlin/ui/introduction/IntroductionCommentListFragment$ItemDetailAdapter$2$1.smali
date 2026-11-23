.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2$1;->this$2:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;

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
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2$1;->this$2:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->val$iv_more:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onClickMore(Landroid/view/View;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
