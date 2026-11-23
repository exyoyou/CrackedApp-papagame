.class Lcom/haima/hmcp/widgets/TouchUtil$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/TouchUtil;->stopAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/TouchUtil;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/TouchUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$6;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$6;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorOverLay()Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$6;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorOverLay()Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->cancelAnimation()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$6;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorOverLay()Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->setShowProgress(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$6;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorOverLay()Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->setProgress(F)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
