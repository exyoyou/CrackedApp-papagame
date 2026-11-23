.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/textview/MovementTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->convert(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/BbsCommentListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$2;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$2;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClickText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$2;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$2;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->showCommentDetail(Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
