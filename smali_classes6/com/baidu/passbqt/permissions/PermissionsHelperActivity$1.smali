.class Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$1;
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
    iput-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$1;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$1;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->a(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, -0x2

    .line 8
    invoke-virtual {p1, v0}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$1;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
