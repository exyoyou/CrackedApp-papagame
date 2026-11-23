.class Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;
.super Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$callerPkgSigDigest:[B

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    move-object v2, p9

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$loginOptions:Landroid/os/Bundle;

    move-object v2, p10

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    move-object v2, p11

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    move v2, p12

    iput-boolean v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$notifyOnAuthFailure:Z

    move/from16 v2, p13

    iput-boolean v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$permissionGranted:Z

    move/from16 v2, p14

    iput v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerUid:I

    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$customTokens:Z

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerPkg:Ljava/lang/String;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerPkgSigDigest:[B

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$accounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    invoke-direct/range {p0 .. p8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const-string v0, "authTokenLabelKey"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "intent"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iget v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerUid:I

    .line 19
    .line 20
    invoke-static {p0}, Ll8/b;->b(Ljava/lang/Object;)Ll8/b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Ll8/b;->a:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v6, p1

    .line 27
    check-cast v6, Landroid/accounts/AccountAuthenticatorResponse;

    .line 28
    .line 29
    iget-object v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    invoke-static/range {v2 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->onResult(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const-string v0, "authtoken"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const/4 v0, 0x5

    .line 55
    if-eqz v8, :cond_4

    .line 56
    .line 57
    const-string v2, "authAccount"

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "accountType"

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance v4, Landroid/accounts/Account;

    .line 83
    .line 84
    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$customTokens:Z

    .line 88
    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 94
    .line 95
    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v2, v3, v4, v5, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2600(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    :cond_2
    const-string v2, "android.accounts.expiry"

    .line 101
    .line 102
    const-wide/16 v3, 0x0

    .line 103
    .line 104
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v9

    .line 108
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$customTokens:Z

    .line 109
    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    cmp-long v4, v9, v2

    .line 117
    .line 118
    if-lez v4, :cond_4

    .line 119
    .line 120
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 123
    .line 124
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    .line 125
    .line 126
    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerPkg:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$callerPkgSigDigest:[B

    .line 129
    .line 130
    iget-object v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static/range {v2 .. v10}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2700(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    :goto_0
    const-string p1, "the type and name should not be empty"

    .line 137
    .line 138
    invoke-virtual {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    move-object v6, v1

    .line 147
    check-cast v6, Landroid/content/Intent;

    .line 148
    .line 149
    if-eqz v6, :cond_6

    .line 150
    .line 151
    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$notifyOnAuthFailure:Z

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$customTokens:Z

    .line 156
    .line 157
    if-nez v1, :cond_6

    .line 158
    .line 159
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 164
    .line 165
    invoke-virtual {p0, v1, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->checkKeyIntent(ILandroid/content/Intent;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_5

    .line 170
    .line 171
    const-string p1, "invalid intent in bundle returned"

    .line 172
    .line 173
    invoke-virtual {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 178
    .line 179
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 180
    .line 181
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    .line 182
    .line 183
    const-string v0, "authFailedMessage"

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    const-string v7, "android"

    .line 190
    .line 191
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$accounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-static/range {v2 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$2800(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    :cond_6
    invoke-super {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onResult(Landroid/os/Bundle;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$permissionGranted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$loginOptions:Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$loginOptions:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", getAuthToken, "

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$account:Landroid/accounts/Account;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ", authTokenType "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$authTokenType:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ", loginOptions "

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$loginOptions:Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ", notifyOnAuthFailure "

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;->val$notifyOnAuthFailure:Z

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method
