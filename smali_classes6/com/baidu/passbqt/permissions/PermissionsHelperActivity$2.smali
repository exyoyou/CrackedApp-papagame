.class Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$2;
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
    iput-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$2;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$2;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->b(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/baidu/passbqt/common/SharedPreferencesUtil;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$2;->a:Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->b:[Ljava/lang/String;

    .line 23
    .line 24
    const/16 v1, 0x1f41

    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Lcom/baidu/passbqt/permissions/b;->a(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;[Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
