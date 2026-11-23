.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->onBindViewHolder(Lcom/join/mgps/base/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsDisPraise(Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsCommentListBean;->getRuid()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;Lcom/join/mgps/dto/BbsCommentListBean;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method
