.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->onClickMore(Landroid/view/View;Lcom/join/mgps/dto/BbsCommentListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;

.field final synthetic val$window:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Landroid/widget/PopupWindow;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$window",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$window:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$window:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsCommentListBean;->getUid()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$5;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/dto/BbsCommentListBean;->getId()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->getReportUrl(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
