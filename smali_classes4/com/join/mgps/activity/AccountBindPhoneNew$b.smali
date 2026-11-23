.class Lcom/join/mgps/activity/AccountBindPhoneNew$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountBindPhoneNew;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/AccountBindPhoneNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->b:Lcom/join/mgps/activity/AccountBindPhoneNew;

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
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->b:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 9
    .line 10
    iget-object p3, p3, Lcom/join/mgps/activity/AccountBindPhoneNew;->hintPhone:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->b:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 17
    .line 18
    iget-object p3, p3, Lcom/join/mgps/activity/AccountBindPhoneNew;->hintPhone:Landroid/widget/TextView;

    .line 19
    .line 20
    const/16 p4, 0x8

    .line 21
    .line 22
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    const/16 p3, 0xb

    .line 26
    .line 27
    if-ne p1, p3, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->b:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->nextStep:Landroid/widget/TextView;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->b:Lcom/join/mgps/activity/AccountBindPhoneNew;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->nextStep:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method
