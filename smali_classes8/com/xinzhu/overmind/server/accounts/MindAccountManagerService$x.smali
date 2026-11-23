.class abstract Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "x"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# direct methods
.method public constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 3
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    .line 5
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumRequestContinued:I

    .line 6
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumErrors:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz p4, :cond_1

    .line 8
    iput-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 9
    iput-boolean p6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mStripAuthTokenFromResult:Z

    .line 10
    iput-object p3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 11
    iput-object p4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mExpectActivityLaunch:Z

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mCreationTime:J

    .line 14
    iput-object p7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountName:Ljava/lang/String;

    .line 15
    iput-boolean p8, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthDetailsRequired:Z

    .line 16
    iput-boolean p9, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mUpdateLastAuthenticatedTime:Z

    .line 17
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p2

    monitor-enter p2

    .line 18
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 20
    :try_start_1
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    iput-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 22
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->binderDied()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$1100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Lcom/xinzhu/overmind/server/accounts/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/d;->b(Landroid/accounts/AuthenticatorDescription;I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x2

    .line 23
    const-string v3, "MAccountManagerService"

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "there is no authenticator for "

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ", bailing out"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v3, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    return v1

    .line 59
    :cond_1
    new-instance v5, Landroid/content/Intent;

    .line 60
    .line 61
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p1, "android.accounts.AccountAuthenticator"

    .line 65
    .line 66
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    iget-object p1, v0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->c:Landroid/content/ComponentName;

    .line 70
    .line 71
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v4, "performing bindService to "

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v4, v0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->c:Landroid/content/ComponentName;

    .line 91
    .line 92
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v3, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v5, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    const/4 v9, 0x0

    .line 125
    move-object v6, p0

    .line 126
    invoke-virtual/range {v4 .. v9}, Lcom/xinzhu/overmind/server/am/f;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;II)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 131
    .line 132
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    const/4 v5, 0x1

    .line 137
    invoke-virtual {v4, p1, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    return v5

    .line 141
    :catch_0
    nop

    .line 142
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_3

    .line 147
    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v2, "bindService to "

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->c:Landroid/content/ComponentName;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, " failed"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {v3, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_3
    return v1
.end method

.method private close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->cancelTimeout()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->unbind()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v1
.end method

.method private unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x3e8

    .line 13
    .line 14
    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, p0, v1}, Lcom/xinzhu/overmind/server/am/f;->unbindService(Landroid/os/IBinder;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "MAccountManagerService"

    .line 3
    .line 4
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "initiating bind to authenticator type "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bindToAuthenticator(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "bind attempt failed for "

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    const-string v1, "bind failure"

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public binderDied()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->close()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected checkKeyIntent(ILandroid/content/Intent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    and-int/lit16 v0, v0, -0xc4

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 45
    .line 46
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v2, p2, v5, v3, v4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return v5

    .line 61
    :cond_1
    :try_start_1
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 62
    .line 63
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 66
    .line 67
    const/16 v4, 0x10

    .line 68
    .line 69
    invoke-virtual {v2, v3, p1, v4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->hasSignatureCapability(III)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v2, 0x1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 79
    .line 80
    const-string v3, "KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s)."

    .line 81
    .line 82
    const-string v4, "MAccountManagerService"

    .line 83
    .line 84
    const/4 v6, 0x3

    .line 85
    new-array v6, v6, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object p2, v6, v5

    .line 88
    .line 89
    aput-object p1, v6, v2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 92
    .line 93
    const/4 p2, 0x2

    .line 94
    aput-object p1, v6, p2

    .line 95
    .line 96
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    return v5

    .line 107
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    return v2

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->close()V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumErrors:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumErrors:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-string v2, "MAccountManagerService"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v4, " calling onError() on response "

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    const-string p2, "Session.onError: caught RemoteException while responding"

    .line 65
    .line 66
    invoke-static {v2, p2, p1}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    const-string p1, "Session.onError: already closed"

    .line 77
    .line 78
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestContinued()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumRequestContinued:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumRequestContinued:I

    .line 6
    .line 7
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    iput v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    .line 8
    .line 9
    const-string v1, "accountType"

    .line 10
    .line 11
    const-string v3, "authAccount"

    .line 12
    .line 13
    if-eqz p1, :cond_6

    .line 14
    .line 15
    const-string v4, "booleanResult"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v6, 0x0

    .line 37
    :goto_0
    iget-boolean v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mUpdateLastAuthenticatedTime:Z

    .line 38
    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthDetailsRequired:Z

    .line 50
    .line 51
    if-eqz v4, :cond_6

    .line 52
    .line 53
    :cond_3
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 54
    .line 55
    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountName:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v4, v5, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$600(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 68
    .line 69
    new-instance v5, Landroid/accounts/Account;

    .line 70
    .line 71
    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountName:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v7, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$700(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;)Z

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthDetailsRequired:Z

    .line 82
    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 88
    .line 89
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    new-instance v4, Landroid/accounts/Account;

    .line 94
    .line 95
    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountName:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccountType:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 107
    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    iget-wide v4, v2, Lcom/xinzhu/overmind/server/accounts/MindAccount;->d:J

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    const-wide/16 v4, -0x1

    .line 114
    .line 115
    :goto_2
    const-string v2, "lastAuthenticatedTime"

    .line 116
    .line 117
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 118
    .line 119
    .line 120
    :cond_6
    const/4 v2, 0x5

    .line 121
    const-string v4, "intent"

    .line 122
    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Landroid/content/Intent;

    .line 130
    .line 131
    if-eqz v5, :cond_9

    .line 132
    .line 133
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iget v6, v6, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 138
    .line 139
    invoke-virtual {p0, v6, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->checkKeyIntent(ILandroid/content/Intent;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_7

    .line 144
    .line 145
    const-string p1, "invalid intent in bundle returned"

    .line 146
    .line 147
    invoke-virtual {p0, v2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_7
    const-string v6, "target"

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Landroid/app/PendingIntent;

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_8
    const/4 v5, 0x0

    .line 161
    :cond_9
    :goto_3
    const-string v6, "authtoken"

    .line 162
    .line 163
    if-eqz p1, :cond_a

    .line 164
    .line 165
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-nez v7, :cond_a

    .line 174
    .line 175
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-nez v7, :cond_a

    .line 188
    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-nez v7, :cond_a

    .line 194
    .line 195
    new-instance v7, Landroid/accounts/Account;

    .line 196
    .line 197
    invoke-direct {v7, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->this$0:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 201
    .line 202
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 203
    .line 204
    invoke-static {v1, v3, v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    new-instance v7, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 209
    .line 210
    iget-object v8, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAccounts:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 211
    .line 212
    invoke-static {v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    invoke-direct {v7, v8}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v3, v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->access$1000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 220
    .line 221
    .line 222
    :cond_a
    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mExpectActivityLaunch:Z

    .line 223
    .line 224
    if-eqz v1, :cond_b

    .line 225
    .line 226
    if-eqz p1, :cond_b

    .line 227
    .line 228
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_b

    .line 233
    .line 234
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_b
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    :goto_4
    if-eqz v1, :cond_11

    .line 242
    .line 243
    const/4 v3, 0x2

    .line 244
    const-string v4, "MAccountManagerService"

    .line 245
    .line 246
    if-nez p1, :cond_d

    .line 247
    .line 248
    :try_start_0
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_c

    .line 253
    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v0, " calling onError() on response "

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {v4, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    :cond_c
    const-string p1, "null bundle returned"

    .line 286
    .line 287
    invoke-interface {v1, v2, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_d
    iget-boolean v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mStripAuthTokenFromResult:Z

    .line 292
    .line 293
    if-eqz v2, :cond_e

    .line 294
    .line 295
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_e
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_f

    .line 303
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v6, " calling onResult() on response "

    .line 321
    .line 322
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-static {v4, v2}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :cond_f
    const/4 v2, -0x1

    .line 336
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-lez v2, :cond_10

    .line 341
    .line 342
    if-nez v5, :cond_10

    .line 343
    .line 344
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    const-string v2, "errorMessage"

    .line 349
    .line 350
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-interface {v1, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_10
    invoke-interface {v1, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .line 360
    .line 361
    goto :goto_5

    .line 362
    :catch_0
    move-exception p1

    .line 363
    invoke-static {v4, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_11

    .line 368
    .line 369
    const-string v0, "failure while notifying response"

    .line 370
    .line 371
    invoke-static {v4, v0, p1}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .line 373
    .line 374
    :cond_11
    :goto_5
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const/4 p1, 0x1

    .line 12
    const-string p2, "remote exception"

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->onError(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v0, "disconnected"

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {p1, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    const/4 v0, 0x2

    .line 19
    const-string v1, "MAccountManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "Session.onServiceDisconnected: caught RemoteException while responding"

    .line 28
    .line 29
    invoke-static {v1, v0, p1}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public onTimedOut()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string v1, "timeout"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-interface {v0, v2, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const/4 v1, 0x2

    .line 16
    const-string v2, "MAccountManagerService"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v1, "Session.onTimedOut: caught RemoteException while responding"

    .line 25
    .line 26
    invoke-static {v2, v1, v0}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    return-void
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumRequestContinued:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->mCreationTime:J

    sub-long/2addr p1, v1

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
