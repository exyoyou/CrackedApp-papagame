.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->showMain(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$loadMore:Z


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$list",
            "val$loadMore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;->val$list:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;->val$loadMore:Z

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;->val$list:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_$9;->val$loadMore:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;->access$101(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;Ljava/util/List;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
