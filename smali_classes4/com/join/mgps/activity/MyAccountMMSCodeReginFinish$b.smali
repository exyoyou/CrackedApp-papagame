.class Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;->b:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;

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
            "editable"
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
            "charSequence",
            "i",
            "i1",
            "i2"
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
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;->b:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p2, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->codeSize:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;->b:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;

    .line 10
    .line 11
    iget p2, p1, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->codeSize:I

    .line 12
    .line 13
    const/4 p3, 0x6

    .line 14
    if-ne p2, p3, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->sendCode:Landroid/widget/Button;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->sendCode:Landroid/widget/Button;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
