.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$response:Landroid/accounts/IAccountManagerResponse;

.field final synthetic val$toAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

.field final synthetic val$userFrom:I


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    iput-object p9, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$account:Landroid/accounts/Account;

    .line 4
    .line 5
    iput-object p10, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$response:Landroid/accounts/IAccountManagerResponse;

    .line 6
    .line 7
    iput-object p11, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$toAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 8
    .line 9
    iput p12, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$userFrom:I

    .line 10
    .line 11
    invoke-direct/range {p0 .. p8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "booleanResult"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$response:Landroid/accounts/IAccountManagerResponse;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$account:Landroid/accounts/Account;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$toAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 19
    .line 20
    iget v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$userFrom:I

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onResult(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$account:Landroid/accounts/Account;

    .line 4
    .line 5
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ", getAccountCredentialsForClone, "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;->val$account:Landroid/accounts/Account;

    .line 19
    .line 20
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method
