.class Lcom/join/mgps/activity/login/LoginMainActivity$3$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity$3;->onBind(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/login/LoginMainActivity$3;

.field final synthetic val$linkColor:I


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity$3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$linkColor"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3$1;->this$1:Lcom/join/mgps/activity/login/LoginMainActivity$3;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3$1;->val$linkColor:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3$1;->this$1:Lcom/join/mgps/activity/login/LoginMainActivity$3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->xieyi()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3$1;->val$linkColor:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
