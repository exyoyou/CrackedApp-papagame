.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$callback:Landroid/os/RemoteCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$account:Landroid/accounts/Account;

    .line 4
    .line 5
    iput p3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$uid:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$packageName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$callback:Landroid/os/RemoteCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private handleAuthenticatorResponse(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$account:Landroid/accounts/Account;

    .line 4
    .line 5
    const-string v2, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 6
    .line 7
    iget v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$uid:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$3100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$uid:I

    .line 16
    .line 17
    invoke-static {v3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->w(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$3200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$callback:Landroid/os/RemoteCallback;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "booleanResult"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->val$callback:Landroid/os/RemoteCallback;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->handleAuthenticatorResponse(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onRequestContinued()V
    .locals 0

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;->handleAuthenticatorResponse(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
