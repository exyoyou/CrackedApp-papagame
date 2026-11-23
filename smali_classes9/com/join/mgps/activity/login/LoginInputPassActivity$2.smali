.class Lcom/join/mgps/activity/login/LoginInputPassActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginInputPassActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

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
    .locals 1
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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->access$000(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    if-ne p3, p4, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 21
    .line 22
    iget p1, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
