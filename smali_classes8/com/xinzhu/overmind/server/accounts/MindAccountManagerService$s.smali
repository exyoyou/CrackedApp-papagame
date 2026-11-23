.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "s"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallingUid:I

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field private final mIncludeManagedNotVisible:Z

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# direct methods
.method public constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x1

    .line 7
    const/4 v7, 0x0

    .line 8
    const/4 v8, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    .line 18
    .line 19
    iput-object v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 23
    .line 24
    move/from16 v0, p6

    .line 25
    .line 26
    iput v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCallingUid:I

    .line 27
    .line 28
    move-object v0, p5

    .line 29
    iput-object v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mFeatures:[Ljava/lang/String;

    .line 30
    .line 31
    move-object/from16 v0, p7

    .line 32
    .line 33
    iput-object v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mPackageName:Ljava/lang/String;

    .line 34
    .line 35
    move/from16 v0, p8

    .line 36
    .line 37
    iput-boolean v0, v9, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mIncludeManagedNotVisible:Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public checkAccount()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->sendResult()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const-string v1, "MAccountManagerService"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    .line 51
    .line 52
    iget v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 53
    .line 54
    aget-object v1, v1, v2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mFeatures:[Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    const/4 v0, 0x1

    .line 63
    const-string v1, "remote exception"

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x5

    .line 10
    const-string v0, "null bundle"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "booleanResult"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    .line 28
    .line 29
    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 30
    .line 31
    aget-object v0, v0, v1

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    iget p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    iput p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->checkAccount()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCallingUid:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mPackageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mIncludeManagedNotVisible:Z

    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsOfType:[Landroid/accounts/Account;

    .line 22
    .line 23
    array-length v1, v1

    .line 24
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mCurrentAccount:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->checkAccount()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public sendResult()V
    .locals 7

    .line 1
    const-string v0, "MAccountManagerService"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    new-array v4, v3, [Landroid/accounts/Account;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ge v5, v3, :cond_0

    .line 20
    .line 21
    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Landroid/accounts/Account;

    .line 28
    .line 29
    aput-object v6, v4, v5

    .line 30
    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, " calling onResult() on response "

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v0, v3}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v5, "accounts"

    .line 77
    .line 78
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception v1

    .line 86
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    const-string v2, "failure while notifying response"

    .line 93
    .line 94
    invoke-static {v0, v2, v1}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
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
    const-string p1, ", getAccountsByTypeAndFeatures, "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;->mFeatures:[Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p2, ","

    .line 23
    .line 24
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method
