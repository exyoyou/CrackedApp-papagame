.class Lcom/join/mgps/activity/MYAccountDetialActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYAccountDetialActivity;->nameLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/join/mgps/activity/MYAccountDetialActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYAccountDetialActivity;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$editText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->c:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->b:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->b:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->c:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->b:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p1, Lcom/join/mgps/activity/MYAccountDetialActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->c:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->updatedata()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->c:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 56
    .line 57
    const-string v0, "\u6635\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->c:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->access$000(Lcom/join/mgps/activity/MYAccountDetialActivity;)Lcom/join/mgps/dialog/t1;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 69
    .line 70
    .line 71
    return-void
.end method
