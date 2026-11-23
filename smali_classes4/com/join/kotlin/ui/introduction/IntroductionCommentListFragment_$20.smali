.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->updatePraise(ZLcom/join/mgps/dto/BbsCommentListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;

.field final synthetic val$praise:Z


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;ZLcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$praise",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->val$praise:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->val$praise:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$20;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->access$1201(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;ZLcom/join/mgps/dto/BbsCommentListBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
