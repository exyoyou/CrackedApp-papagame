.class Lcom/join/mgps/activity/login/LoginMainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->clear:Landroid/view/View;

    .line 18
    .line 19
    const/16 p2, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->clear:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$1;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
