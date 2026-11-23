.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->aftervidew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->access$208(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->access$300(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->access$200(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetailFromNotice(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$4;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->access$200(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->loadDataDetail(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
