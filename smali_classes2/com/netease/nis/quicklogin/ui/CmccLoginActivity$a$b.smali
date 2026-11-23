.class Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$b;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$b;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/widget/CheckBox;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$b;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogAuto()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$b;->a:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->d(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
