.class Lcom/join/mgps/activity/CommentDetailActivity$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->initHeadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$s;->b:Lcom/join/mgps/activity/CommentDetailActivity;

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
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity$s;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$000(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$s;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1300(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity$s;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, p1, v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->access$1400(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
