.class Lcom/join/mgps/activity/MyAccountLoginActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/s2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountLoginActivity;->checkCheckbox(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/MyAccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountLoginActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fromIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/MyAccountLoginActivity;->checkBox:Landroid/widget/CheckBox;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->a:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/activity/MyAccountLoginActivity;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->a(I)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x2711

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginbutnClicked()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x3

    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginQQ()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x4

    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginWechat()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v1, 0x5

    .line 59
    if-ne v0, v1, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->loginWeibo()V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    return-void
.end method
