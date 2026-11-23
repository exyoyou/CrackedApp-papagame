.class Lcom/join/mgps/activity/MYAccountDetialActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYAccountDetialActivity;->checkUnbind(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/MYAccountDetialActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYAccountDetialActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$platformType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/join/mgps/activity/MYAccountDetialActivity;->hasPhoneNumber:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->access$100(Lcom/join/mgps/activity/MYAccountDetialActivity;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->access$100(Lcom/join/mgps/activity/MYAccountDetialActivity;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-class v2, Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "type"

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$c;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
