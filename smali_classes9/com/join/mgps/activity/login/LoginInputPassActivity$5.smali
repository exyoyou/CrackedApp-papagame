.class Lcom/join/mgps/activity/login/LoginInputPassActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 6
    .line 7
    const/16 p2, 0x90

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    .line 16
    .line 17
    const/16 p2, 0x81

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
