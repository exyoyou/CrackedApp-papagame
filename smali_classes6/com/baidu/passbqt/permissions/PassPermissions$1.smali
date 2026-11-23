.class Lcom/baidu/passbqt/permissions/PassPermissions$1;
.super Lcom/baidu/passbqt/permissions/PermissionsCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/passbqt/permissions/PermissionsCallback;

.field final synthetic b:Lcom/baidu/passbqt/permissions/PassPermissions;


# direct methods
.method constructor <init>(Lcom/baidu/passbqt/permissions/PassPermissions;Lcom/baidu/passbqt/permissions/PermissionsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/passbqt/permissions/PassPermissions$1;->b:Lcom/baidu/passbqt/permissions/PassPermissions;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/passbqt/permissions/PassPermissions$1;->a:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/baidu/passbqt/permissions/PermissionsCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions$1;->b:Lcom/baidu/passbqt/permissions/PassPermissions;

    invoke-static {v0}, Lcom/baidu/passbqt/permissions/PassPermissions;->a(Lcom/baidu/passbqt/permissions/PassPermissions;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions$1;->a:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    invoke-virtual {v0}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions$1;->b:Lcom/baidu/passbqt/permissions/PassPermissions;

    invoke-static {v0}, Lcom/baidu/passbqt/permissions/PassPermissions;->a(Lcom/baidu/passbqt/permissions/PassPermissions;)V

    .line 4
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions$1;->a:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    invoke-virtual {v0, p1}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a(I)V

    return-void
.end method
