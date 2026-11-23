.class Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;


# direct methods
.method constructor <init>(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$4;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$4;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "package"

    .line 16
    .line 17
    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$4;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

    .line 25
    .line 26
    const/16 v1, 0x1f40

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
