.class Lcom/haima/hmcp/widgets/TouchUtil$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/TouchUtil;->startAnimator()V
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$5;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$5;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

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
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$5;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

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
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->setShowProgress(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$5;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorOverLay()Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$5;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$600(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    const-wide/16 v1, 0x7d0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil$5;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$600(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v1, v1, Lcom/haima/hmcp/beans/X86TouchConfig;->leftDownDuration:I

    .line 56
    .line 57
    int-to-long v1, v1

    .line 58
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;->startAnimation(J)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
